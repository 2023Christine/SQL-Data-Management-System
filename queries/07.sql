-- 06 Find books published in 1800s
SELECT Title, AuthorName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
WHERE PublicationYear BETWEEN 1800 AND 1899;