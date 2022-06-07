//
//  ContentView.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 02.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelected: Int = 0
    
    var body: some View {
        
        TabView(selection: $tabSelected) {
            
            FirstScreen() {
                tabSelected = 1
                #warning("""
                    не доконца только понял 5 пункт в дз:
                    - "На первом табе должна быть кнопка открывающая второй таб и один из пунктов там"
                    Как выбрать один из этих пунктов? надо как то выбрать элемент из list?
                """)
             
            }
                .tag(0)
                .tabItem{
                    Label("tram", systemImage: "tram")
                }
            SecondScreen()
                .tag(1)
                .tabItem{
                    Label("auto", systemImage: "car")
                }
            ThirdView()
                .tag(2)
                .tabItem{
                    Label("bus", systemImage: "bus")
                }
            
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
