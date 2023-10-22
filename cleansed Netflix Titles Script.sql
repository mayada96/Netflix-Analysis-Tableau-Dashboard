-- cleansed Netflix Dataset -- 

UPDATE [Netflix titles]
SET duration = rating		-- rearanging mixed values to the correct column 
WHERE rating like '%min%'; 

UPDATE [Netflix titles]
SET rating = NULL			-- empty the un correct values 
WHERE rating LIKE '%min%'; 

UPDATE [Netflix titles]
SET director = 'UNKOWN'		-- giving meaningful words to the null values for visulization purposes 
WHERE director IS NULL; 

UPDaTE [Netflix titles]
SET country = 'UNKOWN'	    -- giving meaningful word to the null values for visulization purposes 
WHERE country IS NULL;

SELECT  *
FROM [netflix titles]
ORDER BY show_id ASC;