# SQL-Data-Management-System

## Library Database SQL Schema

This SQL script creates and populates tables for a fictional library database. The database is designed to store information about authors, genres, availability status, and books. The provided SQL code includes the creation of tables, insertion of sample data, and foreign key relationships.

### Tables:

1. **Authors**: Contains information about the authors, with fields for AuthorID and AuthorName.

2. **Genres**: Stores information about different book genres, including GenreID, GenreName, and a Description field.

3. **AvailabilityStatus**: Manages the availability status of books with fields for StatusID and StatusName.

4. **Books**: Central table containing information about each book, including BookID, Title, AuthorID (foreign key), GenreID (foreign key), AvailabilityStatusID (foreign key), and PublicationYear.

### Sample Data:

- Authors, Genres, and AvailabilityStatus tables are populated with predefined values.
- Books table is filled with sample book entries, featuring works by various authors in different genres, with different availability statuses.

### Usage:

1. **[Table Creation](schema/tables.sql)**: Execute the provided `CREATE TABLE` statements to set up the necessary database structure.

2. **[Data Insertion](schema/population.sql)**: Run the `INSERT INTO` statements to populate the tables with sample data.

3. **Query and Analysis**:

   - Population in tables provided in the [Tables](Tables) folder.

   - A set of SQL queries and solutions will be provided in the [queries](queries) folder.
   
   - **[Queries and Solutions](queries/00_queries.md)**: This file includes example queries along with their solutions, demonstrating how to retrieve information about authors, genres, book availability, and other relevant details.




