//
//  WebViewModel.swift
//  H4XORBootCamp
//
//  Created by Vinojen Gengatharan on 2020-09-08.
//  Copyright © 2020 Vinojen Gengatharan. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable
{
    let urlString : String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeurlString = urlString
        {
            if let url = URL(string: safeurlString)
            {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}



struct WebViewModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
