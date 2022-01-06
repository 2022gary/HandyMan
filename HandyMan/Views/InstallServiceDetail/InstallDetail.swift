//
//  InstallDetail.swift
//  HandyMan
//
//  Created by Gary Weng on 1/5/22.
//

import SwiftUI

struct InstallDetail: View {
    let detail: String
    var body: some View {
        if(detail == "lightingInstall") {
            LightingInstallView()
        } else if(detail == "doorLockInstall") {
            DoorLockInstallView()
        } else if(detail == "wallInstall") {
            WallInstallView()
        } else if(detail == "floorInstall") {
            FloorInstallView()
        } else if(detail == "furnitureInstall") {
            FurnitureInstallView()
        } else {
            OtherInstallView()
        }
    }
  
}

