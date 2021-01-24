CREATE TABLE notes(
   id uuid PRIMARY KEY,
   header varchar(128) NOT NULL,
   body varchar(1024) NOT NULL,
   is_deleted boolean NOT NULL,
   user_id int NOT NULL references users(id),
   modified_at timestamp with time zone NOT NULL default current_timestamp
);

CREATE INDEX notes_modified_at_index ON notes (modified_at);