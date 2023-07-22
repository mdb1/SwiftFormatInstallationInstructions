//
//  ContentView.swift
//  SwiftFormatInstallationInstructions
//
//  Created by Manu on 22/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresentingSheet: Bool = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(
                "Hello, world!"
            )
            Button {
                isPresentingSheet = true
            }
            label: {
                Label("Present Bottom Sheet", image: "star")
            }
        }
        .padding()
        .sheet(
            isPresented: $isPresentingSheet
        ) {
            Text("Hey!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
