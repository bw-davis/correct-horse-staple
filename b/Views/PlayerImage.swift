//
//  PlayerImage.swift
//  b
//
//  Created by Brian Davis on 11/16/20.
//

import SwiftUI

struct PlayerImage: View {
    var body: some View {
//        Image("mahomes")
        Image("patMahomes")
            .resizable()
            .padding(1.0)
            .padding(EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2))
            .scaledToFit()
            .shadow(radius: 300)
//            .frame(width: 375, height: 900, alignment: .center)
            
            //.clipShape(Circle())
            
                //Circle().stroke(Color.white, lineWidth: 4))
            
    }
}

struct PlayerImage_Previews: PreviewProvider {
    static var previews: some View {
        PlayerImage()
    }
}
