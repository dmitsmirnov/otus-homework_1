//
//  ThirdView.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 06.06.2022.
//

import SwiftUI

struct ThirdView: View {
    
    @State var showModelWindow: Bool = false
    
    var body: some View {
        VStack {
            Button {
                self.showModelWindow.toggle()
            } label: {
                Text("modal window")
                .font(.title3)
                .padding()
                //.frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                
            }.sheet(isPresented: $showModelWindow) {
                Text("This is modal window")
            }
            //Spacer()
        }
        
        
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
