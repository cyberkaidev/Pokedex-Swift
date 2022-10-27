//
//  LoadingView.swift
//  Pokedex
//
//  Created by Kaique Vinicius Cirqueira Dourado on 27/10/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView("loading...")
            .progressViewStyle(CircularProgressViewStyle())
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
