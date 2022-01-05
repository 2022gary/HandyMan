//
//  HomeViewModel.swift
//  HandyMan
//
//  Created by Gary Weng on 12/19/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var currHomeNavTab: ServiceNavTab = .all
}
