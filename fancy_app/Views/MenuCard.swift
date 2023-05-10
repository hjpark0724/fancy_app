//
//  MenuCard.swift
//  fancy_app
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI

struct MenuCard: View {
    let menu: MenuModel
    var body: some View {
        VStack {
            Image(menu.image).resizable()
                .aspectRatio(contentMode: .fit)
                
            Text(menu.name)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(width: 80, height: 100)
        .padding(8)
        .background(
            .linearGradient(colors: menu.colors, startPoint: .leading, endPoint: .trailing)
        )
        .cornerRadius(20, corners: [.topLeft, .bottomLeft, .bottomRight])
        .overlay {
            Rectangle()
                .stroke(.white, lineWidth: 1)
                .cornerRadius(20, corners: [.topLeft, .bottomLeft, .bottomRight])
                
        }
        .shadow(color: .gray.opacity(0.7), radius: 8, x: -8, y: 8)
    }
}

struct MenuCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCard(menu: MenuModel(name: "Smoothie", image: "smoothie", colors: [Color(#colorLiteral(red: 0.9254901961, green: 0.8392156863, blue: 0.8470588235, alpha: 1)),Color(#colorLiteral(red: 0.9764705882, green: 0.8862745098, blue: 0.8235294118, alpha: 1))]))
    }
}
