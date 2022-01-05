//
//  RefreshNew.swift
//  HandyMan
//
//  Created by Gary Weng on 12/21/21.
//

import SwiftUI

struct RefreshNew: View {
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing:10), count: 3), spacing: 20) {
        
            ForEach(refreshImageText, id: \.self) {model in
                VStack {
                    Image(model.serviceImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text(model.title)
                        .lineLimit(1)
                        .fixedSize()
                        .font(.system(size: 14, weight: .semibold))
                }
            }
        }
    }
}

struct RefreshNew_Previews: PreviewProvider {
    static var previews: some View {
        RefreshNew()
    }
}
