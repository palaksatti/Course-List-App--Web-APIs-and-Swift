//
//  DefaultImageView.swift
//  api
//
//  Created by Palak Satti on 05/12/23.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        VStack{
            ProgressView()
                .padding()
            Image(systemName: "books.vertical")
                .font(.largeTitle)
                .padding(.bottom, 4)
            Text("Grabbing the courses for you...")
        }

    }
}

#Preview {
    DefaultImageView()
}
