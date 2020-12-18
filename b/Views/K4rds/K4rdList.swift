//
//  K4rdList.swift
//  b
//
//  Created by Brian Davis on 12/3/20.
//

import SwiftUI

struct K4rdList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
   
    
    var filteredKards: [K4rd] {
        modelData.kards.filter { kard in
            (!showFavoritesOnly || kard.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredKards) { kard in
                    NavigationLink(destination: K4rdDetail(kard: kard)) {
                        K4rdRow(kard: kard)
                    }
                }
            }
        .navigationTitle("2020 Panini Phoenix")
//            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
        }
    }

}

struct K4rdList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            K4rdList()
                .environmentObject(ModelData())
        }
        
    }
}

