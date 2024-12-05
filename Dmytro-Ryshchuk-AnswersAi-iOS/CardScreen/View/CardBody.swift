//
//  CardBody.swift
//  Dmytro-Ryshchuk-AnswersAi-iOS
//
//  Created by Dmytro Ryshchuk on 12/4/24.
//

import SwiftUI

struct CardBody: View {
    let item: CardItem

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 32, height: 400)
                .clipped()
                        
            LinearGradient(
                gradient: Gradient(colors: [Color.black.opacity(1), Color.black.opacity(0.6)]),
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: 60)
            
            VStack(alignment: .leading, spacing: 8) {
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.placeholder.uppercased())
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.7))
                    
                    Text(item.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .lineLimit(2)
                    
                    Text(item.subtitle)
                        .font(.caption2)
                        .foregroundColor(.white.opacity(0.8))
                        .lineLimit(2)
                }
                .padding([.horizontal], 16)
                
                BottomBanner(banner: item.banner)
            }
        }
        .cornerRadius(12)
    }
}