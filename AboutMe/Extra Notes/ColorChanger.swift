//
//  ColorChanger.swift
//  AboutMe
//
//  Created by Erich Kumpunen on 7/5/22.
//

import SwiftUI

struct ColorChanger: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var currentColor: Color
    
    var body: some View {
        VStack {
            Button {
                currentColor = .green
                dismiss()
                print("Changed color to green")
            } label: {
                Text("Green")
                    .foregroundColor(.green)
            }
            .padding()
            
            Button {
                currentColor = .red
                dismiss()
                print("Changed color to red")
            } label: {
                Text("Red")
                    .foregroundColor(.red)
            }
        }
    }
}

struct ColorChanger_Previews: PreviewProvider {
    static var previews: some View {
        ColorChanger(currentColor: Binding.constant(.red))
    }
}
