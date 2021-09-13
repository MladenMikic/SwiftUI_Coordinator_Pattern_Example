//
//  HomeCoordinatorView.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import SwiftUI

struct HomeCoordinatorView: View {
    
    @ObservedObject var coordinator: HomeCoordinator
    
    var body: some View {
        VStack {
            Text("Home Screen")
            HStack {
                Spacer()
                Button {
                    withAnimation
                    {
                        self.coordinator.present(.settings)
                    }
                } label: {
                    Text("Settings")
                }
                Spacer()
                Button {
                    withAnimation
                    {
                        self.coordinator.present(.info)
                    }
                } label: {
                    Text("Info")
                }
                Spacer()
            }
            
        }
        
    }
}
