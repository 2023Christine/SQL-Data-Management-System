# Library Database SQL Queries

This document contains a set of SQL queries along with explanations and solutions for the fictional library database. Feel free to use these queries as examples for retrieving information about authors, genres, book availability, and other relevant details.

## 01. Retrieve all books with their authors and genre

[SQL File](01.sql)

| Title                           | Author Name           | Genre Name          |
|---------------------------------|-----------------------|---------------------|
| Moby Dick                       | Herman Melville       | Fiction             |
| 1984                            | George Orwell         | Mystery             |
| Animal Farm                     | George Orwell         | Mystery             |
| The Adventures of Tom Sawyer     | Mark Twain            | Classic             |
| Adventures of Huckleberry Finn  | Mark Twain            | Classic             |
| Hamlet                          | William Shakespeare   | Drama               |
| Romeo and Juliet                | William Shakespeare   | Drama               |
| Macbeth                         | William Shakespeare   | Drama               |
| Othello                         | William Shakespeare   | Drama               |
| The Great Gatsby                | F. Scott Fitzgerald   | Fiction             |
| A Tale of Two Cities            | Charles Dickens       | Classic             |
| Great Expectations              | Charles Dickens       | Classic             |
| Oliver Twist                    | Charles Dickens       | Classic             |
| Pride and Prejudice             | Jane Austen           | Romance             |
| Emma                            | Jane Austen           | Romance             |
| Jane Eyre                       | Charlotte Bronte      | Romance             |
| Wuthering Heights               | Charlotte Bronte      | Romance             |
| The Grapes of Wrath             | John Steinbeck        | Historical Fiction |
| Of Mice and Men                 | John Steinbeck        | Historical Fiction |


## 02. Update 1984

[SQL File](02.sql) 

## 03. Add **Alegory** genre and update animal farm

[SQL File](03.sql) 

## 04. Add Emily Bronte as author of Wuthuring Heights

[SQL File](04.sql)

## 05. List all **available** books

[SQL File](05.sql)

| Title                        | Author Name           | Genre Name  |
|------------------------------|-----------------------|-------------|
| Moby Dick                    | Herman Melville       | Fiction     |
| The Adventures of Tom Sawyer | Mark Twain            | Classic     |
| Romeo and Juliet             | William Shakespeare   | Drama       |
| The Great Gatsby             | F. Scott Fitzgerald   | Fiction     |
| Great Expectations           | Charles Dickens       | Classic     |
| Pride and Prejudice          | Jane Austen           | Romance     |
| Wuthering Heights            | Charlotte Bronte      | Romance     |

## 06. Find oldest and newest books by publication year

[SQL File](06.sql)

**Newest:** Romeo and Juliet
**Oldest:** 1984

## 07. Find all books published in the 1800s

[SQL File](07.sql)

| Title                           | Author Name           |
|---------------------------------|-----------------------|
| Moby Dick                       | Herman Melville       |
| The Adventures of Tom Sawyer     | Mark Twain            |
| Adventures of Huckleberry Finn  | Mark Twain            |
| A Tale of Two Cities            | Charles Dickens       |
| Great Expectations              | Charles Dickens       |
| Oliver Twist                    | Charles Dickens       |
| Pride and Prejudice             | Jane Austen           |
| Emma                            | Jane Austen           |
| Jane Eyre                       | Charlotte Bronte      |
| Wuthering Heights               | Charlotte Bronte      |

## 08. Find number of checked out books per author

[SQL File](08.sql)

| Author Name         | Checked Out Books |
|---------------------|-------------------|
| George Orwell       | 1                 |
| William Shakespeare | 2                 |
| Charles Dickens     | 1                 |
| Charlotte Bronte    | 1                 |
| John Steinbeck      | 1                 |

## 09. Insert Wuthering Heights

[SQL File](09.sql)

## 10. Find all books by Bronte Sisters

[SQL File](10.sql)

| Title               | Author Name         |
|---------------------|---------------------|
| Jane Eyre           | Charlotte Bronte    |
| Wuthering Heights   | Emily Bronte        |

## 11. Delete Oliver Twist

[SQL File](11.sql)

## 12. Find book with word "mice"

[SQL File](12.sql)

| BookID | Title               | AuthorID | GenreID | AvailabilityStatusID | PublicationYear |
|--------|---------------------|----------|---------|------------------------|------------------|
| 19     | Of Mice and Men     | 9        | 8       | 3                      | 1937             |




