--01 Retrieve all books with author and genre
SELECT Books.Title, Authors.AuthorName, Genres.GenreName
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID
JOIN Genres ON Books.GenreID = Genres.GenreID;