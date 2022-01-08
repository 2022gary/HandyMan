//
//  InstallDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct InstallDetail: View {
    let detail: String
    let name: String
    var body: some View {
        if(detail == "lightingInstall") {
            LightInstallView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "doorLockInstall") {
            DoorLockInstallView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "wallInstall") {
            WallInstallView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "floorInstall") {
            FloorInstallView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else if(detail == "furnitureInstall") {
            FurnitureInstallView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        } else {
            OtherInstallView()
                .navigationBarTitle(Text(name), displayMode: .inline)
        }
    }
  
}

