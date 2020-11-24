-- Recipe List
CREATE TABLE tbl_recipes (
  recipe_id serial PRIMARY KEY,
  recipe_name text NOT NULL,
  food_group_id INT,
  ingredient_list json
);

-- Food Group List
CREATE TABLE tbl_food_group (
    food_group_id serial PRIMARY KEY,
    food_group_name text
);

-- Food Group Entries
INSERT INTO tbl_food_group (food_group_name) VALUES ('Fruits'), ('Vegetables'), ('Grains'), ('Proteins'), ('Dairy');
-- Fruits = 1
-- Vegetables = 2
-- Grains = 3
-- Proteins = 4
-- Dairy = 5

-- Quantity List
CREATE TABLE tbl_quantity (
    quantity_id serial PRIMARY KEY,
    recipe_id INT,
    ingredient_id INT,
    ingredient_measurement_id INT,
    ingredient_quantity FLOAT
);

-- Recipe Entries
INSERT INTO tbl_recipes
  (recipe_name, food_group_id, ingredient_list)
VALUES
  ('Chicken Vesuvio', 4, '{"Olive Oil":[".5","cup"],"cloves garlic":["5",""],"large russet potatoes":["2",""],"chicken":["1",""],"white wine":[".75","cup"],"chicken stock":[".75","cup"],"chopped parsley":["3","tablespoon"],"dried oregano":["1","tablespoon"],"salt and pepper":["",""],"frozen peas":["1","cup"]}'),
  ('Chicken Paprikash', 4, '{"chicken - drimsticks and thighs":["640","gram"],"salt":[".5","teaspoon"],"pepper":[".25","teaspoon"],"butter":["1","tablespoon"],"onion sliced thin":["1",""],"paprika":["25","gram"],"chicken stock":["1","cup"],"sour cream":[".5","cup"],"flour":["1","tablespoon"]}'),
  ('Baked Chicken', 4, '{"bone-in chicken breast halves":["6",""],"coarse salt":[".5","teaspoon"],"Mrs. Dash seasoning":[".5","teaspoon"],"freshly ground black pepper":[".25","teaspoon"]}'),
  ('Portabello Beef Stew', 4, '{"beef stew meat":["1","pound"],"flour":["2","tablespoon"],"onion sliced thin":["1",""],"dried thyme":["1","teaspoon"],"red wine":[".5","cup"],"beef broth":["15","ounce"],"carrots sliced":["2",""],"baby portabello mushrooms":["10","ounce"]}'),
  ('Beef Goulash', 4, '{"unsalted butter":[".25","cup"],"olive oil":[".25","cup"],"beef chuck":["5","pound"],"salt and pepper":["",""],"yellow onion chopped":["5","pound"],"hungarian paprika":[".25","cup"],"homemade beef stock":["3","cup"],"sour cream":["",""],"broad egg noodles cooked":["2","pound"],"chopped chives":["",""]}'),
  ('Beef and Noodles', 4, '{"yellow onion thinly sliced":["0.5",""],"knob fresh ginger minced":["",""],"stick of lemon grass minced":["0.5",""],"zest from lime":["1",""],"Olive Oil":["2","tablespoon"],"beef flank thinly sliced":[".5","pound"],"beef stock":["3","cup"],"edamame":["2","cup"]}'),
  ('Pork Quesadilla', 4, '{"roasted vegetables coarsely chopped":["1","cup"],"chopped pickled jalapenos":["1","tablespoon"],"large flour tortillas":["4",""],"pork chops":["2",""],"monterey jack cheese":["3.5","ounce"]}'),
  ('Barbecued Pork', 4, '{"pork loin":["1.5","pound"],"hoisin sauce":[".5","cup"],"soy sauce":["2","tablespoon"],"ketchup":["1.5","tablespoon"],"minced garlic":["1","tablespoon"],"water":["3","tablespoon"]}'),
  ('Spicy Dr. Pepper Shredded Pork', 4, '{"large onion":["1",""],"pork shoulder":["5-7","pound"],"salt and pepper":["",""],"chipotle peppers in adobo sauce":["11","ounce"],"dr. pepper":["2",""],"brown sugar":["2","tablespoon"]}'),
  ('Lettuce Wraps', 2, '{"toasted sesame oil":["1","tablespoon"],"ground turkey":["1","pound"],"frozen stirfy vegetables":["16","ounce"],"broccoli slaw":["1",""],"roasted unsalted peanuts":["1","cup"],"tsang bangkok padang peanut sauce":["6","ounce"],"head of lettuce":["0.5",""]}'),
  ('Iceberg Lettuce Slaw', 2, '{"iceberg lettuce":["1",""],"sour cream":[".5","cup"],"cilantro chopped":[".5","cup"],"lime":["1",""],"salt and pepper":["",""]}'),
  ('Tender Lettuce Salad', 2, '{"fennel bulb":["1",""],"white-wine vinegar":["2","tablespoon"],"extra-virgin olive oil":["3","tablespoon"],"dijon mustard":[".5","teaspoon"],"salt and pepper":["",""],"head of boston lettuce":["2",""],"parsley leaves":["2","cup"]}'),
  ('Carrot Bread', 3, '{"bread flour":["3","cup"],"salt":["1.25","teaspoon"],"active dry yeast":[".25","teaspoon"],"carrot juice":["1.5","cup"],"coarsely chopped walnuts":[".75","cup"],"currants":[".75","cup"],"cumin seeds":["1","tablespoon"]}'),
  ('Carrot-Pineapple Smoothie', 1, '{"fresh chopped pineapple":[".75","cup"],"ice ":[".5","cup"],"fresh orange juice":["",""],"chopped carrot":[".25","cup"],"banana":["0.5",""]}'),
  ('Carrot-Mango Lassi', 1, '{"carrots ":["2",""],"mango peeled and cubed":["1",""],"plain nonfat yogart":[".5","cup"],"honey":["3","tablespoon"],"lime juice":["1","tablespoon"],"ground turmeric":[".25","teaspoon"],"salt":["",""]}'),
  ('Blackberry-Apple Cocktail', 1, '{"blackberries":["3",""],"apple cider":["2","ounce"],"simple cyrup":[".5","ounce"],"lemon juice":[".5","ounce"],"bourbon":["1.5","ounce"],"cinnamon sugar for the rim":["1","tablespoon"]}'),
  ('Apple Slaw', 1, '{"granny smith apple":["1",""],"lemon juice":["1","tablespoon"],"red cabbage":["1.5","cup"],"green cabbage":["1.25","cup"],"beet":["1",""],"rice vinegar":[".5","cup"],"apple cider vinegar":[".25","cup"],"dijon mustard":["2","teaspoon"],"olive oil":["1","cup"]}'),
  ('Apple Butter', 1, '{"granny smith apple":["6",""],"apple cider":["1.5","cup"],"light brown sugar":["2","tablespoon"],"ground cinnamon":[".5","teaspoon"]}'),
  ('Chocolate-Banana Pudding', 5, '{"heavy cream":["2","cup"],"semisweet chocolate chopped":["5","ounce"],"confectioners sugar":["2","tablespoon"],"chocolate wafers":["26",""],"bananas":["3",""]}'),
  ('Banana Daquiri', 1, '{"crushed ice":[".5","cup"],"light rum":["1.5","ounce"],"lime":["1",""],"Cointreau":[".5","ounce"],"banana":["1",""]}'),
  ('Orange Blossom', 1, '{"gin":["1.5","ounce"],"orange juice":["1.5","ounce"],"rich simple syrup":["1","teaspoon"],"orange ":["1",""]}'),
  ('Orange Cake', 3, '{"butter":["1",""],"sugar":["1","cup"],"flour":["2","cup"],"eggs":["3",""],"orange juice":["1","cup"],"salt":[".5","teaspoon"],"baking power":["2","teaspoon"],"orange rind":["1","teaspoon"]}'),
  ('Orange-Mango Fizzes', 1, '{"sugar":["1","tablespoon"],"orange wedge":["1",""],"sparkling wine":["2.5","cup"],"mango nectar":[".75","cup"],"orange bitters":["1","teaspoon"],"orange zest twists":["",""]}'),
  ('Perfect Sushi Rice', 3, '{"rice wine vinegar":["1","cup"],"sugar":[".5","cup"],"sake":[".25","cup"],"short grain/sushi rice":["4","cup"]}'),
  ('Sweet Cinnamon Rice Pudding', 3, '{"rice milk":["2","cup"],"mochi sweet rice":[".5","cup"],"sugar":["8","teaspoon"],"saigon cinnamon":[".125","teaspoon"]}'),
  ('Coconut Rice', 3, '{"jasmine rice":["1.5","cup"],"coconut milk":["14","ounce"],"unsweetened dried shredded coconut":[".75","cup"],"salt":["1","teaspoon"]}'),
  ('Grilled Bread', 3, '{"rustic bread sliced":["1",""],"cloves garlic":["1",""],"olive oil":["",""],"coarse salt":["",""]}'),
  ('Stuffed Bread', 3, '{"sliced ham":[".5","pound"],"hard boiled eggs":["5",""],"cheese":["1.5","cup"],"basil leaves":["5-7",""],"sun-dried tomatoes":[".5","cup"],"olive oil":["",""],"salt and pepper":["",""],"white bread":["1",""]}'),
  ('Garlic Bread', 3, '{"italian bread":["1",""],"unsalted butter":["1",""],"garlic cloves":["2",""],"chopped parsley":["1","tablespoon"],"parmesan cheese":[".25","cup"]}'),
  ('Spaghetti with Marinara Sauce', 3, '{"spaghetti":["1","pound"],"tomato sauce":["2","cup"],"finely grated parmigiano-reggiano":[".66","cup"]}'),
  ('Spaghetti Frittata', 3, '{"eggs":["6",""],"parmesan cheese":["3","tablespoon"],"spaghetti":["300","gram"],"pancetta":["180","gram"]}'),
  ('Roasted Spaghetti Squash', 2, '{"spaghetti squash":["1",""],"olive oil":["",""],"kosher salt":["",""],"black pepper":["",""]}'),
  ('Cheese Omelette', 5, '{"eggs":["1",""],"whole milk":["1","teaspoon"],"cheddar cheese shredded":["1","tablespoon"],"butter":["1","teaspoon"]}'),
  ('Lemon Tango', 5, '{"lemon yogart":["4","cup"],"vanilla-flavored soymilk":["2","cup"],"heavy cream":[".5","cup"],"honey":["2","tablespoon"],"lemon zet":["2","teaspoon"],"berries":[".25","cup"]}')
;