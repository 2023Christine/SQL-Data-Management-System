-- Create Authors Table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

-- Create Genres Table
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50) NOT NULL,
    Description VARCHAR(255)
);

-- Create AvailabilityStatus Table
CREATE TABLE AvailabilityStatus (
    StatusID INT PRIMARY KEY,
    StatusName VARCHAR(50) NOT NULL
);

-- Create Books Table without ISBN and Quantity
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    GenreID INT,
    AvailabilityStatusID INT,
    PublicationYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (AvailabilityStatusID) REFERENCES AvailabilityStatus(StatusID)
);


