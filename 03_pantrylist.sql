-- Pantry List
CREATE TABLE tbl_pantrylist (
	pantry_item_id serial PRIMARY KEY,
	item_id int NOT NULL REFERENCES tbl_items ON DELETE CASCADE,
	expiration date,
	amount int
);

-- Insert Pantry Items
INSERT INTO tbl_pantrylist (item_id, expiration, amount) VALUES
    (1, '2020-01-02', 6),
    (8, '2020-09-13', 2)
;