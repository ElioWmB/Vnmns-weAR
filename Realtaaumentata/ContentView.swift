//
//  ContentView.swift
//  Realtaaumentata
//
//  Created by Elio Fortunato on 07/12/21.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @State var maglia : ClothesInfo
    @State private var showingSheet = false
    var body: some View {
        return
       
        ZStack {
        ARViewContainer(maglia: maglia).edgesIgnoringSafeArea(.all)
            
            ZStack{
            Rectangle()
                .frame(width: 500, height: 250, alignment: .top)
                .foregroundColor(.white)
                .position(x: 207, y: 630)
                
                VStack{
                    
                    Text(maglia.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                
                HStack{
                    
                    Text(maglia.price)
                     
                    Text(maglia.brand)
                    .fontWeight(.thin)
                    
                     }
                   
                    Text("Try it in real life")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 70)
                    .background(.black)
                    .onTapGesture {
                                    showingSheet.toggle()
                                }
                    .sheet(isPresented: $showingSheet) {
                                    SheetView(maglia: maglia)

                    
                    }
            } .position(x: 207.5, y: 630)
                
            }
        }
    
}
struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State var maglia : ClothesInfo
    var body: some View {
        
        VStack{
        Button("Try it in AR")  {
            dismiss()}
        .frame(width: 200, height: 20)
        .foregroundColor(.white)
        .font(.body)
        .padding()
        .background(Color.black)
        
        Text(maglia.name)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.black)
            .multilineTextAlignment(.leading)
        
        HStack{
            
            Text(maglia.price)
             
            Text(maglia.brand)
            
                }
            }
        }
    }
}
struct ARViewContainer: UIViewRepresentable {
    @State var maglia : ClothesInfo
    func makeUIView(context: Context) -> ARView {
        let Design = maglia.design
        let arView = ARView(frame: .zero)
        // Load the "Box" scene from the "Experience" Reality File
        switch Design {
        case 1:
            let boxAnchor = try! Experience.loadBox()
            arView.scene.anchors.append(boxAnchor)
        case 2:
            let boxAnchor = try! Experience.loadBox2()
            arView.scene.anchors.append(boxAnchor)
        case 3:
            let boxAnchor = try! Experience.loadBox3()
            arView.scene.anchors.append(boxAnchor)
        case 4:
            let boxAnchor = try! Experience.loadBox4()
            arView.scene.anchors.append(boxAnchor)
        case 5:
            let boxAnchor = try! Experience.loadBox5()
            arView.scene.anchors.append(boxAnchor)
        case 6:
            let boxAnchor = try! Experience.loadBox6()
            arView.scene.anchors.append(boxAnchor)
        case 7:
            let boxAnchor = try! Experience.loadBox7()
            arView.scene.anchors.append(boxAnchor)
        case 8:
            let boxAnchor = try! Experience.loadBox8()
            arView.scene.anchors.append(boxAnchor)
        case 9:
            let boxAnchor = try! Experience.loadBox9()
            arView.scene.anchors.append(boxAnchor)
        case 10:
            let boxAnchor = try! Experience.loadBox10()
            arView.scene.anchors.append(boxAnchor)
        case 11:
            let boxAnchor = try! Experience.loadBox11()
            arView.scene.anchors.append(boxAnchor)
        default:
            print("0")
        }
        
//        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
//        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//#endif
