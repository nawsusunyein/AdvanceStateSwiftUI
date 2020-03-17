//
//  EnvironmentObjectShareDataView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct EnvironmentObjectShareDataView: View {
    
    @EnvironmentObject var studentSetting : StudentSetting
    var body: some View {
        List{
            Text("Total marks for all students : \(studentSetting.total)")
            NavigationLink(destination:StudentOne()){
                Text("Student One Score")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }.buttonStyle(PlainButtonStyle())
            NavigationLink(destination:StudentTwo()){
                Text("Student Two Score")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct EnvironmentObjectShareDataView_Previews: PreviewProvider {
    
    static let studentSetting = StudentSetting()
    static var previews: some View {
        EnvironmentObjectShareDataView().environmentObject(studentSetting)
    }
}
