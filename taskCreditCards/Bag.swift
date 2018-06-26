//
//  Bag.swift
//  taskCreditCards
//
//  Created by Жанибек on 26.06.18.
//  Copyright © 2018 Жанибек. All rights reserved.
//

import Foundation

protocol Save {
  
  var bagClothes: [String] { get set }
  
  func add(cloth: String)
  
  func printBag()
  
  func remove(cloth: String)
}

class Bag: Save {
  
  var bagClothes: [String] = []
  
  func add(cloth: String) {
    bagClothes.append(cloth)
  }
  
  func printBag() {
    if (bagClothes.isEmpty) {
      print("You don't have anything!")
      return
    }
    print("--- In your bag ---")
    for cloth in bagClothes {
      print(cloth)
    }
    print("-------------------")
  }
  
  func remove(cloth: String) {
    bagClothes.remove(at: bagClothes.index(of: cloth)!)
  }
}
