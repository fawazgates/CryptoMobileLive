//
//  CoinRowView.swift
//  CryptoMobile
//
//  Created by User on 21/02/24.
//

import Foundation
import SwiftUI

struct CoinRowView: View {  
    let coin: Coin
    
    var body: some View {
        HStack {
            
            //MARK: MARKET CAP RANK
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            //MARK: IMAGE
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable().scaledToFit().frame(width: 32, height: 32).foregroundColor(.orange)
            
            //MARK: COIN NAME INFO
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name).font(.subheadline).fontWeight(.semibold).padding(.leading, 4)
                
                Text(coin.name.uppercased()).font(.caption).padding(.leading, 4)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            //MARK: COIN PRICE INFO
            
            VStack(alignment: .leading, spacing: 4) {
                Text("\(coin.currentPrice)").font(.subheadline).fontWeight(.semibold).padding(.leading, 4)
                
                Text("\(coin.priceChangePercentage24H)").font(.caption).padding(.leading, 4)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal).padding(.vertical, 4)
    }
}

// #Preview {
//    CoinRowView()
// }
