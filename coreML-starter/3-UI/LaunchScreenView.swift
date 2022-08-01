//
//  LaunchScreenView.swift
//  coreML-starter
//
//  
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        VStack {
            VStack {
                // header image:
                // TODO: replace with your own image.  Drag an image from your computer to assets.xcassets and add the name of your image below
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                // image from: https://www.pngitem.com/middle/ioRbwwh_what-is-water-footprint-safe-water-save-life/
                
                // title
                // TODO: Replace app title
                Text("EcoVillage")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color("darkestgreen"))
                
                Divider().frame(maxWidth: 300)
                
                // info
                // TODO: Replace with description of your app
                VStack(spacing: 10) {
                    Text("Welcome to EcoVillage, your map to a cleaner tomorrow!")
                    
                    Text("This app uses the camera and AR (powered by ML) to classify disposables.")
                    
                }
                .padding()
                .multilineTextAlignment(.center)
                
                // item list
                // TODO: replace with the names of your items
                HStack(spacing: -20) {
                    VStack {
                        Text("📦")
                        Text("Cardboard")
                    }
                    .padding()
                    
                    VStack {
                        Text("🥛")
                        Text("Glass")
                    }
                    .padding()
                    
                    VStack {
                        Text("🥫")
                        Text("Metal")
                    }
                    .padding()
                    
                    VStack {
                        Text("📄")
                        Text("Paper")
                    }
                    .padding()
                    
                    VStack {
                        Text("🚮")
                        Text("Trash")
                    }
                    .padding()
                    
                    VStack {
                        Text("🥽")
                        Text("Plastic")
                    }
                    .padding()
                    
                    VStack {
                        Text("🥬")
                        Text("Organic waste")
                    }
                    .padding()
                }
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                .padding()
                
                HStack {
                    // start button
                    NavigationLink(destination: ClassificationView()){
                        Text("Scan")
                    }
                    .buttonStyle(RoundedRectButtonStyle(buttonColor: Color("lightgreen")))
                    .padding(10)
                    
                    // map button
                    
                    NavigationLink(destination: MapView()){
                        Text("Map")
                            
                    }
                    .buttonStyle(RoundedRectButtonStyle(buttonColor: Color("navyblue")))
                    .padding(10)
                    
                    // about page
                    NavigationLink(destination: AboutView()){
                        Text("Credits")
                    }
                }
            }
            .padding()
            .frame(maxWidth: 500)
            .background(Color.white)
            .cornerRadius(25)
            .shadow(radius: 5)
            
        }// VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkgreen"))
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            if #available(iOS 15.0, *) {
                LaunchScreenView()
                    .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
                    .previewInterfaceOrientation(.landscapeLeft)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
