//
//  ContentView.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 02.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelected: Int = 0
    @StateObject var viewModel: CarListViewModel = .init()
    
    @State var selection: Int? = nil
    
    var body: some View {
        
        TabView(selection: $tabSelected) {
            
            FirstScreen() {
                
                selection = 1
                tabSelected = 1
                //viewModel.selection = 1
                
            }
                
                .tag(0)
                .tabItem{
                    Label("tram", systemImage: "tram")
                }
            SecondScreen(selection: $selection)
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
