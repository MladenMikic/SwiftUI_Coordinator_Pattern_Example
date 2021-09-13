//
//  SpecificContentDownloadCoordinatorView.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import SwiftUI

struct SpecificContentDownloadCoordinatorView: View {
    
    @ObservedObject var coordinator: SpecificContentDownloadCoordinator
    
    var body: some View {
        ZStack {
            Color.gray.zIndex(0)
            VStack {
                Text("Downloading Screen").foregroundColor(Color.white)

                Button {
                    withAnimation
                    {
                        self.coordinator.next()
                    }
                } label: {
                    Text("Next")
                }
            }.zIndex(1.0)
        }
        
    }
}
