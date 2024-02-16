-- Add Emily Bronte as author of Wuthering Heights
INSERT INTO Authors (AuthorID, AuthorName)
VALUES (10, 'Emily Bronte');

UPDATE Books
SET AuthorID = (
    SELECT AuthorID
    FROM Authors
    WHERE AuthorName = 'Emily Bronte'
)
WHERE Title = 'Wuthering Heights';