//
//  OptionButtonsView.swift
//  Magic
//
//  Created by Renan Benatti Dias on 03/09/19.
//  Copyright © 2019 Renan Benatti Dias. All rights reserved.
//

import SwiftUI

struct OptionButtonsView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Group {
                Button(action: { print("Reload all") }) {
                    Image(systemName: "arrow.counterclockwise.icloud")
                        .resizable()
                }
                .frame(width: 42, height: 42)
                
                Button(action: { print("Random number") }) {
                    Image(systemName: "gamecontroller")
                        .resizable()
                }
                .frame(width: 42, height: 42)
                
                Button(action: { print("Total life") }) {
                    Image(systemName: "message")
                        .resizable()
                }
                .frame(width: 42, height: 42)
            }
            .foregroundColor(.black)
            .padding()
            
            Spacer()
        }
        .frame(height: 84)
        .background(Color.gray)
    }
}

struct OptionButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionButtonsView()
            .previewLayout(.fixed(width: 414, height: 84))
    }
}
