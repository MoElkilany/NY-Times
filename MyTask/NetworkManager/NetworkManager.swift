//
//  NetworkManager.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//


import UIKit
class NetworkManager {
    
    
    static let shared     = NetworkManager()
    private let baseUrl   = "https://api.nytimes.com/svc/mostpopular/v2/viewed/30.json?api-key="
    
    private init(){}
    
    func getMostPopularList(completed:@escaping (Result<[ResultResponse],ErrorMessage>)->Void){
        let endpoint = baseUrl + Constants.apiKey.rawValue
        guard let url = URL(string: endpoint) else {
            completed(.failure(.unableToComplete))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, respons, error) in
            
            if let error = error {
                completed(.failure(.unableToComplete))
                print("erorr is \(error)")
                return
            }
            
                        guard let respons = respons as? HTTPURLResponse ,respons.statusCode == 200
                            else{
                                completed(.failure(.invalidRespons))
                                return
                        }
            
            
                        guard let date = data else{
                            completed(.failure(.invalidDate))
                            return
                        }
            
                        do {
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            let popularArticleList  = try decoder.decode(MostPopularResponse.self, from: date)
                            
                            guard let popularArticleListResult = popularArticleList.results else{
                                completed(.failure(.invalidDate))
                                return
                            }
                            
                            completed(.success(popularArticleListResult))
                        }catch{
                            completed(.failure(.invalidDate))
                        }
                    }
                    task.resume()

    }
    
    
    
    func downloadImage(form urlString:String)->Data{
        var imageData = Data()
        
        guard  let url = URL(string: urlString) else {return Data()}
        
        let task = URLSession.shared.dataTask(with: url) { (data, respons, error) in
            if error != nil {return}
            
            guard let respons = respons as? HTTPURLResponse , respons.statusCode == 200 else {return}
            guard let data = data else {return}
            print("The data = \(data)")
            imageData =  data
        }
        task.resume()
        return imageData

    }
    
}



