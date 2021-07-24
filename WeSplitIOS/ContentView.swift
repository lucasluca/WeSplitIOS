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
    var students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Insert your name", text: $userName)
                    Text("Your name is \(userName)" )
                }
                
                Form {
                    ForEach(1 ..< 101) { number in
                        Text("Number \(number)")
                    }
                }
                Form {
                    Picker("Select a studend", selection: $selectedStudent) {
                        ForEach(0 ..< students.count) { number in
                            Text(self.students[number])
                        }
                    }
                    Text("Selected student: \(selectedStudent)")
                }
                
                Button("Clicked \(tapCount) times") {
                    tapCount += 1
                }
            }
            .navigationBarTitle("Swift UI")
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
