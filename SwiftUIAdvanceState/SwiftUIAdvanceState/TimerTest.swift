//
//  TimerTest.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct TimerTest: View {
    @State var currentDate = Date()
    @State var remainigTime = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            Text("Current date and time is \(currentDate)")
                .onReceive(timer){input in
                    self.currentDate = input
            }
            .lineLimit(3)
            
            Text("Remaining time is \(self.remainigTime) sec")
                .onReceive(timer){_ in
                    if(self.remainigTime > 0){
                        self.remainigTime -= 1
                    }
            }
            
        }
        
    }
}

struct TimerTest_Previews: PreviewProvider {
    static var previews: some View {
        TimerTest()
    }
}
