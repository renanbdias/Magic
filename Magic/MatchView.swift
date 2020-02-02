//
//  MatchView.swift
//  Magic
//
//  Created by Renan Benatti Dias on 03/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

enum MagicColors {
    
    case white
    case blue
    case black
    case red
    case green
    
    var color: Color {
        switch self {
        case .white:
            return .yellow
        case .blue:
            return .blue
        case .black:
            return .black
        case .red:
            return .red
        case .green:
            return .green
        }
    }
}

final class Player: ObservableObject {
    
    @Published var magicColor: MagicColors
    @Published var life: Int = 20
//    var name: String
    
    init(color: MagicColors) {
        self.magicColor = color
    }
}

struct MatchView: View {
    
    @State var firstPlayer: Player
    @State var secondPlayer: Player
    
    @State var isOpen = false
    
    var body: some View {
        ZStack {
            OptionButtonsView()
            
            VStack {
                CardView(player: firstPlayer)
                    .rotationEffect(Angle(degrees: 180))
                    .offset(y: isOpen ? -42 : 0)
                    .onTapGesture { self.isOpen.toggle() }
                    .animation(.interpolatingSpring(stiffness: 500, damping: 50))
                
                CardView(player: secondPlayer)
                    .offset(y: isOpen ? 42 : 0)
                    .onTapGesture { self.isOpen.toggle() }
                    .animation(.interpolatingSpring(stiffness: 500, damping: 50))
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func reloadLife() {
        firstPlayer.life = 20
        secondPlayer.life = 20
    }
    
    private func randomDice() {
        
    }
    
    private func cycleThroughLife() {
        
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView(firstPlayer: Player(color: .blue), secondPlayer: Player(color: .green))
    }
}
