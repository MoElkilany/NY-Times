//
//  ContainerCellView.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

class ContainerCellView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configre()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configre(){
        backgroundColor = .white
        layer.cornerRadius = 20
     translatesAutoresizingMaskIntoConstraints = false
    }

}
