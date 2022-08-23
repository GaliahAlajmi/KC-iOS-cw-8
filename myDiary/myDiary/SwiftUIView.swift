//
//  SwiftUIView.swift
//  myDiary
//
//  Created by GALIAH ALAJMI on 25/01/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
    let myc: color
    let mys: String
    var body: some View {
        ZStack{
            myc.ignoreSafeArea()
            VStack{
                
            }
            
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(myc: color.blue, mys: "hi")
    }
}
