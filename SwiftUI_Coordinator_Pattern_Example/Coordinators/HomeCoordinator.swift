//
//  HomeCoordinator.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import Foundation

class HomeCoordinator: ObservableObject, Identifiable {
    
    private unowned let parent: AppCoordinator
    let id: Feature = .home
    
    init(parent: AppCoordinator) {
        self.parent = parent
    }
    
    func next() {
        self.parent.next()
    }
    
    func present(_ feature: Feature) {
        self.parent.present(feature)
    }
}
