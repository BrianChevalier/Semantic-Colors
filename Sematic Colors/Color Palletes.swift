//
//  Color Palletes.swift
//  Sematic Colors
//
//  Created by Brian Chevalier on 9/9/19.
//  Copyright © 2019 Brian Chevalier. All rights reserved.
//

import SwiftUI

struct SwiftUIPalette: View {
    var body: some View {
        VStack{
            ForEach(0..<SwiftUIColors.count){ ind in
                HStack{
                    Text("\(SwiftUIColorLabels[ind])")
                        .frame(width: 200)
                        .multilineTextAlignment(.leading)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(SwiftUIColors[ind])
                        .frame(height: 50)
                        .padding()
                }
            }
        }
    }
}

struct ColorView: View{
    var body: some View {
        VStack{
            ForEach(0..<dynamicSystemColors.count){ ind in
                HStack{
                    Text("\(dynamicSystemColorlabels[ind])")
                        .multilineTextAlignment(.leading)
                        .frame(width: 200)
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(dynamicSystemColors[ind]))
                        .frame(height: 50)
                        .padding()
                }
            }
        }
    }
}

struct Color_Palletes_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
                ColorView()
                SwiftUIPalette()
        }.previewLayout(.sizeThatFits)
    }
}
