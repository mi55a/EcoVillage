//
//  PredictionResultView.swift
//  coreML-starter
//

import SwiftUI

struct PredictionResultView: View {
    private(set) var labelData: Classification
    
    var body: some View {
        // TODO: The View that shows classification results - edit the styling below!
        
        VStack(alignment: .center) {
            Text(labelData.label.capitalized)
                .font(.largeTitle)
            
            Text(labelData.emoji)
                .font(.system(size: 100))
                .padding(.bottom, 5)
            Text(labelData.info)
                .font(.system(size: 15))
                .padding(.trailing)
                .frame(maxWidth: 250, alignment: .trailing)
            
            
            /*
            HStack {
                Text(labelData.info.description)
                if (labelData.label == "Paper") {
                    Text("This This goes in the recycling bin ♻️")
                } else if (labelData.label == "Plastic"){
                    Text("If wrap/bag: This goes in the garbage 🗑️. If bottle: This goes in the recycling bin ♻️Empty bottle")
                } else if(labelData.label == "Metal") {
                    Text("Aluminum Cans and Steel/Tin Cans: This goes in the recycling bin ♻️. E-Waste and metal tanks: Do not put this in the recycling bin ❌")
                } else if(labelData.label == "Glass") {
                    Text("Glass Bottles/Jars : This goes in the recycling bin ♻️Unlid and empty jars or bottles.")
                } else if(labelData.label == "Cardboard") {
                    Text("Cardboard: This goes in the recycling bin ♻️ Flatten cardboard and tear off any plastic lining before disposing.")
                } else if(labelData.label == "Organic waste") {
                    Text("Throw away in a compost bin or compost site. Do not put in recycling bin ❌")
                }
             
            }
             */
            .padding(15)
            
        }// VStack
        .frame(width: 400)
        .padding()
    }
}

struct PredictionResultView_Previews: PreviewProvider {
    static var previews: some View {
        PredictionResultView(labelData: Classification())
    }
}
