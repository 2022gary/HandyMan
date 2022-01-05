//
//  CustomTabbarView.swift
//  HandyMan
//
//  Created by Gary Weng on 12/16/21.
//

import SwiftUI

enum CustomTabbar : String, CaseIterable {
    case home = "首页"
    case order = "订单"
    case message = "信息"
    case mine = "我的"
    
    var iconName: String {
        switch self {
        case .home:
            return "tabbar_home"
        case .order:
            return "tabbar_order"
        case .message:
            return "tabbar_message"
        case .mine:
            return "tabbar_mine"
        }
    }
    
    var norIconName: String {
        return iconName + "_nor"
    }
    var selIconName: String {
        return iconName + "_sel"
    }
}
struct CustomTabbarView: View {
    
    var safeEdgeInsets: EdgeInsets
    @Binding var currTab: CustomTabbar
    var body: some View {
        HStack(spacing: 0) {
            ForEach(CustomTabbar.allCases, id: \.rawValue) {item in
                
                Button {
                    currTab = item
                } label: {
                    VStack {
                        Image(currTab == item ? item.selIconName : item.norIconName)
                        Text(item.rawValue)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(Color.black.opacity(currTab == item ? 0.7 : 0.3))
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        
        .padding(.bottom, safeEdgeInsets.bottom)
    }
}

