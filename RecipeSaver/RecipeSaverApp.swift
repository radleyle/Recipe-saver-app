//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Nguyen Le on 4/24/25.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
