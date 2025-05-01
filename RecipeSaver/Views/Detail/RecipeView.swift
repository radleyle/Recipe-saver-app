//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by Nguyen Le on 4/30/25.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                        .cornerRadius(10)
                        .padding(.horizontal)
                } placeholder: {
                    ProgressView()
                        .frame(height: 250)
                }

                VStack(alignment: .leading, spacing: 20) {
                    Text(recipe.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .padding(.horizontal)

                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                            .font(.body)
                            .padding(.horizontal)
                    }

                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Ingredients:")
                                .font(.headline)
                            Text(recipe.ingredients)
                                .font(.body)
                        }
                        .padding(.horizontal)
                    }

                    if !recipe.directions.isEmpty {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Directions:")
                                .font(.headline)
                            Text(recipe.directions)
                                .font(.body)
                        }
                        .padding(.horizontal)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
