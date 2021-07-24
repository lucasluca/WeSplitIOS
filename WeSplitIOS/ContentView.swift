//
//  ContentView.swift
//  WeSplitIOS
//
//  Created by Lucas Mendes on 24/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    @State private var userName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Insert your name", text: $userName)
                    Text("Your name is \(userName)" )
                }
                .navigationBarTitle("Swift UI")
                
                Button("Clicked \(tapCount) times") {
                    tapCount += 1
                }
            }
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
