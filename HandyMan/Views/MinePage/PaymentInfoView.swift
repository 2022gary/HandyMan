//
//  PaymentInfoView.swift
//  HandyMan
//
//  Created by Bowei Li on 1/10/22.
//

import SwiftUI

struct PaymentInfoView: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Manage Payment")
                    .padding(.leading)
                Spacer()
            }
            
            
            List(0 ..< 2){ card in
                
                HStack {
                    Image(systemName: "creditcard")
                    Text("x4564")
                    Spacer()
                    Image(systemName: "pencil")
                }
                .font(.title)
            }
            .frame(height: 250)
            
            
            
            Button(action: {}) {
                
                HStack(spacing: 20) {
                    Image(systemName: "plus.circle")
                    //                    Spacer()
                    Text("Add Payment")
                        .fontWeight(.bold)
                }
                .foregroundColor(.white)
                .font(.system(size: 25))
                .padding()
                .padding(.horizontal, 50)
                .background(Color.red)
                .clipShape(Capsule())
                .shadow(radius: 10, y: 5)
            }
            
        }
    }
}

struct PaymentInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentInfoView()
    }
}
