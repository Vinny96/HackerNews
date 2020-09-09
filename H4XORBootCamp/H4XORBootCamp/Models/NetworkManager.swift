//
//  NetworkManager.swift
//  H4XORBootCamp
//
//  Created by Vinojen Gengatharan on 2020-09-06.
//  Copyright © 2020 Vinojen Gengatharan. All rights reserved.
//

import Foundation
class NetworkManager : ObservableObject // place where the networking happens
{
    //variables
    @Published var posts = [Post]() // the posts property is now being broadcasted
    
    // functions
    func fetchData() // networking code
    {
        // step 1 create a URL Object
         if let url : URL = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
         {
            // step 2 create a URLSession
            let session = URLSession(configuration: .default)
            // step 3 give the session a task
            let task = session.dataTask(with: url) { (data, urlResponse, error) in
                self.handle(data: data, response: urlResponse, error: error)
            }
            task.resume()
        }
    }
                    
    func handle(data: Data?, response : URLResponse?, error : Error?)
    {
        if(error != nil)
        {
            print(error!)
            return
        }
        if let safeData = data
        {
            parseJSON(safeData: safeData)
        }
    }
    
    func parseJSON(safeData : Data)
    {
        let decoder = JSONDecoder()
        do
        {
            let results = try decoder.decode(Results.self, from: safeData)
            DispatchQueue.main.async {
                 self.posts = results.hits
            }
        }catch{
            print(error)
        }
    }
        
}
