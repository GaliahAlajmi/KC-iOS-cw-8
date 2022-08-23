//
//  ContentView.swift
//  myDiary
//
//  Created by GALIAH ALAJMI on 25/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
    let Colors = [Color.indigo.opacity(0.4),Color.indigo.opacity(0.4),Color.yellow.opacity(0.4),Color.pink.opacity(0.4)]
    @State var mynote = ""
    @State var selected : Color = Color.indigo
    var body: some View {
        NavigationView{
            ZStack{
                Color.red.opacity(0.4)
                    .ignoresSafeArea()
                VStack{
                    .Spacer()
                    Text("اختر اللون المفضل🎨")

                        .font(.headline)
                       
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    HStack{
                    ForEach(Colors,id:\.self){
                        Color in
                      
                        Circle ()
                            .fill(Color)
                            .frame(width: 50, height: 50)
                            .onTapGesture {
                                selected = Color
                            }
                    }.padding()
                        Text("ماذا تريد ان تكتب ")
                            .font(.system(size: 20))
                        TextField(" اكتب هنا ", text: $mynote)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                            .Spacer()
                        NavigationLink(destination: SecodView, label: second, view(myC:Color,myS:mynote)){
                            Text(" حفظ")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                
                                .frame(width: 100, height: 100)
                                .background(.green)
                        }
                                
            }
            .navigationTitle("دفتر يومياتي 📓")
    }
}
        }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
            
                
                
            
    
    
        
        
    }

    
    
    
    
    
}
