//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Nguyen Le on 4/30/25.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
