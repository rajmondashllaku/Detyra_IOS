//
//  ProductCart.swift
//  BookStore
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Book
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price) €")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.mint.opacity(0.7))
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.green.opacity(0.7))
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: bookList[0])
            .environmentObject(CartManager())
    }
}
