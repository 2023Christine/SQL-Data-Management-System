-- Find number of checked out books by author
SELECT Authors.AuthorName, COUNT(*) AS CheckedOutBooks
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
JOIN AvailabilityStatus ON Books.AvailabilityStatusID = AvailabilityStatus.StatusID
WHERE AvailabilityStatus.StatusName = 'Checked Out'
GROUP BY Authors.AuthorName;