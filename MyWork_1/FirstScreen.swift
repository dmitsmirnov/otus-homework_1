//
//  FirstScreen.swift
//  MyWork_1
//
//  Created by dmitsmirnov on 02.06.2022.
//

import SwiftUI

struct FirstScreen: View {
    
    @State var showAnimating: Bool = false
    let action: () -> Void
    
    var body: some View {
        VStack {
            
            Button(action: action, label: {
                Text("open second window")
            })
            
            .padding()
            .background(Color.brown)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Button(action: {
                self.showAnimating.toggle()
            }, label: {
                Text("show animating")
            })
            
            .padding()
            .background(Color.brown)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            ActivityIndicator(startAnimating: $showAnimating)
            
        }
        
    }
}

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var startAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activiry = UIActivityIndicatorView()
        activiry.style = .large
        activiry.color = .red
        return activiry
    }

    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        if self.startAnimating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(){}
    }
}
