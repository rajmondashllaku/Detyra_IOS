//
//  CartView.swift
//  BookStore
//
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State var showAlert: Bool = false;
    @State var didOrder:Bool = false;
    
    var body: some View {
        
        HStack {
            ScrollView {
           
                    if cartManager.products.count > 0 {
                        ForEach(cartManager.products, id: \.id) { product in
                            ProductRow(product: product)
                        }
                        
                        HStack {
                            Text("Your cart total is").foregroundColor(.red).bold()
                            Spacer()
                            Text("€ \(cartManager.total).00")
                                .bold()
                        }
                        .padding()
                        Button("Order books") {
                            showAlert = true
                        } .alert( isPresented:$showAlert){
                            Alert(
                                title: Text("Your total is \(cartManager.total)"), message: Text("Do you want to proceed the order ?"),  primaryButton: .cancel(),
                                secondaryButton :  .default(Text("Pay").bold()){
                                    
                                cartManager.removeAllFromCart()
                                    didOrder = true
                                    
                                }
                            )
                        }
                        
                    } else if(didOrder)
                {
                        Text("Thanks for ordering ! Your books will be shipped soon ")
                        
                    }
                
                else {
                        Text("Your cart is empty.")
                    }
                
            }
            .navigationTitle(Text("My Cart"))
        .padding(.top)
      
        }
        }
    }

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}


