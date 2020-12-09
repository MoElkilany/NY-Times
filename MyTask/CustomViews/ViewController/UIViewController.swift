//
//  UIViewController+Ext.swift
//  MyTask
//
//  Created by mohamed sayed on 12/10/20.
//
import  UIKit

class DataLoadingVC: UIViewController {
    
    var loadView:UIView!
    
    func showLoading(){
        loadView = UIView(frame: UIScreen.main.bounds)
        view.addSubview(loadView)
        
        loadView.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 0.07625214041)
        loadView.alpha = 0
        
        UIView.animate(withDuration: 0.15) {
            self.loadView.alpha = 0.8
        }
        
        let activivtyIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activivtyIndicator.color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        loadView.addSubview(activivtyIndicator)
        activivtyIndicator.translatesAutoresizingMaskIntoConstraints = false        
        NSLayoutConstraint.activate([
            activivtyIndicator.centerYAnchor.constraint(equalTo: loadView.centerYAnchor),
            activivtyIndicator.centerXAnchor.constraint(equalTo: loadView.centerXAnchor)
        ])
        activivtyIndicator.startAnimating()
    }
    
    func dismissLoadingView(){
        DispatchQueue.main.async {
            if self.loadView != nil {
                self.loadView.removeFromSuperview()
                self.loadView = nil
            }
        }
    }
}
