CREATE PROCEDURE sp_insert_note(note_id uuid, note_header varchar(128), note_body varchar(1024), owner_id int)
LANGUAGE SQL
AS $$
   INSERT INTO notes(id, header, body, is_deleted, user_id) VALUES (note_id, note_header, note_body, false, owner_id);
$$;