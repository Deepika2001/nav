//
//  ContentView.swift
//  NAVBAR
//
//  Created by Deepika Malla on 31/3/2024.
//
import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var phoneNumber = ""
    @State private var date = Date()
    @State private var location = ""

    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Name", text: $name)
                TextField("Phone Number", text: $phoneNumber)
            }

            Section(header: Text("Additional Details")) {
                Text("Date: \(date, formatter: dateFormatter)")
                Text("Location: \(location)")
            }

            Section {
                Button(action: {
                    self.date = Date() // Update the date
                    self.location = "Default Location" // Set a default location
                    // Add your form submission logic here
                }) {
                    Text("Submit")
                }
            }
        }
        .navigationBarTitle("Detail Form")
    }

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}


