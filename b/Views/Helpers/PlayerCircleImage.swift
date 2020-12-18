//
//  PlayerCircleImage.swift
//  b
//
//  Created by Brian Davis on 11/15/20.
//

import SwiftUI

struct PlayerCircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct PlayerCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCircleImage(image: Image("mahomes2"))
    }
}
