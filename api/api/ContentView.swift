//
//  ContentView.swift
//  api
//
//  Created by Palak Satti on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var courses: [Course] = []
    var body: some View {
        NavigationStack{
            if courses.count == 0 {
                VStack{
                    ProgressView()
                        .padding()
                    Text("We are on it")
                        .onAppear(){ getCourses()}
                }
                
            }else {
                ScrollView{
                    VStack{
                        ForEach(courses) { course in
                            CourseTileView(course: course)
                        }
                        
                    }
                }
                .navigationTitle("Courses")
            }

        }
    }
    func getCourses(){
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json" ){
            var request = URLRequest(url: apiURL)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with:request) { data, response, error in
                if let coursedata = data {
                    //print(String(data: data!, encoding: .utf8) ?? "ERROR")
                    if let coursefromAPI = try? JSONDecoder().decode([Course].self, from: coursedata){
                        courses = coursefromAPI
                    }
                }
                
            }.resume()
        }
    }
}

#Preview {
    ContentView()
}
