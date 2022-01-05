//
//  ChatingListPage.swift
//  HandyMan
//
//  Created by Gary Weng on 1/2/22.
//

import SwiftUI

struct ChatingListPage: View {

var body: some View {
    List(0..<3) { item in
        NavigationLink(destination: MessagePage()) {
            HStack {
                Text("订单号: ")
                Text("00000001")
                Spacer()
                Text("咨询")
                    .foregroundColor(.blue)
                }
            }
        }
    .listStyle(.plain)
    }
}


struct ChatingListPage_Previews: PreviewProvider {
    static var previews: some View {
    
            ChatingListPage()

            
           
        
       
    }
}
