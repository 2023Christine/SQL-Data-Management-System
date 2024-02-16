-- Find all books by Bronte Sisters
SELECT Books.Title, Authors.AuthorName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
WHERE Authors.AuthorName LIKE '%Bronte';