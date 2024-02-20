//
//  HomeView.swift
//  CryptoMobile
//
//  Created by User on 21/02/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                //MARK: TOP MOVERS VIEW
                TopMoversView()
                
                Divider()
                
                //MARK: ALL COINS VIEW
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
