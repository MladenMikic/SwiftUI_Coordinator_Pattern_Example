//
//  AppCoordinator.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import Foundation
import Combine
import SwiftUI


// NOTE: Each childCoordinator might have additional coordinators or presentationSequences.
class AppCoordinator: ObservableObject {
    
    // MARK: Stored Properties
    
    // NOTE: Add a onboarding presentation sequence if the onboarding needs: login, privacy etc.
    @Published var onboardingCoordinator: OnBoardingCoordinator!
    @Published var specificContentDownloadCoordinator: SpecificContentDownloadCoordinator!
    @Published var infoCoordinator: InfoCoordinator!
    
    @Published var homeCoordinator: HomeCoordinator!

    @Published var selectedFeature: Feature
    @Published var presentedStandaloneFeature: Feature?
    
    // NOTE: Change the arrangement of the features to change order of appearance.
    private var presentationSequence: [Feature] = [.onboarding, .specificDownloadContent, .info, .home]
    
    // MARK: Initialization
    // IMPORTANT: Provide all dependencies through a struct in order to leave the init method signature small.
    init() {
        self.selectedFeature = presentationSequence.first!
        self.onboardingCoordinator = .init(parent: self)
        self.specificContentDownloadCoordinator = .init(parent: self)
        self.infoCoordinator = .init(parent: self)
        self.homeCoordinator = .init(parent: self)
    }
    
    /// Present the next feature from the presentation sequence.
    func next() {
        if  let firstIndex = presentationSequence.firstIndex(where: {$0 == self.selectedFeature}) {
            var index: Int = presentationSequence.distance(from: presentationSequence.startIndex, to: firstIndex)
            index += 1
            
            if presentationSequence.indices.contains(index) {
                selectedFeature = presentationSequence[index]
            } else {
                selectedFeature = presentationSequence.last!
            }
        }
        
    }
    
    func present(_ feature: Feature) {
        self.presentedStandaloneFeature = feature
    }
    
    func close() {
        self.presentedStandaloneFeature = .none
    }
}

