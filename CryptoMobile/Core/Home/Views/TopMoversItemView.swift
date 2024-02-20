//
//  TopMoversItemView.swift
//  CryptoMobile
//
//  Created by User on 21/02/24.
//

import Foundation
import SwiftUI

struct TopMoversItemView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            //MARK: IMAGE
            
            Image(systemName:"bitcoinsign.circle.fill")
                .resizable().frame(width: 32, height: 32).foregroundColor(.orange).padding(.bottom, 8)
            
            //MARK: COIN INFO
            
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption).fontWeight(.bold)
                Text("$20")
                    .font(.caption).foregroundColor(.gray)
            }
            
            //MARK: COIN PRESENT
            
            Text("+ 5.50%")
                .font(.title2).foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(RoundedRectangle (cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 3)
        )
    }
}

#Preview {
    TopMoversItemView()
}
