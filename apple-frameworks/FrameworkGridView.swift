//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by Agustin Carbajal on 14/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        LazyVGrid(columns: columns) {
            FrameworkTitleView(name: "app-clip", imageName: "app-clip")
            FrameworkTitleView(name: "app-clip", imageName: "app-clip")
            FrameworkTitleView(name: "app-clip", imageName: "app-clip")
            FrameworkTitleView(name: "app-clip", imageName: "app-clip")
            FrameworkTitleView(name: "app-clip", imageName: "app-clip")
            FrameworkTitleView(name: "app-clip", imageName: "app-clip")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6) // puede hacer un shrink de hasta el 60% del tamaño original
        }
    }
}
