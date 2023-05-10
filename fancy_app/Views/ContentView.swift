//
//  ContentView.swift
//  fancy_app
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                VStack {
                    HStack {
                        Text("Treat and Fun")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("OneTwoThree")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        ButtonView()
                    }
                    .padding(.top, 32)
                    .padding(.horizontal,8)
                    MenuCardList()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 500)
                .padding(.horizontal, 8)
                .background(
                    .linearGradient(colors:
                                    [
                                        Color(#colorLiteral(red: 0.8352941176, green: 0.4588235294, blue: 0.537254902, alpha: 1)),
                                        Color(#colorLiteral(red: 1, green: 0.7803921569, blue: 0.6392156863, alpha: 1))
                                    ], startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .stroke(.white.opacity(0.7), lineWidth: 1)
                        .blendMode(.overlay)
                )
                .shadow(color: .gray.opacity(0.7), radius: 16, x: -18, y: 16)
                .offset(y: 120)
                
                Image("header").resizable()
                    .aspectRatio(contentMode: .fit)

            }
            Spacer()
            
        }
        .padding()
        .background(
            Color("BackgroundColor")
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("YES")
                .font(.headline)
                .accentColor(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(height: 48)
                .background(
                    .linearGradient(colors: [Color(#colorLiteral(red: 0.9176470588, green: 0.3450980392, blue: 0.3725490196, alpha: 1)), Color(#colorLiteral(red: 0.9764705882, green: 0.4196078431, blue: 0.4823529412, alpha: 1)) ], startPoint: .top, endPoint: .bottom)
                )
                .clipShape(
                    RoundedRectangle(cornerRadius: 20, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(.white, lineWidth: 1)
                        .blendMode(.overlay)
                )
            
            
        }
    }
}
