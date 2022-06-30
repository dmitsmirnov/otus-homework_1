//
//  SecondScreen.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 02.06.2022.
//

import SwiftUI

struct SecondScreen: View {
    
    @Binding var selection: Int?
    
    var body: some View {
        
        NavigationView {
            CarListView(selection: $selection)
                .environmentObject(CarListViewModel())
        }
    }
    
    
}

//struct SecondScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondScreen()
//    }
//}

struct Car: Identifiable {
    var id = UUID()
    var name: String
    var id2: Int
}

class CarListViewModel: ObservableObject {
    @Published var car: [Car] = [Car(name: "audi", id2: 0),
                                 Car(name: "bmw", id2: 1),
                                 Car(name: "opel", id2: 2)]
    
    //@State var selection: Int? = nil
    
    init() {
       
    }
}

struct CarListView: View {
    
    @StateObject var viewModel: CarListViewModel = .init()
    
    @Binding var selection: Int?
    
    var body: some View {
        
        VStack {
            List {
                ForEach(viewModel.car) { car in
                    
                    NavigationLink(
                        
                        tag: car.id2,
                        selection: $selection,
                        
                        destination: {
                            CarScreen(title: car.name)
                        },
                        label: {
                            Text(car.name)
                        })
                }
            }
        }
        
    }
}


