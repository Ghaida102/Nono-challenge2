//
//  main.swift
//  GAppCLI
//
//  Created by Ghaida Alsaif on 22/05/1443 AH.
//

import Foundation

print("-----------------------------------")
print("What is your name  👋🏻 ? ")
let name = readLine()!
print("Hello \(String(describing: name)) , welcome to (Food Cab) App 😍 ")

print("-----------------------------------")
print("1.  See all Resturant")
print("2.  Request a Service")
print("3.  Display the total price")
print("4.  Exit")
print("-----------------------------------")
print("Select your choice")
print("-----------------------------------")



var Resturants = """
1. Arabic food
2. American food
3. Italian food
4. Indian food

"""

//if Resturants == "Arabic food" {
//
//    print("Kabsa ، Kushari ، maqloba")
//}
//if Resturants == "American food"{
//    print("Burgers , Hot dogs , Enchiladas")
//
//}
//if Resturants == "Italian food" {
//
//    print("Pizza , Pasta , lasagne")
//}
//if Resturants == "Indian food" {
//
//    print("tikka masala , Biryani , Curry chicken")
//}

//func userOrder(foodChoice: String, quantity: Int ,price: Int) -> Int{
//  let totalprice = (price*quantity)
//   print("you choose \(quantity) \(foodChoice) with price \(totalPrice) SAR")
//   return totalPrice
//}


let services = """
1. Order for delivery 🚕
2. Order for Pick-up 🏃🏼‍♀️
3. Scheduling orders 🗓

"""


let prices = """

* Delivery price 30 Riyals 💵
 [Except for AlHamra district, Gharnatah district and Qurtubah district free delivery!]

* It Takes 35 minutes to pickup ⏱

* Orders are scheduled weekly 🗓
"""
var Afood = ["Kabsa , 50 SR" , "Kushari , 65 SR" , "Masoub , 20 SR"]
var Amfood = ["Burgers , 20 SR " , "Hot dogs , 15 SR" , "Enchiladas , 35 SR" ]
var Ifood = ["Pizza , 40 SR" , "Pasta , 50" , "lasagne 45 " ]
var Infood = ["tikka masala , 35 SR" , "Biryani , 50 SR" , "chicken Curry , 30 SR"]
//reapet ==
var userInput :String = ""

repeat {
    if let userChoice = readLine(){
        
        userInput = userChoice
        switch userChoice{
            
        case "1":
            print(Resturants)
            
        case "2":
            print(services)
        case "3":
            print(prices)
        case "4" :
            print("Exit")
            
        case "Arabic food":
            //print(Afood)
            
            userOrder1 (Foods:Afood)
            
            
            
        case "American food" :
            //        print("Burgers , Hot dogs , Enchiladas")
            userOrder1 (Foods:Amfood)
            
        case "Italian food" :
            //        print("Pizza , Pasta , lasagne")
            userOrder1 (Foods:Ifood)
            
        case "Indian food" :
            
            userOrder1 (Foods:Infood)
            
        default :
            print("you didn't choose yet")
        }
    }
} while userInput != "4"



func userOrder1 (Foods : [String])
{
    var index = 1
    for item in Foods {
        print("\(index) \(item)")
        index = index + 1
        
    }
    //
    //    func userOrder2 ()
    //    {
    //        var index = 1
    //        for item in Amfood {
    //            print("\(index) \(item)")
    //            index = index + 1
    //
    //        }
    //    }
    //        func userOrder3 ()
    //        {
    //            var index = 1
    //            for item in Ifood {
    //                print("\(index) \(item)")
    //                index = index + 1
    //
    //            }
    //        }
    //            func userOrder4 ()
    //            {
    //                var index = 1
    //                for item in Infood {
    //                    print("\(index) \(item)")
    //                    index = index + 1
    //
    //                }
    //            }
    
    if let input = readLine() {
        print("please select:")
        print(services)
        
        
        if let userInput = readLine() {
            //switch
            
            switch userInput {
            case "1":
                print("Delivery price 30 Riyals , [Except for AlHamra district, Gharnatah district and Qurtubah district free delivery!]")
                print(" Thank you \(name) , 35 minutes and your order will be on the way 💃🏻!")
            case "2":
                print("It Takes 35 minutes to pickup")
            case "3":
                print("Orders are scheduled weekly")
            default:
                print("you didn't choose yet")
            }
            
        }
        
        
        
    }
}

