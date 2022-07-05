//
//  PropertyWrappers.swift
//  AboutMe
//
//  Created by Erich Kumpunen on 7/5/22.
//

import SwiftUI

struct PropertyWrappers: View {
    
    // Protocol-delegate pattern
    // Property Wrappers
    @State var currentColor: Color = .red
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle().foregroundColor(currentColor)
                    .frame(width: 80, height: 80, alignment: .center)
                
                NavigationLink {
                    ColorChanger(currentColor: $currentColor)
                } label: {
                    Text("Change Color")
                        .padding()
                        .font(.title)
                }
            }
        }
    }
}

struct PropertyWrappers_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrappers()
    }
}
