-- 05 Find newest book
SELECT *
FROM Books
ORDER BY PublicationYear ASC
LIMIT 1;

-- 05 Find oldest book
SELECT *
FROM Books
ORDER BY PublicationYear DESC
LIMIT 1;