//
//  NetworkManager.swift
//  H4XOR-SwiftUI
//
//  Created by hakkı can şengönül on 14.06.2022.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: stringUrl){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                
                if error != nil {
                    print(error?.localizedDescription)
                }else{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(Result.self, from: safeData)
                        }catch{
                            
                        }
                        
                    }
                }
                
                
                
            }
            task.resume()
            
            
            
        }
        
        
    }
    
    
    
}
