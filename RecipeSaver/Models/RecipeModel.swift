//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Nguyen Le on 4/30/25.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Vietnamese Meatball Sandwich / Bánh Mì Xíu Mại",
            image: "https://feedthepudge.com/wp-content/uploads/2025/04/Banh-Mi-Xa-Xiu-Cover-750x500.webp",
            description: "Banh mi xiu mai is a Vietnamese sandwich that deserves its time in the spotlight—bánh mì xíu mại. Between the juicy, tender pork meatballs and the light, savory tomato-based sauce they’re simmered in, this banh mi xiu mai is everything comfort food should be.",
            ingredients: "4 -6 Vietnamese Baguettes\n2 lbs Fatty Ground Pork\n1⁄2 lb Pork Fat\n1 Small Jicama\n1 tbsp Minced Garlic\n2 stalks Green Onion (Whites Only)\n1 tbsp Oyster Sauce\n1 tsp MSG\n1/2 tbsp sugar\n1 tsp Sesame Oil\n1/4 tsp Salt\n1/2 tsp White Pepper\n1 tbsp cornstarch\n1 tbsp oil\n1 small shallot\n6 oz tomato sauce\n1/2 cup water\n1 tbsp fish sauce\n1tbsp chicken bouillon\n1/4 tsp salt and pepper\ncucumbers\npickled veggies\ncilantro",
            directions: "Chop the green onions, separating the whites from the greens\nFinely dice the shallot\nPeel and dice the jicama, then salt it lightly and squeeze out excess water\nCut the pork fat into small pieces and blend into a paste\nIn a mixing bowl, combine the ground pork, pork fat, jicama, garlic, and the whites of the green onion\nSeason with oyster sauce, MSG, sugar, salt, and pepper. Add cornstarch and mix well until fully combined\nLightly oil your hands to prevent sticking and form the mixture into large meatballs\nSteam the meatballs for 6-8 minutes until they are firm and cooked through\nHeat oil in a large pan over medium heat. Sauté the minced shallots and garlic until fragrant\nPour in the tomato sauce and water, stirring to combine\nSeason with fish\nThicken the sauce by stirring in the cornstarch slurry\nBring the sauce to a boil, then add the steamed meatballs. Cover and let simmer for 5 minutes to allow the flavors to meld\nFinish by stirring in sesame oil for extra depth of flavor\nLightly toast your Vietnamese baguette. Then, using a serrated knife, slice lengthwise down one side of the baguette without cutting all the way through, creating a hinge similar to a hot dog bun\nSlather on kewpie mayo, and add in all your favorite banh mi toppings, including cucumbers, jalapenos, pickled veggies, and cilantro",
            category: "Breakfast",
            datePublished: "2025-04-09",
            url: "https://feedthepudge.com/banh-mi-xiu-mai-vietnamese-meatball-sandwich/"
        ),
        Recipe(
            name: "Spicy Beef Noodle Soup / Bún Bò Huế",
            image: "https://feedthepudge.com/wp-content/uploads/2024/01/DSC03498-800x530.jpg",
            description: "Bun Bo Hue is a traditional Vietnamese noodle soup hailing from the city of Hue. Its defining feature is its robust and spicy broth, crafted from beef bones, lemongrass, shrimp paste, and chili oil. This soup boasts tender slices of beef, pork knuckles, pig’s blood cubes, and sometimes beef tendon or pork hock, all served alongside round rice noodles. Garnished with a variety of fresh herbs like cilantro, basil, and green onions, Bun Bo Hue is cherished for its rich flavors and hearty ingredients, earning it a spot as a beloved comfort food in Vietnam.",
            ingredients: "4 -6 Vietnamese Baguettes\n2 lbs Fatty Ground Pork\n1⁄2 lb Pork Fat\n1 Small Jicama\n1 tbsp Minced Garlic\n2 stalks Green Onion (Whites Only)\n1 tbsp Oyster Sauce\n1 tsp MSG\n1/2 tbsp sugar\n1 tsp Sesame Oil\n1/4 tsp Salt\n1/2 tsp White Pepper\n1 tbsp cornstarch\n1 tbsp oil\n1 small shallot\n6 oz tomato sauce\n1/2 cup water\n1 tbsp fish sauce\n1tbsp chicken bouillon\n1/4 tsp salt and pepper\ncucumbers\npickled veggies\ncilantro\n8 quarts water\n2 lbs beef knuckle\n2 lbs beef rib bone\n2 lbs pork hock\n2 lbs beef shank\n1 yellow onion\n3 stalks lemongrass\n1/2 pineapple\n2 inch knob ginger\n2 tbsp msg\n4 tbsp fish sauce\n1 inch nub rock sugar\n1/4 cup annatto seed oil\n2 stalks lemongrass\n1 shallot\n4 cloves garlic\n4 tbsp red chili flakes\n2 tbsp sugar\n2 tbsp fish sauce\n1 tbsp shrimp paste\nChả Quế (Cinnamon ham)\nCoagulated pork blood\nRed cabbage\nWhite onion\nGreen onion\nCilantro\nLime",
            directions: "Parboil beef bones, pork hocks, and beef shank. Then rinse and clean the pork under cold water\nTo a clean stockpot add eight quarts of water and bring up to a boil, add cleaned beef, onion, ginger, lemongrass and pineapple. Bring back up to a boil, skim off any impurities, and let that simmer covered for one hour\nAfter an hour, remove the onion and ginger so they don’t disintegrate into the broth and help keep the broth clean. Let that simmer for another hour, and then pull the pork hock. At the two-and-a-half to three-hour mark, pull the beef shank, wrap it in plastic wrap, and then put it into the fridge to cool down to slice later\nWhile the broth is simmering, make the sate sauce by combining annatto seed oil, minced lemongrass, shallots, and garlic in a saucepan. Season with red chili flakes, sugar, fish sauce and shrimp paste\nSeason broth with rock sugar, MSG, and fish sauce. Add half the sate, and reserve the other half to use an additional topping\nIf you're using coagulated pork blood, cut it into one-inch cubes, add it to boiling water, and cook for 15-20 minutes until tender\nCut Chả Quế (Vietnamese cinnamon ham) into slices and prep the rest of the toppings and garnishes. Shred red cabbage or banana blossom. Thinly slice white onion, and submerge in cold water to remove raw onion flavor. Cut green onions, cilantro and lime\nCook thick rice noodles in salted water. Beware that depending on which brand of rice noodles you use, the cooking instructions are very off. The package will say to cook for 7-8 minutes, but I've found that you actually need to cook for 30-35 minutes to get them to al dente\nAssemble the bowl by adding noodles, toppings, broth, and garnishes",
            category: "Main",
            datePublished: "2024-01-10",
            url: "https://feedthepudge.com/spicy-beef-noodle-soup-bun-bo-hue/"
        ),
        Recipe(
            name: "Vietnamese Green Papaya Salad / Gỏi Đu Đủ",
            image: "https://cdn.shortpixel.ai/spai2/w_617+q_glossy+ret_img+to_auto/www.hungryhuy.com/wp-content/uploads/Vietnamese-papaya-and-beef-jerky-salad-close-up.jpg",
            description: "This is an easy 3-ingredient green papaya salad recipe (Gỏi Đu Đủ Khô Bò) you can throw together in a few minutes. There’s no cooking required, just easy prep so you can get to snacking.",
            ingredients: "1 green papaya ~2 pounds, shredded\n1/3 pound beef jerky\nThai basil cut into strips\n1/2 cup regular sodium Kikkoman soy sauce\n3/4 cup sugar\n3/4 cup vinegar\n1 cup water\n5 garlic cloves thinly sliced\nsriracha chili paste, or sliced bird's eye chiles (optional)",
            directions: "Peel, de-seed, and shred the papaya.\nToss shredded papaya with basil.\nCombine all dressing ingredients in a bowl and mix.\nTop with beef jerky strips and dressing, to taste.\nBoom!",
            category: "Salad",
            datePublished: "2022-03-16",
            url: "https://www.hungryhuy.com/vietnamese-papaya-beef-jerky-salad/"
        ),
        Recipe(
            name: "Shaking Beef / Bò Lúc Lắc",
            image: "https://feedthepudge.com/wp-content/uploads/2024/01/DSC01927-Enhanced-NR-scaled.jpg",
            description: "Bo Luc Lac or Shaking Beef thick pieces of steak cut into squares and seared in a pan or wok. The name shaking beef comes from the shaking motion required to cook it!",
            ingredients: "2 lbs New York steak\n1 Yellow Onion\n1 Bell Pepper\n2 tbsp Oyster Sauce\n2 tbsp Soy Sauce\n1 tbsp Dark Soy Sauce\n1 tbsp Sugar\n1 tbsp Garlic\n1 tbsp Oil\n1 tbsp MSG (optional)\nSalt and Pepper\n1 Lime\n½ tsp Salt\n½ tsp Black Pepper",
            directions: "Cut steak into one inch cubes and marinade with oyster sauce, soy sauce, dark soy sauce, sugar, garlic, oil, salt and pepper. Let that marinate in the fridge for at least half an hour, but the longer the better\nPrep veggies, by cutting yellow onion and bell pepper into one inch squares\nLet the beef come to room temperature, then in a hot pan add the beef in a single layer to make sure that we don’t steam the beef. Let the beef get a nice hard sear, and then shake your pan to move the beef around\nWhen the beef is 90% done, add in veggies and mix\nServe with rice or salad, and a dipping sauce made of lime juice, salt and pepper",
            category: "Side",
            datePublished: "2024-01-06",
            url: "https://feedthepudge.com/shaking-beef-bo-luc-lac/"
        ),
        Recipe(
            name: "Stuffed Bittermelon Soup / Canh Khổ Qua",
            image: "https://feedthepudge.com/wp-content/uploads/2024/01/DSC04283-750x500.jpg",
            description: "This stuffed bitter melon soup is a delicious Vietnamese “soup”, stuffed with pork, mushroom, and mung bean noodles, simmered until the melon softens in a light chicken broth.",
            ingredients: "2 large bitter melons\n1 lb ground pork\n1/4 cup wood ear mushroom\n1 oz bean thread noodles\n1 tbsp fish sauce\n1 tbsp chicken bouillon\n1 tsp sugar\nSalt and pepper\n5 quart water\n1 tbsp minced garlic\n1/4 cup dried shrimp\n2 tbsp fish sauce\n1 tbsp MSG\n1 tbsp sugar\nSalt and pepper\n1 tbsp oil\nGreen onion\nCilantro",
            directions: "Rehydrate wood ear mushrooms, bean thread noodles, and dried shrimp with warm water in separate bowls for 10 minutes. Then, using a pair of scissors, cut the mushroom and noodles into little pieces and set everything aside\nWash bittermelon, then cut into 1.5-2-inch sections. Use a spoon to core out the inner tissue and seeds\nIn a mixing bowl, combine ground pork with rehydrated mushrooms and noodles. Season with fish sauce, chicken bouillon, sugar, salt and pepper\nStuff bittermelon with pork filling, making sure it's well-packed. Form small meatballs with any remaining filling\nIn a stock pot, sauté minced garlic til fragrant. Add rehydrated dried shrimp and sauté for another couple of minutes. Add water, bring up to a boil, and skim off the impurities\nAdd stuffed bitter melon and pork meatballs, bring back up to a boil, skim off any additional impurities, and let simmer for 30-40 minutes, or until bitter melon is fork tender\nSeason broth with fish sauce, sugar and MSG\nLadle into a bowl and garnish with cilantro, green onion, and black pepper. Serve with rice",
            category: "Soup",
            datePublished: "2024-01-06",
            url: "https://feedthepudge.com/stuffed-bittermelon-soup-canh-kho-qua/"
        ),
        Recipe(
            name: "Vietnamese Sesame Balls / Bánh Cam",
            image: "https://cdn.shortpixel.ai/spai2/w_600+q_glossy+ret_img+to_auto/hungryhuy.com/wp-content/uploads/banh-cam-1.jpg",
            description: "If you’re looking for dessert on the richer side, something deep fried and crispy always delivers. This sesame balls recipe (Vietnamese bánh cam) satifies snack cravings with a crispy golden glutinous rice outer shell, filled with sweet mung beans, and covered in white sesame seeds.",
            ingredients: "Cooking oil\n113.4 g (4 oz) dried mung beans\n1.26 g (.75 oz) sugar\n1/4 tsp salt\nA dash of vanilla extract\n1/2 cup warm water plus more on the side for later\n45.36 g (1.6 oz) sugar\n1/2 tsp salt\n113.4 g (4 oz) glutinous rice flour\n21.26 g (.75 oz) rice flour\n21.26 g (.75 oz) all-purpose wheat flour\n5 tbsp potato flakes\n1.5 tsp baking powder",
            directions: "Rinse the mung beans under running water and drain, just like how you'd rinse rice.\nSoak the mung beans. Add enough boiling water to cover 1/2 above the level of mung beans, let it cool and transfer to the fridge overnight. If you want to rush this process a bit you can drain after its cooled (about two hours, then repeat this process two more times).\nCook the mung beans. Using a steamer on medium heat is the easiest way to reach perfect doneness. You can also make it in a rice cooker with slightly more water than you would use to make rice, but you will lose some sticking to the pot. The beans are done when no longer crunchy, have softened and are ready to mash. This took me about 25 minutes with a stovetop steamer.\nCombine the cooked mung beans with the sugar, salt, and vanilla. Mash and add water if needed to achieve a paste similar to thick and slightly dry mashed potatoes.\nPour 1/2 of the water in a big bowl. Add the sugar and salt and mix to dissolve.\nAdd remaining ingredients and mix to combine (you can use a food processor if you want). The dough should be slightly dry and have a play dough consistency. Rest the dough a minimum 2 hours, ideally 8 for best results. It will slightly rise and hydrate after resting, making it easier to work with.\nFlatten out a disk of the dough and add a ball of mung bean filling. The dough to filling ratio is up to you! I like about 1'' in diameter, but you can make them bigger. Keep in mind they will slightly expand during cooking.\nTry not to leave any air pockets inside, since the dough will already be expanding and adding air to the center. Close off the ball so there aren't any cracks.\nSlightly roll in your hands to make a ball shape and then roll in a bowl of sesame seeds to coat thoroughly. Set aside for frying.\nHeat a heavy pot with neutral cooking oil to around 285 F and deep fry the bánh cam. Makre sure not to crowd the pot. It should take about 11 minutes per batch. You may need to constantly move them around for even cooking.",
            category: "Dessert",
            datePublished: "2022-02-17",
            url: "https://www.hungryhuy.com/banh-cam-banh-ran-recipe-vietnamese-fried-sesame-balls/"
        ),
        Recipe(
            name: "Vietnamese Iced Coffee / Cà Phê Sữa Đá",
            image: "https://www.hungryhuy.com/wp-content/uploads/vietnamese-coffee-hero.jpg",
            description: "Vietnamese coffee is an intensely strong and sweet coffee, that’s sure to dissolve your morning daze and perk you up for the day. Its dark roast coffee and potent condensed milk, slowly dripped through a metal filter (phin) make this a unique coffee. In Vietnam, coffee, whether it’s brewed and served at home or in restaurants, is brewed leisurely. Hot coffee (cà phê nóng) is preferred in the morning, while iced coffee (cà phê sữa đá) is saved for the heat later in the day.",
            ingredients: "4 tsp Cafe Du Monde or Trung Nguyen coffee\n2 tsp condensed milk to taste\n1 cup boiling water\nEquipment: Vietnamese coffee filter (phin), insulated coffee mug, gooseneck electric kettle",
            directions: "Start by boiling some water. An electric kettle makes it a lot faster.\n Preheat the filter and cup by pouring a bit of boiling water through it.\nRemove the metal filter and pour in 1 heaping tablespoon of Cafe Du Monde (about 4 teaspoons).\nTwist the filter on gently until it just starts to stop. Then turn it little more, a bit less than 1/8 a turn. If your filter doesn't use screws, simply place the filter on top of the coffee.\nPour a tiny bit of water in the filter just to wet the grind and to let the grind expand a bit. This will help rid of some small grinds that happen to make it through the filter. You can toss it out if you see any.\nFill the filter all the way and let it drip. Ideal brewing time comes to about 3 to 5 minutes so adjust the filter accordingly. Too loose and you'll just have runny brown water. Too tight and nothing will drip through. The filter will be hot, so use a fork or another utensil to adjust the filter. Place the cap on and watch the coffee drip!\nAdd about 1 teaspoon of condensed milk. If you like it sweeter add 2-3 tsp.\nAdding it to the cup before brewing does have a slight effect on the flavor since the boiling water cooks it a bit.\nFor iced coffee, let it cool off a bit then pour the brew into a glass filled with ice.",
            category: "Drink",
            datePublished: "2024-09-04",
            url: "https://www.hungryhuy.com/vietnamese-coffee-recipe-cafe-sua-da-recipe/"
        ),
    ]
}
