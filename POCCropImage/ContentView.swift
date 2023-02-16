//
//  ContentView.swift
//  POCCropImage
//
//  Created by Herve Peroteau on 16/02/2023.
//

import SwiftUI

struct ContentView: View {
   let uiImagePortrait: UIImage
   let uiImageLanscape: UIImage

   var body: some View {
      VStack {
         Image(uiImage: uiImagePortrait)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 400)

         Image(uiImage: uiImageLanscape)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 400)
      }
      .padding()
   }
}

struct ContentView_Previews: PreviewProvider {

   static let portrait = UIImage(named: "kia")!
      .imageAspectScaled(toFill: CGSize(width: 400, height: 450))

   static let landscape = UIImage(named: "ferrari")!
      .imageAspectScaled(toFill: CGSize(width: 600, height: 250))

   static var previews: some View {
      ContentView(uiImagePortrait: portrait,
                  uiImageLanscape: landscape)
   }
}
