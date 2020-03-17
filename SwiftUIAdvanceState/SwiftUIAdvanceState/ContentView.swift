//
//  ContentView.swift
//  SwiftUIAdvanceState
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var playerSetting = PlayerSetting()
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination:PlayerOneView()){
                    Text("Player One")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:PlayerTwoView()){
                    Text("Player Two")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:ObjectWillChangeView()){
                    Text("Object Will Change View")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:EnvironmentObjectShareDataView()){
                    Text("Environment Object Share Data")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:ConstantBindingView()){
                    Text("Constant Binding")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:CustomBindingView()){
                    Text("Custom Binding")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
