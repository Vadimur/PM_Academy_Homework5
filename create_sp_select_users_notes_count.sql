CREATE FUNCTION sp_select_users_notes_count() RETURNS TABLE(user_id int, user_first_name varchar(128),
                                                            user_second_name varchar(128), notes_number bigint)
LANGUAGE SQL
AS $$
    SELECT u.*, COUNT(*) FILTER (WHERE is_deleted = false)
    FROM users u
    LEFT JOIN notes n on u.id = n.user_id
    GROUP BY u.id;
$$;
