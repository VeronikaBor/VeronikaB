-- Fråga 1: Vilka filmer som firman äger, inklusive data om filmen.

SELECT * FROM movie_collection;

-- Fråga 2: Vilka filmer som finns i en viss genre.

SELECT * FROM genre_movies;

-- Fråga : Vilka filmer som är uthyrda, vem som hyrde dem (kund) och vem som hyrde ut dem (anställd).

SELECT * FROM rented_movies;

-- Fråga 4: Vilka filmer som har gått över tiden, dvs filmer som inte har blivit återlämnade trots att de borde vara det, tillsammans med namnet på kunden som har hyrt den.

SELECT * FROM movies_not_returned_in_time;

-- Fråga 5: En lista över alla anställda och hur många filmer varje anställd har hyrt ut.

SELECT * FROM totalrentedmovies_employees;

-- Fråga 6: En lista med statistik över de mest uthyrda filmerna den senaste månaden. Se fråga 10.

SELECT * FROM most_rented_movies_last_month;

-- Fråga 7: En Stored Procedure som ska köras när en film lämnas ut. Ska alltså sätta filmen till uthyrd, vem som hyrt den osv.

CALL new_rental(now(), 2, 'not ready to return', 21,49,45);

-- Fråga 8: Gör en funktion som tar en film som parameter och returnerar olika värden beroende på om filmen är sent inlämnad eller inte. Dvs, om du matar in film nr 345 ska du få tillbaka TRUE om filmen är uthyrd men borde vara tillbakalämnad, annars FALSE. (1 och 0 funkar också om det är lättare.)

-- False (returned in time)
SELECT r.rental_id, r.rentalDate, r.returnDate, r.customer_id, 
r.movie_id, ReturedToLateOrNotAtAll_TrueOrFalse(rentalDate) AS ReturnedLate
FROM rental r
WHERE r.movie_id = 49 AND returnDate IS NULL
GROUP BY rental_id;

-- True (not returned in time or not at all)

SELECT r.rental_id, r.rentalDate, r.returnDate, r.customer_id, 
r.movie_id, ReturedToLateOrNotAtAll_TrueOrFalse(rentalDate) AS ReturnedLate
FROM rental r
WHERE r.movie_id = 58 AND returnDate IS NULL
GROUP BY rental_id;


-- Fråga 9: En Stored Procedure som ska köras när en film lämnas tillbaka. Den ska använda sig av ovanstående funktion för att göra någon form av markering/utskrift om filmen är återlämnad för sent.

CALL movie_returned(7, 1, 'not returned in time', @ArrivedLate);
SELECT @ArrivedLate;

-- Fråga 10: Du ska underhålla en statistiktabell med hjälp av triggers. När du lämnar ut en fil ska det göras en notering om det i din statistiktabell. Du får inte lägga till informationen från din SP ovan, det ska skötas med triggers.

SELECT * FROM products;