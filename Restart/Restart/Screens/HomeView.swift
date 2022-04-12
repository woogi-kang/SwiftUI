//
//  HomeView.swift
//  Restart
//
//  Created by Hunet on 2022/04/12.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnbardingViewActive: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnbardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
