//
//  StudentSetting.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import Foundation

class StudentSetting : ObservableObject{
    @Published var studentOneScore = 0
    @Published var studentTwoScore = 0
    
    var total : Int{
        return studentOneScore + studentTwoScore
    }
}
