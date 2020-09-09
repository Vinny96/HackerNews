//
//  DetailView.swift
//  H4XORBootCamp
//
//  Created by Vinojen Gengatharan on 2020-09-08.
//  Copyright © 2020 Vinojen Gengatharan. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    //variables
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "Placeholder")
    }
}


