//
//  StudentOne.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct StudentOne: View {
    @EnvironmentObject var studentSetting : StudentSetting
    
    var body: some View {
        VStack{
            Button(action:{
                self.studentSetting.studentOneScore += 1
            }){
                Text("Tap to increase mark for student one")
            }
            
            Text("Student one score is \(self.studentSetting.studentOneScore)")
        }
    }
}

struct StudentOne_Previews: PreviewProvider {
    static var previews: some View {
        StudentOne()
    }
}
