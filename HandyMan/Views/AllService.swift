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
                    NavigationLink(destination: FixDetail(detail: model.destination, name: model.title)){
                        VStack {
                            Image(model.serviceImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            Text(model.title)
                                .lineLimit(1)
                                .fixedSize()
                                .font(.system(size: 14, weight: .semibold))
                        }
                    }
                }
                
                ForEach(installationImageText, id: \.self) {model in
                    NavigationLink(destination: InstallDetail(detail: model.destination, name: model.title)) {
                        VStack {
                            Image(model.serviceImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            Text(model.title)
                                .lineLimit(1)
                                .fixedSize()
                                .font(.system(size: 14, weight: .semibold))
                        }
                    }
                }
                
                ForEach(refreshImageText, id: \.self) {model in
                    NavigationLink(destination: FreshDetail(detail: model.destination, name: model.title)) {
                        VStack {
                            Image(model.serviceImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
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
}

struct AllService_Previews: PreviewProvider {
    static var previews: some View {
        AllService()
    }
}
