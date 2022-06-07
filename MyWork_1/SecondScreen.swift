//
//  SecondScreen.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 02.06.2022.
//

import SwiftUI

struct SecondScreen: View {
    var body: some View {
        
        NavigationView {
            CarListView()
        }
        
        //Text("Second")
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}

struct Car: Identifiable {
    var id = UUID()
    var name: String
}

class CarListViewModel: ObservableObject {
    @Published var car: [Car] = [Car(name: "audi"),
                                 Car(name: "bmw"),
                                 Car(name: "opel")]
    
    init() {
        
    }
}

struct CarListView: View {
    
    @StateObject var viewModel: CarListViewModel = .init()
    
    var body: some View {
        
        VStack {
            List {
                ForEach(viewModel.car) { car in
                    NavigationLink(destination: CarScreen(title: car.name)) {
                        Text(car.name)
                    }
                }
            }
        }
        
    }
}
