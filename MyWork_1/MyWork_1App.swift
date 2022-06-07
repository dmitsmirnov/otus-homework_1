//
//  MyWork_1App.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 02.06.2022.
//

import SwiftUI

@main
struct MyWork_1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CarListViewModel())
        }
    }
}
