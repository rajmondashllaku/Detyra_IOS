//
//  CardManager.swift
//  BookStore
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Book] = []
    @Published private(set) var total: Int = 0
    

    // Functions to add and remove from cart
    func addToCart(product: Book) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Book) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
    
    func removeAllFromCart() {
        products = []
        total = 0
        
    }
    
   
}

