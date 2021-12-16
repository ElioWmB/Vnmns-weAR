//
//  Data.swift
//  Realtaaumentata
//
//  Created by Elio Fortunato on 09/12/21.
//

import Foundation

class ClothesInfo : Identifiable {
    let id = UUID()
    var name : String = ""
    var image : String = ""
    var price : String = ""
    var brand : String = ""
    var dimage : String = ""
    var design : Int
    
    init(name:String, image:String, price:String, brand:String, dimage:String, design:Int) {
        self.name = name;
        self.image = image;
        self.price = price;
        self.brand = brand;
        self.dimage = dimage;
        self.design = design;
    }


}
