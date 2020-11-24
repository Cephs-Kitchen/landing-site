-- Unit Types
CREATE TABLE tbl_unit_types (
  unit_type_id serial PRIMARY KEY,
  unit_type_name text NOT NULL
);

-- Units and their conversion values
CREATE TABLE tbl_units (
  unit_id serial PRIMARY KEY,
  unit_name text NOT NULL,
  unit_type_id int REFERENCES tbl_unit_types ON DELETE CASCADE,
  unit_base_equivalent double precision NOT NULL -- this is in Liters, Grams, Meters
);

-- Unit Type entries
INSERT INTO tbl_unit_types (unit_type_name) VALUES ('volume'),('volume_dry'),('weight'),('length'),('area');
-- volume       = 1
-- volume_dry   = 2
-- weight       = 3
-- length       = 4
-- area         = 5

-- Volume Units (base_eqv in Liters)
INSERT INTO tbl_units
  (unit_name, unit_type_id, unit_base_equivalent)
VALUES
  ('teaspoon', 1, 0.00492892159375),
  ('tablespoon', 1, 0.01478676478125),
  ('fluid ounce', 1, 0.0295735295625),
  ('cup', 1, 0.2365882365),
  ('pint', 1, 0.473176473),
  ('quart', 1, 0.946352946),
  ('gallon', 1, 3.785411784),
  ('cubic inch', 1, 0.016387064),
  ('cubic foot', 1, 28.316846592),
  ('cubic yard', 1, 764.554857984),
  ('liter', 1, 1),
  ('deciliter', 1, 0.1),
  ('centiliter', 1, 0.01),
  ('milliliter', 1, 0.001)
;

-- Weight Units (base_eqv in Grams)
INSERT INTO tbl_units
  (unit_name, unit_type_id, unit_base_equivalent)
VALUES
  ('dram', 3, 1.7718451953125),
  ('ounce', 3, 28.349523125),
  ('pound', 3, 453.59237),
  ('ton', 3, 907184.74),
  ('long ton', 3, 1016046.9088),
  ('troy ounce', 3, 31.1034768),
  ('kilogram', 3, 1000),
  ('hectogram', 3, 100),
  ('decagram', 3, 10),
  ('gram', 3, 1),
  ('decigram', 3, 0.1),
  ('centigram', 3, 0.01),
  ('milligram', 3, 0.001)
;

-- Length Units (base_eqv in Meters)
INSERT INTO tbl_units
  (unit_name, unit_type_id, unit_base_equivalent)
VALUES
  ('inch', 4, 0.0254),
  ('foot', 4, 0.3048),
  ('yard', 4, 0.9144),
  ('mile', 4, 1609.344),
  ('furlong', 4, 201.168),
  ('league', 4, 4828),
  ('fathom', 4, 1.8288),
  ('nautical mile', 4, 1852),
  ('kilometer', 4, 1000),
  ('hectometer', 4, 100),
  ('decameter', 4, 10),
  ('meter', 4, 1),
  ('decimeter', 4, 0.1),
  ('centimeter', 4, 0.01),
  ('millimeter', 4, 0.001)
;