//
//  Feature.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import Foundation


enum Feature: String, Identifiable {
    
    case onboarding
    case specificDownloadContent
    case info
    case home
    case settings
    
    var id: String { self.rawValue }
}
