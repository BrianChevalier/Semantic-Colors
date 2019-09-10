//
//  ContentView.swift
//  Sematic Colors
//
//  Created by Brian Chevalier on 9/9/19.
//  Copyright © 2019 Brian Chevalier. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            ScrollView{
                ColorView()
            }
                .tabItem{
                    Image(systemName: "1.square.fill")
                    Text("UIColors")
            }
            ScrollView{
                SwiftUIPalette()
            }
            .tabItem{
                Image(systemName: "2.square.fill")
                Text("SwiftUI Colors")
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
