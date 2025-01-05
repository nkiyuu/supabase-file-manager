CREATE TABLE folders (
    id SERIAL PRIMARY KEY,
    folder_name VARCHAR(255) NOT NULL,
    parent_folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    access_permissions TEXT,
    creator_id UUID REFERENCES auth.users(id) ON DELETE SET NULL
);

CREATE TABLE files (
    id SERIAL PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    file_format VARCHAR(50) NOT NULL,
    url TEXT NOT NULL,
    folder_id INTEGER REFERENCES folders(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_id UUID REFERENCES auth.users(id)
);
