//
//  ContentView.swift
//  AboutMe
//
//  Created by Erich Kumpunen on 7/5/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ZStack(alignment: .leading) {
                Image("bannerImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("profilePicture")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.bottom, -90)
                .offset(y: 40)
            }
            .padding(.bottom)
            .padding(.bottom)
            .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Erich Kumpunen")
                        .font(.title)
                        .fontWeight(.heavy)
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color.blue)
                        .imageScale(.large)
                }
                
                Text("@I_are_scientists")
                    .font(.caption)
                
                //1
                Text("My bio. Write something interesting about yourself! If you are an interesting person. Which I am not.")
                    .fontWeight(.ultraLight)
                    .padding(.top)
            }
            .padding(.horizontal)
            Spacer()
        }
        //2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
