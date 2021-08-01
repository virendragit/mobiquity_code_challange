//
//  HttpUtil.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import Foundation

struct HttpUtility {
 
    func fetchData<T: Decodable>(urlString: String,resultType: T.Type, completion: @escaping (_ result :T?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (responseData, httpUrlResponse, error) in
            if(error == nil && responseData != nil && responseData?.count != 0){
                let decoder = JSONDecoder()
                do {
                    let response = try decoder.decode(T.self, from: responseData!)
                    _ = completion(response)
                } catch let error {
                    debugPrint("error occured while decoding =\(error.localizedDescription)")
                }
            }

        }.resume()
    }
}
