//
//  POCCropImageApp.swift
//  POCCropImage
//
//  Created by Herve Peroteau on 16/02/2023.
//

import SwiftUI

@main
struct POCCropImageApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(uiImagePortrait: UIImage(named: "kia")!,
                        uiImageLanscape: UIImage(named: "ferrari")!)
        }
    }
}
