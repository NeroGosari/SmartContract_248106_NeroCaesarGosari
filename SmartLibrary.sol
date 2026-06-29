// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SmartLibrary {

    // =====================================
    // STRUCT
    // =====================================

    struct Book {
        uint id;
        string title;
        bool borrowed;
        address borrower;
    }

    // =====================================
    // STATE VARIABLES
    // =====================================

    uint public totalBooks;

    mapping(uint => Book) public books;

    // =====================================
    // EVENTS
    // =====================================

    event BookAdded(
        uint id,
        string title
    );

    event BookBorrowed(
        uint id,
        address borrower
    );

    event BookReturned(
        uint id,
        address borrower
    );

    // =====================================
    // CONSTRUCTOR
    // =====================================

    constructor() {

        addBook("Blockchain Fundamentals");
        addBook("Solidity Programming");
        addBook("Ethereum Smart Contract");

    }

    // =====================================
    // ADD BOOK
    // =====================================

    function addBook(
        string memory _title
    ) public {

        totalBooks++;

        books[totalBooks] = Book({
            id: totalBooks,
            title: _title,
            borrowed: false,
            borrower: address(0)
        });

        emit BookAdded(
            totalBooks,
            _title
        );
    }

    // =====================================
    // BORROW BOOK
    // =====================================

    function borrowBook(
        uint _bookId
    ) public {

        require(
            _bookId > 0 &&
            _bookId <= totalBooks,
            "Book not found"
        );

        require(
            books[_bookId].borrowed == false,
            "Book is already borrowed"
        );

        books[_bookId].borrowed = true;

        books[_bookId].borrower = msg.sender;

        emit BookBorrowed(
            _bookId,
            msg.sender
        );

    }

    // =====================================
    // RETURN BOOK
    // =====================================

    function returnBook(
        uint _bookId
    ) public {

        require(
            _bookId > 0 &&
            _bookId <= totalBooks,
            "Book not found"
        );

        require(
            books[_bookId].borrowed == true,
            "Book is not borrowed"
        );

        require(
            books[_bookId].borrower == msg.sender,
            "Only borrower can return this book"
        );

        books[_bookId].borrowed = false;

        books[_bookId].borrower = address(0);

        emit BookReturned(
            _bookId,
            msg.sender
        );

    }

    // =====================================
    // VIEW BOOK INFORMATION
    // =====================================

    function getBook(
        uint _bookId
    )
        public
        view
        returns(

            uint,
            string memory,
            bool,
            address

        )
    {

        Book memory b = books[_bookId];

        return (

            b.id,
            b.title,
            b.borrowed,
            b.borrower

        );

    }

    // =====================================
    // CHECK BOOK STATUS
    // =====================================

    function bookStatus(
        uint _bookId
    )
        public
        view
        returns(string memory)
    {

        if(books[_bookId].borrowed){

            return "Borrowed";

        }

        return "Available";

    }

}