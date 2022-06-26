//
//  Book.swift
//  BookStore
//
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var bookList = [Book(name: "Femrat", image: "Femrat", price: 10),
                Book(name: "Historia e popullit shqipetar", image: "Historia e popullit shqipetar", price: 15),
                Book(name: "Intelegjenca artificiale", image: "Intelegjenca artificiale", price: 20),
                Book(name: "Manovra e mbretereshes", image: "Manovra e mbretereshes", price: 17),
                Book(name: "Paris library", image: "Paris library", price: 13),
                Book(name: "Per poezine", image: "Per poezine", price: 7),
                Book(name: "Psalmet e rrenjes", image: "Psalmet e rrenjes", price: 8),
                Book(name: "Skenderbeu", image: "Skenderbeu", price: 16),
                Book(name: "Superaventurat e elenes", image: "Superaventurat e elenes", price: 10),
                Book(name: "Tregime te mocme shqipetare", image: "Tregime te mocme shqipetare", price: 15),
                Book(name: "Vitet e iluzioneve", image: "Vitet e iluzioneve", price: 9)
                ]
