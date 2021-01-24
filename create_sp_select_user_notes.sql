CREATE FUNCTION sp_select_user_notes(owner_id int) RETURNS SETOF notes
LANGUAGE SQL
AS $$
    SELECT * FROM notes WHERE is_deleted = false AND user_id = owner_id;
$$;
