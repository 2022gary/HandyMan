//
//  AllService.swift
//  HandyMan
//
//  Created by Gary Weng on 12/25/21.
//

import SwiftUI

struct AllService: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing:10), count: 3), spacing: 20) {
            
                ForEach(fixImageText, id: \.self) {model in
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
                
                ForEach(installationImageText, id: \.self) {model in
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
}

struct AllService_Previews: PreviewProvider {
    static var previews: some View {
        AllService()
    }
}
