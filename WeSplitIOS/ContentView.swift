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
    
    var totalPerPerson: Double {
        let numberOfPeopleStartFromNumberTwo: Int = 2
        let peopleCount = Double(numberOfPeople + numberOfPeopleStartFromNumberTwo)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }

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
                    Text("$\(totalPerPerson,specifier: "%.2f")")
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
