//
//  CourseTileView.swift
//  api
//
//  Created by Palak Satti on 05/12/23.
//

import SwiftUI

struct CourseTileView: View {
    let course: Course
    var body: some View {
        AsyncImage(url: URL(string: course.image)) { response in
            switch response{
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            default:
                DefaultImageView()
            }
        }
        VStack{
            Spacer()
            HStack{
                Text(course.title)
                    .padding(.vertical, 4)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                    .bold()
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .background {
                Color.purple
            }
        }
    }
}

#Preview {
    CourseTileView(course: Course(id: 1, image: "hello.com", title: "hey", subtitle: "this is sub"))
}
