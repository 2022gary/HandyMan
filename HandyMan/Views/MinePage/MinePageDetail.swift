//
//  MinePageDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct MinePageDetail: View {
    let detail: String
    let name: String
    var body: some View {
        if(detail == "myInfo") {
            MyInfoView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "histOrder") {
            HistOrderView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "paymentInfo") {
            PaymentInfoView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "rating") {
            RatingView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "serviceTerms") {
            ServiceTermsView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "policies") {
            PoliciesView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "contact") {
            ContactView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        }
    }
}


