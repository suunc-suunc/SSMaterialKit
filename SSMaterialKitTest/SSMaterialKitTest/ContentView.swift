//
//  ContentView.swift
//  SSMaterialKitTest
//
//  Created by SUU NGUYEN on 08/02/2021.
//

import SwiftUI
import SSMaterialKit

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .foregroundColor(Color.colorFromHex(hex: 0x858585, alpha: 0.5))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
