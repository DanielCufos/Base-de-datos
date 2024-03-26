  SELECT Title, Milliseconds FROM albums, tracks WHERE title LIKE "for those about to rock we salute you" 
  
  SELECT FirstName, LastName, City, Address FROM customers 

SELECT name,Milliseconds FROM tracks 
WHERE Milliseconds > 2900000 AND Composer is NULL

SELECT DISTINCT BillingCity,BillingState  FROM invoices WHERE BillingState IS NOT NULL 

SELECT title FROM albums WHERE title LIKE "%OF%" ORDER BY title ASC 

SELECT g.name, t.name FROM tracks t JOIN genres g  ON g.GenreId = t.GenreId 

SELECT t.name, a.Title FROM albums a JOIN tracks t ON t.AlbumId = a.AlbumId ORDER BY a.Title DESC 

