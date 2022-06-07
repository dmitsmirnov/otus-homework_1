//
//  CarScreen.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 06.06.2022.
//

import SwiftUI

struct CarScreen: View {
    
    var title: String
    
    var body: some View {
        
        VStack {
            EmptyView()
            Text(title)
                .font(.system(size: 100))
        }
        
        Spacer()
        
    }
}

struct CarScreen_Previews: PreviewProvider {
    static var previews: some View {
        CarScreen(title: "default")
    }
}
