//
//  WallFixView.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct WallFixView: View {
    let progress = ProgressData()
    @State var textCount = 0.0;
    var body: some View {
        ScrollView {
            ProgressView ("", value: textCount , total: 100)
            Button("test") {
                if(textCount<100) {
                    textCount += 10
                    progress.count = textCount
                    print(progress.count)
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
