//
//  main.swift
//  taskCreditCards
//
//  Created by Жанибек on 26.06.18.
//  Copyright © 2018 Жанибек. All rights reserved.
//

import Foundation

var cloth:[String:Int] = ["t-shirt":5000,"shoes":6000,"shirt":4000,"bag":2000]

func showProducts(){
  var i = 1
  for (key,value) in cloth {
    print("\(i). \(key) , price: \(value)")
    i += 1
  }
}

func printsMenuText(){
  print("--- Choose ---")
  print("1.balance")
  print("2.bag")
  print("3.products")
  print("4.buy")
  print("5.exit")
  print("--------------")
}

func removeItemsInBag(client: Client) {
  while (client.balance! < 0) {
    print("Remove one cloth")
    client.save.printBag()
    let selectedCloth = input()!
    client.save.remove(cloth: selectedCloth)
    client.balance! += cloth[selectedCloth]!
  }
}

func input() -> String? {
  print(">", terminator: " ")
  return readLine()
}

print("Hello! ,Enter your name ?")
_ = input()
print("Enter your balance")
let bag = Bag()
var price = Int(input()!)
let client = Client(balance: Int(price!), save: bag)

loop: while (true) {
  printsMenuText()
  let number = Int(input()!)
  switch number{
  case 1?:
    print("you have \(client.balance!)")
    break
  case 2?:
    bag.printBag()
    break
  case 3?:
    showProducts()
    client.shopping()
    break
  case 4?:
    removeItemsInBag(client: client)
    print("Success")
    break loop
  case 5?:
    break loop
  default:
    break
  }
}
