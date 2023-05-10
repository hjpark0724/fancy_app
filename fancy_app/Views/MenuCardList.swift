//
//  MenuCardList.swift
//  fancy_app
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI

struct MenuCardList : View {
    let menus = [
        MenuModel(name: "Smoothie", image: "smoothie", colors: [Color(#colorLiteral(red: 0.9254901961, green: 0.8392156863, blue: 0.8470588235, alpha: 1)),Color(#colorLiteral(red: 0.9764705882, green: 0.8862745098, blue: 0.8235294118, alpha: 1))]),
        //linear-gradient(90deg, #bf92f1 0%, #e4b3fa 100%)
        MenuModel(name: "Grapefruit", image: "grapefruit", colors: [Color(#colorLiteral(red: 0.7490196078, green: 0.5725490196, blue: 0.9450980392, alpha: 1)),Color(#colorLiteral(red: 0.8941176471, green: 0.7019607843, blue: 0.9803921569, alpha: 1))]),
        //linear-gradient(90deg, #69e7b7 0%, #9fffd6 100%)
        MenuModel(name: "Desert", image: "desert", colors: [Color(#colorLiteral(red: 0.4117647059, green: 0.9058823529, blue: 0.7176470588, alpha: 1)),Color(#colorLiteral(red: 0.6235294118, green: 1, blue: 0.8392156863, alpha: 1))]),
        //linear-gradient(90deg, #febea7 0%, #fdf5d2 100%)
        MenuModel(name: "Strawberry", image: "strawberry", colors: [Color(#colorLiteral(red: 0.9960784314, green: 0.7450980392, blue: 0.6549019608, alpha: 1)),Color(#colorLiteral(red: 0.9921568627, green: 0.9607843137, blue: 0.8235294118, alpha: 1))]),
        //linear-gradient(90deg, #fd556b 0%, #ff8e80 100%)
        MenuModel(name: "Blueberry", image: "blueberry", colors: [Color(#colorLiteral(red: 0.9921568627, green: 0.3333333333, blue: 0.4196078431, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.5568627451, blue: 0.5019607843, alpha: 1))]),
        //linear-gradient(90deg, #f89e27 0%, #ffd054 100%)
        MenuModel(name: "Icecream", image: "icecream", colors: [Color(#colorLiteral(red: 0.9725490196, green: 0.6196078431, blue: 0.1529411765, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.8156862745, blue: 0.3294117647, alpha: 1))]),
        MenuModel(name: "Peanut", image: "peanut", colors: [Color(#colorLiteral(red: 0.7490196078, green: 0.5725490196, blue: 0.9450980392, alpha: 1)),Color(#colorLiteral(red: 0.8941176471, green: 0.7019607843, blue: 0.9803921569, alpha: 1))]),
        //linear-gradient(90deg, #febea7 0%, #fdf5d2 100%)
        MenuModel(name: "MysteryFruit", image: "mysteryfruit", colors: [Color(#colorLiteral(red: 0.9960784314, green: 0.7450980392, blue: 0.6549019608, alpha: 1)),Color(#colorLiteral(red: 0.9921568627, green: 0.9607843137, blue: 0.8235294118, alpha: 1))]),
        
    ]
    var body: some View {
        
        //LazyVGrid를 이용해서 메뉴판 구성
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 4)], spacing: 16)  {
            ForEach(menus, id: \.id) { menu in
                MenuCard(menu: menu)
            }
        }
    }
}

struct MenuCardList_Previews: PreviewProvider {
    static var previews: some View {
        MenuCardList()
    }
}
