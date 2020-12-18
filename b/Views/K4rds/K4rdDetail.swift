//
//  K4rdDetail.swift
//  b
//
//  Created by Brian Davis on 11/14/20.
//

import SwiftUI

struct K4rdDetail: View {
    var kard: K4rd
    
    private var titleSize: CGFloat = 16.0
    private var subtitleSize: CGFloat = 14.0
    private var numOwnded: Int = 2
    
    public init(kard: K4rd) {
        self.kard = kard
    }
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .frame(height: 300)
                .foregroundColor(Color(kard.backgroundColor))
                .ignoresSafeArea(edges: .top)
            
            PlayerCircleImage(image: kard.image)
                .offset(y: -200)
                .padding(.bottom, -170)
            
            HStack {
                
                Spacer()
                
                VStack {

                    VStack(alignment: .leading) {
                
                        Text(kard.name)
                            .padding(4.0)
                            .font(Font.system(size: titleSize).bold())
                        
                        Divider()
                        
                        Text("fukin poopie mc fuk pants")
                            .padding(4.0)
                            .font(Font.system(size: subtitleSize))
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    
                    }
                    
                }
                .padding(16.0)
                
                Text("Owned: \(kard.owned)")
                    .font(Font.system(size: subtitleSize).bold())
                    .padding()
            }
            .padding(4)

            Spacer()
        }
        .navigationTitle(kard.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct K4rdDetail_Previews: PreviewProvider {
    static var previews: some View {
        K4rdDetail(kard: ModelData().kards[0])
    }
}
