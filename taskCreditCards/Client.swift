//
//  View.swift
//  taskCreditCards
//
//  Created by Жанибек on 26.06.18.
//  Copyright © 2018 Жанибек. All rights reserved.
//

import Foundation

class Client{

  var save: Save
  var balance: Int?
  var clothes: String?
  
  init(balance: Int, save: Save){
    self.save = save
    self.balance = balance
  }
  
  func shopping(){
    print("what do you want to buy?")
    if let choseClose = input() {
      balance = balance! - (cloth[choseClose])!
      save.add(cloth: choseClose)
    }
    print("ok")
  }
}


