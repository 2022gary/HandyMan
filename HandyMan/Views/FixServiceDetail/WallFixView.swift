//
//  WallFixView.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct WallFixView: View {
    let progress = ProgressData()
    @State private var textCount = 0.0;
    @State private var zipcode: String = ""
    var body: some View {
        ScrollView {
            ProgressView ("", value: textCount , total: 100)
            
            Text("你所需要服务的邮编")
            TextField("需要服务的邮编号码", text: $zipcode)
            HStack {
                NavigationLink(destination: Text("123")) {
                    Button("下一页") {
                        if(textCount<100) {
                            textCount += 10
                            progress.count = textCount
                            print(progress.count)
                        }
                    }
                }
               
                Button("上一页") {
                    if(textCount<100) {
                        textCount -= 10
                        progress.count = textCount
                        print(progress.count)
                    }
                }
            }
        }
    }
}

struct WallFixView_Previews: PreviewProvider {
    static var previews: some View {
        WallFixView()
    }
}
