//
//  Clothes.swift
//  Realtaaumentata
//
//  Created by Elio Fortunato on 10/12/21.
//

import Foundation

class Clothes : ObservableObject {
    @Published var Items: [ClothesInfo] = []
    
    var item1 = ClothesInfo(name: "VIENMNSUONNO1926", image: "image",  price: "100.00 £", brand: "vnmns1926", dimage: "dimage1",design: 1)
    var item2 = ClothesInfo(name: "DONER PIZZA", image: "Image2", price: "420.00 £", brand: "vnmns1926", dimage: "dImage2", design: 2)
    var item3 = ClothesInfo(name: "IGNORANCE", image: "Image3", price: "69.00 £", brand: "vnmns1926 x Ignorance", dimage: "dImage3", design: 3)
    var item4 = ClothesInfo(name: "SELEZIONI ESOTICHE", image: "Image4", price: "100.00 £", brand: "vnmns1926", dimage: "dImage4", design: 4)
    var item5 = ClothesInfo(name: "QUARTIERI SPAGNOLI", image: "Image5", price: "90.00 £", brand: "vnmns1926", dimage: "dImage5", design: 5)
    var item6 = ClothesInfo(name: "MERGELLINA", image: "Image6", price: "60.00 £", brand: "vnmns1926", dimage: "dImage6", design: 6)
    var item7 = ClothesInfo(name: "FORCELLA", image: "Image7", price: "80.00 £", brand: "vnmns1926", dimage: "dImage7", design: 7)
    var item8 = ClothesInfo(name: "SECONDIGLIANO", image: "Image8", price: "90.00 £", brand: "vnmns1926", dimage: "dImage8", design: 8)
    var item9 = ClothesInfo(name: "PARTHENOPE", image: "Image9", price: "90.00 £", brand: "vnmns1926", dimage: "dImage9", design: 9)
    var item10 = ClothesInfo(name: "MARECHIARO", image: "Image10", price: "90.00 £", brand: "vnmns1926", dimage: "dImage10", design: 10)
    var item11 = ClothesInfo(name: "RIONE SANITA'", image: "Image11", price: "90.00 £", brand: "vnmns1926", dimage: "dImage11", design: 11)
    init() {
        self.Items = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11]
    }
}
