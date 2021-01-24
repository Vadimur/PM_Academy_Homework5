--sp_insert_user
CALL sp_insert_user('Vadym', 'Mulish');
CALL sp_insert_user('Toto', 'Wolff');


--sp_insert_note
CALL sp_insert_note('54b9655b-4cee-4f0f-ae38-3406dc5c0bc0', 'Note #1 header',
    'This is my first note here', 1);
	
CALL sp_insert_note('f95c606e-5e7b-11eb-ae93-0242ac130002', 'Note #2 header',
    'This is my second note here', 1);
	
CALL sp_insert_note('1829fb46-5e7c-11eb-ae93-0242ac130002', 'Toto''s Note #1 header',
                    'Hello, this is my first note here', 2);
	
--sp_select_note
SELECT * FROM sp_select_note('54b9655b-4cee-4f0f-ae38-3406dc5c0bc0');
SELECT * FROM sp_select_note('f95c606e-5e7b-11eb-ae93-0242ac130002');

--sp_update_note_mark_deleted
CALL sp_update_note_mark_deleted('54b9655b-4cee-4f0f-ae38-3406dc5c0bc0');
CALL sp_update_note_mark_deleted('1829fb46-5e7c-11eb-ae93-0242ac130002');

--sp_select_users_notes_count
SELECT * FROM sp_select_users_notes_count();

--sp_select_user_notes
SELECT * FROM sp_select_user_notes(1);
SELECT * FROM sp_select_user_notes(2);
