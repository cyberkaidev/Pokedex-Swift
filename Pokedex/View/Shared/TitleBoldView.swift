//
//  TitleBoldView.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 27/10/22.
//

import SwiftUI

struct TitleBoldView: View {
    var label: String

    var body: some View {
        Text(label)
            .bold()
            .font(.title)
    }
}

struct TitleBoldView_Previews: PreviewProvider {
    static var previews: some View {
        TitleBoldView(label: "Types")
    }
}
