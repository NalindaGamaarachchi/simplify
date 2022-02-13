//
//  ContentView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 11/22/21.
//

import SwiftUI
import CoreData
import RealityKit

struct ContentView: View {

    var body: some View {
        CategoryGridView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
