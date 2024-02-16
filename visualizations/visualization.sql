-- Genre by number of books
SELECT g.GenreName, COUNT(b.BookID) AS NumberOfBooks
FROM Genres g
INNER JOIN Books b ON g.GenreID = b.GenreID
GROUP BY g.GenreName
HAVING COUNT(b.BookID) > 0;

-- Book availability
SELECT s.StatusName, COUNT(b.BookID) AS NumberOfBooks
FROM AvailabilityStatus s
LEFT JOIN Books b ON s.StatusID = b.AvailabilityStatusID
GROUP BY s.StatusName;