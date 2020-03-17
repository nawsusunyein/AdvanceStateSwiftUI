//
//  ConstantBindingView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ConstantBindingView: View {
    var body: some View {
        Toggle(isOn:.constant(true)){
            Text("Show advanced options")
        }
    }
}

struct ConstantBindingView_Previews: PreviewProvider {
    static var previews: some View {
        ConstantBindingView()
    }
}
