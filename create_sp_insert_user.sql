CREATE PROCEDURE sp_insert_user(first_name varchar(128), last_name varchar(128))
LANGUAGE SQL
AS $$
   INSERT INTO users(first_name, last_name) VALUES ($1, $2);
$$;