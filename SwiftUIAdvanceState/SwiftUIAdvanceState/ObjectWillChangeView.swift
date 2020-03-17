//
//  ObjectWillChangeView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ObjectWillChangeView: View {
    
    @ObservedObject var authentication = UserAuthentication()
    
    var body: some View {
        VStack{
            TextField("Enter username",text: $authentication.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Your name is \(authentication.username)")
        }
    }
}

struct ObjectWillChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectWillChangeView()
    }
}
