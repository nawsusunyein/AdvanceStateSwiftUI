//
//  PlayerOneView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct PlayerOneView: View {
    
    @ObservedObject  var playerSetting = PlayerSetting()
    var body: some View {
        VStack{
            Button(action:{
                self.playerSetting.playerOneScore += 1
            }){
                Text("Tap to increase for player one")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            Text("current playerone score is \(playerSetting.playerOneScore)")
            Text("Total tapped score is \(playerSetting.total)")
        }
        
    }
}

struct PlayerOneView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerOneView()
    }
}
