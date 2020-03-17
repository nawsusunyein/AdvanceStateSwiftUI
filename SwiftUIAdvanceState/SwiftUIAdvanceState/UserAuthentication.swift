//
//  UserAuthentication.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import Combine
import SwiftUI

class UserAuthentication : ObservableObject{
    
    let objectWillChange = ObservableObjectPublisher()
    var username = ""{
        willSet{
            objectWillChange.send()
        }
    }
}
