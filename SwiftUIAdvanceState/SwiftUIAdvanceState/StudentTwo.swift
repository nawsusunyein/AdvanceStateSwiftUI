//
//  StudentTwo.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct StudentTwo: View {
    
    @EnvironmentObject var studentSetting : StudentSetting
    
    var body: some View {
        VStack{
            Button(action:{
                self.studentSetting.studentTwoScore += 1
            }){
                Text("Tap to increase mark for student 2")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            
            Text("Student two score is \(self.studentSetting.studentTwoScore)")
        }
    }
}

struct StudentTwo_Previews: PreviewProvider {
    static var previews: some View {
        StudentTwo()
    }
}
