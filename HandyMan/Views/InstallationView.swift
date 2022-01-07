//
//  InstallationView.swift
//  HandyMan
//
//  Created by Gary Weng on 12/21/21.
//

import SwiftUI

struct InstallationView: View {
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing:10), count: 3), spacing: 20) {
        
            ForEach(installationImageText, id: \.self) {model in
                NavigationLink(destination: InstallDetail(detail: model.destination)) {
                    VStack {
                        Image(model.serviceImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 80)
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

struct InstallationView_Previews: PreviewProvider {
    static var previews: some View {
        InstallationView()
    }
}
