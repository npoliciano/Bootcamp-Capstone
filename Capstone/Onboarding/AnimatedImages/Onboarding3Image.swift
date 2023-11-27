//
//  Onboarding3Image.swift
//  Capstone
//
//  Created by Nicolle on 26/11/23.
//

import SwiftUI

struct Onboarding3Image: View {
    @State var isAnimating = false
    
    var repeatingAnimation: Animation {
        Animation.easeInOut(duration: 0.5).delay(1.5).repeatForever()
    }
    
    var body: some View {
        ZStack {
            Image(.onboarding31)
                .resizable()
                .scaledToFit()
            
            Image(.onboarding32)
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .animation(repeatingAnimation, value: isAnimating)
        }
        .onAppear {
            self.isAnimating = true
        }
    }
}

struct Onboardin3Image_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3Image()
    }
}
