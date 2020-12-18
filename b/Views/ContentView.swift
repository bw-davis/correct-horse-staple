//
//  ContentView.swift
//  b
//
//  Created by Brian Davis on 12/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        K4rdList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
