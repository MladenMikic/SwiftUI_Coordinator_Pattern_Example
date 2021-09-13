//
//  InfoCoordinatorView.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import SwiftUI

struct InfoCoordinatorView: View {
    
    @ObservedObject var coordinator: InfoCoordinator
    
    var body: some View {
        ZStack {
            Color.green.zIndex(0)
            VStack {
                Text("Info Screen").foregroundColor(Color.white)

                Button {
                    withAnimation
                    {
                        self.coordinator.next()
                    }
                } label: {
                    Text("Next")
                }
            }.zIndex(1)
        }
    }
}
