-- Retrieve all available books
SELECT Title, AuthorName, GenreName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
JOIN Genres ON Books.GenreID = Genres.GenreID
JOIN AvailabilityStatus ON Books.AvailabilityStatusID = AvailabilityStatus.StatusID
WHERE AvailabilityStatus.StatusName = 'Available';
