//
//  PlayerSetting.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import Foundation

class PlayerSetting : ObservableObject{
    @Published var playerOneScore = 0
    @Published var playerTwoScore = 0
    
    var total : Int{
        if playerOneScore > 0{
            return playerOneScore + 10
        }else if playerTwoScore > 0{
            return playerTwoScore + 10
        }
        return 0
    }
}
