-- 03 Create a new genre called "Allegory"
INSERT INTO Genres (GenreName, Description)
VALUES ('Allegory', 'A form of expression in which elements signify meanings other than their literal sense.');

-- 03 Update the genre of 'Animal Farm' to 'Allegory'
UPDATE Books
SET GenreID = (SELECT GenreID FROM Genres WHERE GenreName = 'Allegory')
WHERE Title = 'Animal Farm';