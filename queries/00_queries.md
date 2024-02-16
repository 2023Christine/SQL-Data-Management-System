# Library Database SQL Queries

This document contains a set of SQL queries along with explanations and solutions for the fictional library database. Feel free to use these queries as examples for retrieving information about authors, genres, book availability, and other relevant details.

## 01. Retrieve all books with their authors and genre

### Context

This query is useful for creating a comprehensive list of all books in the library, including details about their authors and genres. Such information is often requested for cataloging, creating reading lists, or understanding the diversity of the library's collection.

### Approach

This SELECT statement retrieves a comprehensive list of all books along with their respective authors and genres. By joining the Books table with the Authors and Genres tables based on common identifiers, the query consolidates information about book titles, author names, and genre names. 

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

### Context

This query represents a common scenario where there is a need to update information about a specific book. It could be due to corrections, changes in publication details, or other updates to the library's records.

### Approach

This UPDATE statement modifies the genre of the book "1984" in the Books table. The SET clause assigns the genre identifier for "Science Fiction" (assuming the genre with GenreID 5 is "Science Fiction"). The WHERE clause ensures the update is applied only to the record with the title "1984," reflecting the accurate categorization of the book in the library database.

[SQL File](02.sql) 

## 03. Add **Alegory** genre and update animal farm

### Context

Libraries may need to adapt their genre classifications to reflect new literary categories. In this case, the addition of the "Allegory" genre is justified, and the update of "Animal Farm" to this new genre aligns with contemporary classification standards.

### Approach

This combined query first uses the INSERT INTO statement to introduce a new genre, "Allegory," to the Genres table. Subsequently, it employs the UPDATE statement to modify the genre of "Animal Farm" to "Allegory" in the Books table. 

[SQL File](03.sql) 

## 04. Add Emily Bronte as author of Wuthuring Heights

### Context

Library databases are subject to changes, such as the inclusion of new authors or corrections to existing author information. This query reflects the addition of Emily Bronte as the author of "Wuthering Heights."

### Approach

This combined query adds Emily Bronte as the author of "Wuthering Heights" to the library database. The INSERT INTO statement introduces a new record for Emily Bronte in the Authors table, providing a unique identifier (AuthorID) and her name (AuthorName).

Subsequently, the UPDATE statement modifies the AuthorID of the book "Wuthering Heights" in the Books table. A subquery retrieves the AuthorID for Emily Bronte from the Authors table, ensuring accurate authorship for the specified book.

[SQL File](04.sql)

## 05. List all **available** books

### Context

Providing a list of available books is essential for library users to identify materials they can borrow. This query filters out books that are currently not checked out.

### Approach

This SELECT statement retrieves information about available books by joining the Books table with the Authors, Genres, and AvailabilityStatus tables. The condition in the WHERE clause filters the results to include only books with the status "Available."

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

### Context

Understanding the age distribution of the library's collection is crucial for managing and preserving literary heritage. This query identifies the oldest and newest books based on their publication years.

### Approach

These two queries use the SELECT statement to identify the newest and oldest books in the library collection. For the newest book, the ORDER BY clause sorts the results in ascending order based on the PublicationYear, and LIMIT 1 ensures only the top result is returned. Conversely, for the oldest book, the ORDER BY clause sorts the results in descending order, and LIMIT 1 is used again to obtain the book with the earliest publication year.

[SQL File](06.sql)

**Newest:** Romeo and Juliet
**Oldest:** 1984

## 07. Find all books published in the 1800s

### Context

Historical research or interest in literature from a specific era may prompt the need for a list of books published in a particular time period.

### Approach

This SELECT statement retrieves books published in the 1800s by joining the Books table with the Authors table based on the common AuthorID. The WHERE clause filters the results to include only books with publication years falling within the specified range (1800 to 1899).

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

### Context

Library administrators may be interested in tracking the popularity of authors by determining the number of their books currently checked out.

### Approach

This SELECT statement calculates the number of checked-out books for each author by joining the Books, Authors, and AvailabilityStatus tables. The WHERE clause filters the results to include only books with the status "Checked Out." The COUNT(*) function is used in conjunction with the GROUP BY clause to aggregate the count of checked-out books for each author. 

[SQL File](08.sql)

| Author Name         | Checked Out Books |
|---------------------|-------------------|
| George Orwell       | 1                 |
| William Shakespeare | 2                 |
| Charles Dickens     | 1                 |
| Charlotte Bronte    | 1                 |
| John Steinbeck      | 1                 |


## 09. Find all books by Bronte Sisters

### Context

This query retrieves books authored by the Bronte Sisters, catering to users interested in exploring works by this specific group of authors.

### Approach


[SQL File](09.sql)

| Title               | Author Name         |
|---------------------|---------------------|
| Jane Eyre           | Charlotte Bronte    |
| Wuthering Heights   | Emily Bronte        |

## 10. Delete Oliver Twist

### Context 

Books may be removed from the library collection for various reasons, such as being damaged beyond repair or outdated. This query represents the deletion of "Oliver Twist."

### Approach

This straightforward DELETE statement removes the book "Oliver Twist" from the Books table. The WHERE clause ensures the deletion specifically targets the record with the title "Oliver Twist," ensuring accurate removal from the library database.

[SQL File](10.sql)

## 11. Find book with word "mice"

### Context

Users searching for books based on specific keywords benefit from queries that provide relevant results. This query identifies a book containing the word "mice."

### Approach

This query employs the SELECT statement with the LIKE operator to retrieve books from the Books table containing the keyword "mice" in their titles. The % symbols are used as wildcards to match any characters before or after "mice," providing a flexible search for relevant titles.

[SQL File](11.sql)

| BookID | Title               | AuthorID | GenreID | AvailabilityStatusID | PublicationYear |
|--------|---------------------|----------|---------|------------------------|------------------|
| 19     | Of Mice and Men     | 9        | 8       | 3                      | 1937             |

## 12. Make a pie chart of books by genre

### Context

Visual representation of data, such as a pie chart, can help library administrators and users quickly grasp the distribution of books across different genres.

### Approach

This query involves joining the Genres and Books tables using the appropriate foreign key (GenreID). The COUNT function is utilized to calculate the number of books within each genre. The GROUP BY clause ensures the grouping of results by genre, and the HAVING clause filters out genres with zero books. The final result is a list of genres along with the corresponding count of books in each genre.

[SQL File](12.sql)

[Pie Chart](12pie.png)


