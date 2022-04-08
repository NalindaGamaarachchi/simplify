//
//  ProductDetailView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 1/29/22.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var placementSettings: PlacementSettings
    @State var product : Product
    @State var showProductAR = false
    
    
    var body: some View {
        VStack {
            NavigationLink(isActive: $showProductAR, destination: {
                ProductARView()
            }, label: {
                EmptyView()
            })
                
            VStack {
                HStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundColor(Color.black.opacity(0.8))
                            
                    }
                    Spacer()
                    Button {
                        //product.loadModelEntity()
                        //self.placementSettings.selectedProduct = product
                        showProductAR.toggle()
                        
                    } label: {
                        Text("AR View")
                    }

                }
                .padding()
                
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                    .offset(y: -12)
                    .frame(maxHeight: .infinity)
            }
            .frame(height: getRect().height / 2.5)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 15) {
                    Text(product.name)
                        .font(.system(size: 30).bold())
                    Text("Product type: \(product.category.label)")
                        .font(.system(size: 20))
                    
                    Text(product.description)
                        .font(.system(size: 15))
                        .foregroundColor(Color.gray)
                    
                    HStack {
                        Text("Total")
                            .font(.system(size: 18))
                        
                        Spacer()
                        
                        Text("LKR \(Int(product.price))")
                            .font(.system(size: 22).bold())
                            .foregroundColor(colorBrown4)
                    }
                    .padding(.vertical, 20)
                    
                    Button {
                        addToCart()
                    } label: {
                        Text(isInCart() ? "Added to cart" : "Add to cart")
                            .font(.system(size: 22).bold())
                            .foregroundColor(colorBrown1)
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .background(colorBrown4.cornerRadius(15))
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    }

                    
                }
                .padding([.horizontal, .bottom], 20)
                .padding(.top, 25)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white
                            .clipShape(CustomCorners(corners: [.topLeft, .topRight], radius: 25))
                            .ignoresSafeArea()
            )
        }
        .navigationBarHidden(true)
        .background(backgroundColor.ignoresSafeArea())

    }
    func addToCart() {
        
        if let index = placementSettings.productInCart.firstIndex(where: { product in
            return self.product.id == product.id}) {
                placementSettings.productInCart.remove(at: index)
            }else {
                placementSettings.productInCart.append(product)
            }
    }
    
    func isInCart() -> Bool {
        return placementSettings.productInCart.contains { product in
            return self.product.id == product.id
        }
    }
}

//struct ProductDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductDetailView(product: Product(id: 01, name: "Chair 01", category: .chair, image: "chair_swan", price: 1000, description: "kfjef hfkjashfkjashf kah fjahsfk asjhfkashjf ajshfkasjfh kajshf ksaf", scale: 1))
//            .environmentObject(PlacementSettings())
//    }
//}
