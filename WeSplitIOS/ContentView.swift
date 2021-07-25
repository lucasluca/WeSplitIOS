//
//  ContentView.swift
//  WeSplitIOS
//
//  Created by Lucas Mendes on 24/07/21.
//

import SwiftUI

struct ContentView: View {
    
  
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Insert a value", text: $checkAmount)
                        .keyboardType(.decimalPad)
                }
                Section {
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) { quantityOfPeople in
                            Text("\(quantityOfPeople) people")
                        }
                    }
                }
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) { index in
                            Text("\(self.tipPercentages[index])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section {
                    Text("$\(checkAmount)")
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
