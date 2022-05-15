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
        TabBar()
            .edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    @EnvironmentObject var placementSettings: PlacementSettings
    
    func makeUIView(context: Context) -> CustomARView {
        
        let arView = CustomARView(frame: .zero)
        
        // Subscribe to sceneEvents.update
        self.placementSettings.sceneObserver = arView.scene.subscribe(to: SceneEvents.Update.self, { event in
            self.updateScene(for: arView)
        })
        
        return arView
        
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) {}
    
    private func updateScene(for arView: CustomARView) {
        // only display focusEntity when the user has selected a model
        arView.focusEntity?.isEnabled = self.placementSettings.selectedProduct != nil
        
        //add model to scene if confirmed for placement
        if let confirmedProduct = self.placementSettings.confirmedProduct, let modelEntity = confirmedProduct.modelEntity {
            
            self.place(modelEntity, in: arView)
            
            self.placementSettings.confirmedProduct = nil
        }
    }
    
    private func place(_ modelEntity:ModelEntity, in arView: ARView) {
        let clonedEntity = modelEntity.clone(recursive: true)
        
        clonedEntity.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: clonedEntity)
        
        let anchorEntity = AnchorEntity(plane: .any)
        anchorEntity.addChild(clonedEntity)
        
        arView.scene.addAnchor(anchorEntity)
        
        print("DEBUG: Add modelEntity to scene")
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
