-- Shopping List Categories
CREATE TABLE tbl_shoppinglist (
  list_id serial PRIMARY KEY,
  list_name text NOT NULL,
  list_created date,
  list_updated date
);

-- Shopping List Items
CREATE TABLE tbl_shoppinglist_items (
  link_id serial PRIMARY KEY,
  list_id int REFERENCES tbl_shoppinglist ON DELETE CASCADE,
  item_id int REFERENCES tbl_items ON DELETE CASCADE,
  item_count int NOT NULL
);

-- Create initial shopping list
INSERT INTO tbl_shoppinglist (list_name, list_created, list_updated) VALUES
    ('My Shopping List', NOW(), NOW())
;