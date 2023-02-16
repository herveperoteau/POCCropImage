//
//  UIImage+Crop.swift
//  POCCropImage
//
//  Created by Herve Peroteau on 16/02/2023.
//

import UIKit

extension UIImage {

   public func imageAspectScaled(toFill size: CGSize) -> UIImage {

      guard size.width > 0 && size.height > 0 else { return self }

      let imageAspectRatio = self.size.width / self.size.height
      let canvasAspectRatio = size.width / size.height

      var resizeFactor: CGFloat

      if imageAspectRatio > canvasAspectRatio {
         resizeFactor = size.height / self.size.height
      } else {
         resizeFactor = size.width / self.size.width
      }

      let scaledSize = CGSize(width: self.size.width * resizeFactor, height: self.size.height * resizeFactor)
      let origin = CGPoint(x: (size.width - scaledSize.width) / 2.0, y: 0)

      UIGraphicsBeginImageContextWithOptions(size, false, self.scale)
      self.draw(in: CGRect(origin: origin, size: scaledSize))

      let scaledImage = UIGraphicsGetImageFromCurrentImageContext() ?? self
      UIGraphicsEndImageContext()

      return scaledImage
   }
}
