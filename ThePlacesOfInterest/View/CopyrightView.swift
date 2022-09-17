//
//  CopyRightView.swift
//  ThePlacesOfInterest
//
//  Created by MHC Inc on 2021/1/20.
//

import SwiftUI

struct CopyrightView: View {
  var body: some View {
    VStack {
      Image("launch-screen-image")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      Text("""
        Copyright © MHC INC

         This app is Copyright © MHC Inc in 2022.5.19.06:34, This is The fourth app!
      """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    } //: VStack
    .padding()
    .opacity(0.4)
  }
}

struct CopyrightView_Previews: PreviewProvider {
  static var previews: some View {
    CopyrightView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
