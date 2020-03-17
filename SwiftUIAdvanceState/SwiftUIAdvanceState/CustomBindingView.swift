//
//  CustomBindingView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct CustomBindingView: View {
    @State private var firstToggle = false
    @State private var secondToggle = false
    var body: some View {
        let firstToggleBinding = Binding(
            get:{self.firstToggle},
            set:{self.firstToggle = $0
                if($0 == true){
                    self.secondToggle = false
                }
        }
        )
        
        let secondToggeBinding = Binding(
            get:{self.secondToggle},
            set:{self.secondToggle = $0
                if($0 == true){
                    self.firstToggle = false
                }
        }
        )
        
        return VStack{
            Toggle(isOn:firstToggleBinding){
                Text("First Toggle")
            }
            Toggle(isOn: secondToggeBinding){
                Text("Second Toggle")
            }
        }
    }
}

struct CustomBindingView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBindingView()
    }
}
