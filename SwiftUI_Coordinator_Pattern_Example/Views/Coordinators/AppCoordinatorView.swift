//
//  ContentView.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import SwiftUI



struct AppCoordinatorView: View {

    // MARK: Stored Properties
    @ObservedObject var coordinator: AppCoordinator
    private let transitionFromEdge: Edge = .leading
    
    var body: some View {
        NavigationView {
            VStack {
                switch self.coordinator.selectedFeature {
                case .onboarding:
                    OnBoardingCoordinatorView(coordinator: self.coordinator.onboardingCoordinator)
                        .transition(AnyTransition.opacity.combined(with: .move(edge: transitionFromEdge)))
                case .specificDownloadContent:
                    SpecificContentDownloadCoordinatorView(coordinator: self.coordinator.specificContentDownloadCoordinator)
                        .transition(AnyTransition.opacity.combined(with: .move(edge: transitionFromEdge)))
                case .home:
                    HomeCoordinatorView(coordinator: self.coordinator.homeCoordinator)
                        .transition(AnyTransition.opacity.combined(with: .move(edge: transitionFromEdge)))
                case .info:
                    InfoCoordinatorView(coordinator: self.coordinator.infoCoordinator)
                        .transition(AnyTransition.opacity.combined(with: .move(edge: transitionFromEdge)))
                case .settings:
                    SettingsView().transition(AnyTransition.opacity.combined(with: .move(edge: transitionFromEdge)))
                }
            }
            .sheet(item: $coordinator.presentedStandaloneFeature) { item in
                switch item {
                case .settings:
                    SettingsView()
                case .info:
                    InfoView()
                default:
                    Text("")
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    
}




