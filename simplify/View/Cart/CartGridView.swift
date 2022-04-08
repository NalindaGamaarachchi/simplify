//
//  CartGridView.swift
//  simplify
//
//  Created by Nalinda Gamaarachchi on 2/22/22.
//

import SwiftUI

struct CartGridView: View {
    

    @EnvironmentObject var placementSettings: PlacementSettings
    @State var showDeleteOption: Bool = false
    
    
    var body: some View {
        
        let productInCart = self.placementSettings.productInCart
        NavigationView {
                
            VStack(spacing: 10) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Text("Your Cart")
                                .font(.system(size: 28).bold())
                            
                            Spacer()
                            
                            Button {
                                //
                            } label: {
                                Text("AR View")
                                    .font(.system(size: 22).bold())
                                    .padding(.horizontal)
                            }
                            .opacity(placementSettings.productInCart.isEmpty ? 0 : 1)
                            
                            Button {
                                withAnimation {
                                    showDeleteOption.toggle()
                                }
                            } label: {
                                Image(systemName: "trash")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color.red)
                            }
                            .opacity(placementSettings.productInCart.isEmpty ? 0 : 1)
                        }
                        
                        if placementSettings.productInCart.isEmpty {
                            // need to add photo and some text
                            Text("No products in Cart")
                                .font(.system(size: 18))
                                .padding()
                                .padding(.top, 35)
                        }else {
                            VStack(spacing: 15) {
                                ForEach(productInCart) { product in
                                    HStack(spacing: 0) {
                                        
                                        if showDeleteOption {
                                            Button {
                                                deleteProductFromCart(product: product)
                                            } label: {
                                                Image(systemName: "minus.circle.fill")
                                                    .font(.title2)
                                                    .foregroundColor(.red)
                                            }
                                            .padding(.trailing)

                                        }
                                        
                                        CartItemView(product: product)
                                    }
                                }
                            }
                            .padding(.top, 25)
                            .padding(.horizontal)
                        }
                        
                    }
                    .padding()
                    
                    if !placementSettings.productInCart.isEmpty {
                        HStack {
                            Text("Total")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("LKR \(placementSettings.getTotal())")
                                .font(.system(size: 22).bold())
                        }
                        .padding(.horizontal, 25)
                        
                        Button {
                            //
                        } label: {
                            Text("Checkout")
                                .font(.system(size: 18).bold())
                                .foregroundColor(backgroundColor)
                                .padding(.vertical, 18)
                                .frame(maxWidth: .infinity)
                                .background(colorBrown4)
                                .cornerRadius(15)
                        }
                        .padding(.horizontal, 25)
                        .padding(.vertical)
                    }
                }
                .navigationBarHidden(true)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(backgroundColor.ignoresSafeArea())
            }
        }
    }
    func deleteProductFromCart(product: Product) {
        if let index = placementSettings.productInCart.firstIndex(where: { currentProduct in
            return product.id == currentProduct.id
        }) {
            let _ = withAnimation {
                placementSettings.productInCart.remove(at: index)
            }
        }
    }
}

struct CartGridView_Previews: PreviewProvider {
    static var previews: some View {
        CartGridView()
            .environmentObject(PlacementSettings())
    }
}
