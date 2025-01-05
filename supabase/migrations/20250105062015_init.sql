CREATE TABLE folders (
    id SERIAL PRIMARY KEY,
    folder_name VARCHAR(255) NOT NULL,
    parent_folder_id INTEGER REFERENCES folders(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    access_permissions TEXT,
    user_id INTEGER REFERENCES auth.users(id),
    file_id INTEGER REFERENCES files(id)
);

CREATE TABLE files (
    id SERIAL PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    file_format VARCHAR(50) NOT NULL,
    url TEXT NOT NULL,
    folder_id INTEGER REFERENCES folders(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_id INTEGER REFERENCES auth.users(id)
);
