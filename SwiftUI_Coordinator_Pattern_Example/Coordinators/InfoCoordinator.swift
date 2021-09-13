//
//  InfoCoordinator.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import Foundation


class InfoCoordinator: ObservableObject, Identifiable {
    
    private unowned let parent: AppCoordinator
    let id: Feature = .info
    
    init(parent: AppCoordinator) {
        self.parent = parent
    }
    
    func next() {
        self.parent.next()
    }
}
