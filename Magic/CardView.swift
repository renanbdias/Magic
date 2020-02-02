//
//  CardView.swift
//  Magic
//
//  Created by Renan Benatti Dias on 03/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @ObservedObject var player: Player
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(player.magicColor.color)
            
            VStack {
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 42, height: 2)
                    .cornerRadius(50)
                    .padding(.top, 4)
                
                Spacer()
            
                HStack {
                    Spacer()
                    
                    Button(action: didTapDown) {
                        Text("-")
                            .foregroundColor(.white)
                            .font(.system(size: 54))
                    }
                    
                    Spacer()
                    
                    Text("\(player.life)")
                        .foregroundColor(.white)
                        .font(.system(size: 112))
                        .bold()
                    
                    Spacer()
                    
                    Button(action: didTapUp) {
                        Text("+")
                            .foregroundColor(.white)
                            .font(.system(size: 54))
                    }
                    
                    Spacer()
                }
                .padding()
                
                Spacer()
            }
        }
    }
    
    private func didTapUp() {
        player.life += 1
    }
    
    private func didTapDown() {
        player.life -= 1
    }
}

struct CardView_Previews: PreviewProvider {

    static var previews: some View {
        CardView(player: Player(color: .green))
            .previewLayout(.fixed(width: 414, height: 414))
    }
}
