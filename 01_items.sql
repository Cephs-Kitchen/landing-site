-- Item Categories
CREATE TABLE tbl_item_categories (
  category_id serial PRIMARY KEY,
  category_name text NOT NULL
);

-- Items
CREATE TABLE tbl_items (
  item_id serial PRIMARY KEY,
  item_name text NOT NULL,
  category_id int REFERENCES tbl_item_categories ON DELETE CASCADE
);


-- INSERT categories
INSERT INTO tbl_item_categories (category_name) VALUES
    ('Produce'),
    ('Meat'),
    ('Snack Foods'),
    ('Drinks'),
    ('Alcoholic Drinks'),
    ('Candy'),
    ('Paper Products'),
    ('Spices/Seasonings'),
    ('Baking Goods')
;

--Insert items
INSERT INTO tbl_items (item_name, category_id) VALUES
    ('Oranges', 1),
    ('Bananas', 1),
    ('Strawberries', 1),
    ('Green Beans', 1),
    ('Broccoli', 1),
    ('Potatoes', 1),
    ('Beef', 2),
    ('Ground Beef', 2),
    ('Chicken', 2),
    ('BBQ Chips', 3),
    ('Cheetos', 3),
    ('Oreos', 3),
    ('Granola Bars', 3),
    ('CocaCola', 4),
    ('Sparkling ICE', 4),
    ('Pepsi', 4),
    ('Mt Dew', 4),
    ('Whiskey', 5),
    ('Mikes Hard Lemonade', 5),
    ('Hard Cider', 5),
    ('Skittles', 6),
    ('Gummy Bears', 6),
    ('Hersheys Kisses', 6),
    ('Toilet Paper', 7),
    ('Paper Towels', 7),
    ('Kleenex', 7),
    ('Salt', 8),
    ('Pepper', 8),
    ('Cinnamon', 8),
    ('Flour', 9),
    ('Sugar', 9)
;