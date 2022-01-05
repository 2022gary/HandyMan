//
//  OrderPage.swift
//  HandyMan
//
//  Created by Gary Weng on 12/16/21.
//

import SwiftUI

struct OrderPage: View {
    var body: some View {
        VStack {
            List(0 ..< 3) { item in
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                       
                        HStack {
                            Text("订单号: ")
                               
                            Text("000000001")
                               
                        }
                        HStack {
                            Text("上门时间: ")
                                .foregroundColor(.gray)
                            Text("1/1/2020")
                                .foregroundColor(.gray)
                        }
                       
                    }
                    Spacer()
                    HStack {
                        Text("状态: ")
                            .fontWeight(.bold)
                        Text("待确认")
                            .foregroundColor(.red)
                    }
                    
                }
               
            }.listStyle(.plain)
        }
     
    }
}

struct OrderPage_Previews: PreviewProvider {
    static var previews: some View {
        OrderPage()
    }
}
