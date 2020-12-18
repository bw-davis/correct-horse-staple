//
//  CardRow.swift
//  b
//
//  Created by Brian Davis on 11/29/20.
//

import SwiftUI

struct K4rdRow: View {
    var kard: K4rd
    private var minPadding: CGFloat {
        get {
            return 4.0
        }
    }
    var body: some View {
        HStack {
            
            kard.image
                .resizable()
                .frame(width: 36, height: 36)
            Text(kard.name)
            Spacer()
            Text(String(kard.cardNumber))
            
            if kard.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
        }.padding(EdgeInsets(top: minPadding,
                             leading: minPadding,
                             bottom: minPadding,
                             trailing: minPadding))
        .frame(width: 300, height: 36, alignment: .center)
        
        
        
    }
}

struct K4rdRow_Previews: PreviewProvider {
    static var kards = ModelData().kards
    
    static var previews: some View {
        Group {
            K4rdRow(kard: kards[0])
            K4rdRow(kard: kards[1])
        }
        .previewLayout(.fixed(width: 300, height:70))
        .environmentObject(ModelData())
    }
}

