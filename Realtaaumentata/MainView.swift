//
//  MainView.swift
//  Realtaaumentata
//
//  Created by Elio Fortunato on 10/12/21.
//

import SwiftUI
import RealityKit
    


struct MainView: View {
    @StateObject var clothesList = Clothes()
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
        ]

    
    var body: some View {
        NavigationView{
            
            ScrollView{
        LazyVGrid(columns: layout, content:{
            ForEach(clothesList.Items) { maglia in
                NavigationLink(destination: ShopView(maglia: maglia)){
                    ZStack{
                    Rectangle()
                            .foregroundColor(Color(#colorLiteral(red: 0.95, green: 0.95, blue: 0.95, alpha: 0.7)))
                            .frame(width: 208, height: 400)
                        VStack(alignment: .leading){
                    Image(maglia.image)
                                .resizable()
                                .frame(width: 180.0, height: 230.0, alignment: .top)
                                .padding(.all)
                            Text(maglia.price)
                                .font(.headline)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .frame(width: 90, height: 30)
                                .background(.white)
                                .padding(.leading)
                            Text(maglia.name)
                                .font(.body)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .padding(.leading)
                                .padding(.trailing)
                            
                            Text(maglia.brand)
                                .font(.callout)
                                .fontWeight(.thin)
                                .foregroundColor(.black)
                                .frame(width: 200, alignment:.leading)
                                .padding(.leading)
                                    }
                    } .padding(.vertical, -3.0)
                            }
                        }
                    })
                } .navigationBarItems(
                    leading:
                        Image("logo").scaleEffect(0.2)
                        .padding(.top)
                )
            }
        }
    }


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
