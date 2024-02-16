-- Find newest book
SELECT *
FROM Books
ORDER BY PublicationYear ASC
LIMIT 1;

-- Find oldest book
SELECT *
FROM Books
ORDER BY PublicationYear DESC
LIMIT 1;