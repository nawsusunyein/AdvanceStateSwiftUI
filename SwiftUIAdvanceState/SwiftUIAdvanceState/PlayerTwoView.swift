//
//  PlayerTwoView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct PlayerTwoView: View {
    @ObservedObject var playerSetting = PlayerSetting()
    var body: some View {
        VStack{
            Button(action:{
                self.playerSetting.playerTwoScore += 1
            }){
                Text("Tap to increase for player 2")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            Text("Current player 2 score is \(self.playerSetting.playerTwoScore)")
            Text("Total tapped score is \(playerSetting.total)")
        }
    }
}

struct PlayerTwoView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTwoView()
    }
}
