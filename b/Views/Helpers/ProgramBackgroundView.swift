//
//  ProgramBackgroundView.swift
//  b
//
//  Created by Brian Davis on 12/17/20.
//

import SwiftUI

struct ProgramBackgroundView: View {
    var body: some View {
        Image("PhoenixFootball")
            .frame(width: 300, height: 100, alignment: .center)
    }
}

struct ProgramBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramBackgroundView()
    }
}
