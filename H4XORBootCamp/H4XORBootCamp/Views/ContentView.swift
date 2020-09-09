//
//  ContentView.swift
//  H4XORBootCamp
//
//  Created by Vinojen Gengatharan on 2020-09-05.
//  Copyright © 2020 Vinojen Gengatharan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // variables
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear(perform: networkManager.fetchData)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


