ALTER TABLE users
    ALTER COLUMN password TYPE VARCHAR (255) USING (password :: VARCHAR (255));