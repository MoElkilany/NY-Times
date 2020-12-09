//
//  AutherImage.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

class AutherImage: UIImageView {

    
    let palceHolder = "test"
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure(){
        layer.cornerRadius  = 30
        clipsToBounds       = true
        translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: palceHolder)
        self.contentMode =  .scaleAspectFill
    }
    
    
    func downloadImage(form urlString:String){
        
        guard let url = URL(string: urlString) else {return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, respons, error) in
            guard let self = self else {return}
            if error != nil {return}
            guard let respons = respons as? HTTPURLResponse , respons.statusCode == 200 else {return}
            guard let data = data else {return}
            guard let image = UIImage(data: data) else {return}
            DispatchQueue.main.async {self.image = image}
        }
        
        task.resume()
    }
    
    

}
