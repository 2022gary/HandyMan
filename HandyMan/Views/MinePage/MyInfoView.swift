//
//  MyInfoView.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct MyInfoView: View {
    @State private var rowCount: Int = 0;
    var body: some View {
        GeometryReader{geometry in
            VStack(alignment: .center) {
                List {
                    ForEach(0 ... 3, id: \.self) {index in
                        HStack {
                            Text("账号:")
                            Spacer()
                            Text("917-234-7685")
                            Text("修改")
                                .foregroundColor(.blue)
                        }.listRowSeparator(.hidden)
                    }
                    Text("汉迪曼提供最专业的服务")
                        .foregroundColor(.gray)
                        .font(.caption)
                        .frame(width: geometry.size.width/1.1)
                }
                .listStyle(.plain)
            }
        }
    }
}


struct MyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoView()
    }
}
