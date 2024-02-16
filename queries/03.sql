-- Create a new genre called "Allegory"
INSERT INTO Genres (GenreID, GenreName, Description)
VALUES (11,'Allegory', 'A form of expression in which elements signify meanings other than their literal sense.');

-- Update the genre of 'Animal Farm' to 'Allegory'
UPDATE Books
SET GenreID = (SELECT GenreID FROM Genres WHERE GenreName = 'Allegory')
WHERE Title = 'Animal Farm';