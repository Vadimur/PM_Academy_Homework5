CREATE TYPE note_information AS (note_id uuid, note_header varchar(128), note_body varchar(1024),
                                is_note_deleted boolean, note_modified_at timestamp with time zone,
                                owner_id int, owner_first_name varchar(128), owner_last_name varchar(128));


CREATE FUNCTION sp_select_note(note_id uuid) RETURNS note_information
LANGUAGE SQL
AS $$
    SELECT $1, n.header, n.body, n.is_deleted, n.modified_at, n.user_id, u.first_name, u.last_name
        FROM notes n
        JOIN users u on u.id = n.user_id
	WHERE n.id = note_id;
$$;
