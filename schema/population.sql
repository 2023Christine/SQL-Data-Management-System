-- Inserting data into Authors table
INSERT INTO Authors (AuthorID, AuthorName) VALUES
(1, 'Herman Melville'),
(2, 'George Orwell'),
(3, 'Mark Twain'),
(4, 'William Shakespeare'),
(5, 'F. Scott Fitzgerald'),
(6, 'Charles Dickens'),
(7, 'Jane Austen'),
(8, 'Charlotte Bronte'),
(9, 'John Steinbeck');

-- Inserting data into Genres table
INSERT INTO Genres (GenreID, GenreName, Description) VALUES
(1, 'Fiction', 'Works of imagination or narrative that are not based on fact.'),
(2, 'Drama', 'Plays, theatrical performances, or works with intense, conflict-driven plots.'),
(3, 'Classic', 'Works that are considered timeless and of enduring relevance.'),
(4, 'Mystery', 'Works focused on solving a crime or uncovering secrets.'),
(5, 'Science Fiction', 'Speculative fiction based on scientific concepts and futuristic themes.'),
(6, 'Romance', 'Works centered around romantic relationships.'),
(7, 'Fantasy', 'Works featuring magical elements and imaginary worlds.'),
(8, 'Historical Fiction', 'Fiction set in a specific historical period with realistic details.'),
(9, 'Thriller', 'Works designed to keep the reader on the edge of their seat with suspense.'),
(10, 'Non-Fiction', 'Works based on real events, people, and facts.');

-- Inserting data into AvailabilityStatus table
INSERT INTO AvailabilityStatus (StatusID, StatusName) VALUES
(1, 'Available'),
(2, 'On Hold'),
(3, 'Checked Out');

-- Inserting data into Books table with real genres and mixed AvailabilityStatusID
INSERT INTO Books (BookID, Title, AuthorID, GenreID, AvailabilityStatusID, PublicationYear) VALUES
-- Melville's books
(1, 'Moby Dick', 1, 1, 1, 1851),

-- Orwell's books
(2, '1984', 2, 4, 2, 1949),
(3, 'Animal Farm', 2, 4, 3, 1945),

-- Twain's books
(4, 'The Adventures of Tom Sawyer', 3, 3, 1, 1876),
(5, 'Adventures of Huckleberry Finn', 3, 3, 2, 1884),

-- Shakespeare's books
(6, 'Hamlet', 4, 2, 3, 1603),
(7, 'Romeo and Juliet', 4, 2, 1, 1597),
(8, 'Macbeth', 4, 2, 2, 1606),
(9, 'Othello', 4, 2, 3, 1603),

-- Fitzgerald's book
(10, 'The Great Gatsby', 5, 1, 1, 1925),

-- Dickens' books
(11, 'A Tale of Two Cities', 6, 3, 2, 1859),
(12, 'Great Expectations', 6, 3, 1, 1861),
(13, 'Oliver Twist', 6, 3, 3, 1837),

-- Austen's books
(14, 'Pride and Prejudice', 7, 6, 1, 1813),
(15, 'Emma', 7, 6, 2, 1815),

-- C Bronte's books
(16, 'Jane Eyre', 8, 6, 3, 1847),
(17, 'Wuthering Heights', 8, 6, 1, 1847),

-- Steinbeck's books
(18, 'The Grapes of Wrath', 9, 8, 2, 1939),
(19, 'Of Mice and Men', 9, 8, 3, 1937);