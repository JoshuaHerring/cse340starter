-- Query 1 INSERT ironman to client

INSERT INTO public.client (client_firstname, client_lastname, client_email, client_password)
Values('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');


-- Query 2 UPDATE iroman client type to Admin
UPDATE public.client SET client_type = 'Admin' WHERE client_id = 1;

-- Query 3 DELETE ironman from the database

DELETE FROM public.client WHERE client_id = 1;

-- Query 4 UPDATE the humer to say huge interiors

UPDATE public.inventory

SET 
   inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE 
   inv_id = 10;

-- Query 5 SELECT and INNER JOIN to retrieve make, model, and class from multiple tables

SELECT inv_make, inv_model, public.classification.classification_name FROM public.inventory JOIN public.classification ON
public.classification.classification_id = public.inventory.classification_id
WHERE public.inventory.classification_id = 2;

-- Query 6  UPDATE file path in image and thumbnail from /images to  /images/vehicles/


UPDATE public.inventory
SET 
    inv_image = Replace(inv_image, '/images','/images/vehicles'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images', '/images/vehicles');