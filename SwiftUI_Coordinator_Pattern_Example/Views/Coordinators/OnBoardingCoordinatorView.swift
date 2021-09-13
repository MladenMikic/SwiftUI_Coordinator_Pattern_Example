//
//  OnBoardingCoordinatorView.swift
//  SwiftUI_Coordinator_Pattern_Example
//
//  Created by Mladen Mikic on 13.09.2021.
//

import SwiftUI

struct OnBoardingCoordinatorView: View {
    
    @ObservedObject var coordinator: OnBoardingCoordinator
    
    var body: some View {
        ZStack {
            Color.black.zIndex(0)
            
            VStack {
                Text("OnBoardingCoordinatorView").foregroundColor(Color.white)

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
