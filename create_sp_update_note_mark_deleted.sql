CREATE PROCEDURE sp_update_note_mark_deleted(note_id uuid)
LANGUAGE SQL
AS $$
    UPDATE notes
    SET is_deleted = true, modified_at = current_timestamp
    WHERE id = note_id;
$$;
