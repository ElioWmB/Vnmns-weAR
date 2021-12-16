//
//  ShopView.swift
//  Realtaaumentata
//
//  Created by Elio Fortunato on 09/12/21.
//

import Foundation
import SwiftUI
import ModelIO

var rows: [GridItem] =
        Array(repeating: .init(.fixed(20)), count: 2)

struct ShopView : View {
    @State var maglia : ClothesInfo

    var body: some View {
        
        VStack{
            ScrollView{
        Image(maglia.dimage)
            .resizable()
            .scaledToFit()
            .padding(.horizontal)
            .frame(width: 400, height: 400, alignment: .center)
        Image(maglia.image)
            .resizable()
            .scaledToFit()
                }
            
            ZStack{
            Rectangle()
                .frame(width: 440, height: 200, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1.0)))
                
                VStack{
                    
                    Text(maglia.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                
                HStack{
                    
                Text(maglia.price)
                        .foregroundColor(.black)
                
                    Text(maglia.brand)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                        
                    
                     }
                    NavigationLink(destination: ContentView(maglia: maglia)){
                    Text("Try it in AR")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 60)
                    .background(.black)
                    
                        
                    
                    }
                }
                
            }
        }
        
    }
}


    






