//
//  WallFixQ1.swift
//  HandyMan
//
//  Created by Gary Weng on 1/18/22.
//

import SwiftUI

struct WallFixQ1: View {
    @State var progressPercent:Double
    @State var pages: Double
    @State var title: String
    @State var changePage: Bool = false
    var body: some View {
        VStack {
            ProgressView("",value: progressPercent, total: 100)
            Spacer()
            
            Text("1. 你想要油漆什么?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                .multilineTextAlignment(.center)
            
//            List(choicesToWallFixQ1, id: \.self) { item in
//                ChoiceCell(choice: item)
//            }
            ForEach(choicesToWallFixQ1, id: \.self) { item in
                ChoiceCell(choice: item)
            }
            

            Spacer()
            Divider()
                .padding(.bottom)
            LastNextPage(progressPercent: progressPercent, pages: pages, title:title)
        }
        
    }
}


struct WallFixQ1_Preview: PreviewProvider {
    
    static var previews: some View{
        WallFixQ1(progressPercent: 50.0, pages: 1.0, title: "hessss")
    }
}


struct ChoiceCell: View {
    var choice: String
    @State var check:Bool = false;
    var body: some View {
        HStack{
            Text(choice.capitalized)
            Spacer()
            if(check) {
                Image(systemName: "checkmark.square.fill")
                    .font(.title)
                    .onTapGesture {
                        check.toggle()
                    }
            } else {
                Image(systemName: "square")
                    .font(.title)
                    .onTapGesture {
                        check.toggle()
                    }
            }
        }
        .foregroundColor(.secondary)
        .padding()
    }
}


private let choicesToWallFixQ1: [String] = [
    "concrete wall",
    "dry wall",
    "wood floor",
    "conrete floor"
]
