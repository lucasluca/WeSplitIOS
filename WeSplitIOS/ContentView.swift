//
//  ContentView.swift
//  WeSplitIOS
//
//  Created by Lucas Mendes on 24/07/21.
//

import SwiftUI

struct ContentView: View {
    
  
    @State private var tipValue = ""
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Insira um valor", text: $tipValue)
                        .keyboardType(.decimalPad)
                }
                Section {
                    Text("$\(tipValue)")
                }
            }
            .navigationBarTitle("We Split")
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
