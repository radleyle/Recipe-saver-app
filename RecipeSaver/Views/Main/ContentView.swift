//
//  ContentView.swift
//  RecipeSaver
//
//  Created by Nguyen Le on 4/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
