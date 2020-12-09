//
//  UIViewController+Ext.swift
//  MyTask
//
//  Created by mohamed sayed on 12/10/20.
//

import UIKit
extension UIViewController {
    
        func presentAlertOnMainThread(title:AlertErrorTitles , message:String , buttonTitle:AlertActionTitles){
            DispatchQueue.main.async {
                let ac = UIAlertController(title: title.rawValue, message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: buttonTitle.rawValue, style: .cancel)
                ac.addAction(action)
                ac.modalPresentationStyle = .overFullScreen
                ac.modalTransitionStyle = .crossDissolve
                self.present(ac, animated: true)
            }
        }

    }
    

