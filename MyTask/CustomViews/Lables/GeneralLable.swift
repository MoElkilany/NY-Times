//
//  GeneralLable.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

class GeneralLable: UILabel {
    

    override init(frame:CGRect) {
        super.init(frame:frame)
        configre()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(colorText :UIColor,ChoosedFont :UIFont, alignment:NSTextAlignment) {
        super.init(frame: .zero)
        self.textColor = colorText
        font = ChoosedFont
        textAlignment = alignment
        configre()
    }
    
    private func configre(){
        self.translatesAutoresizingMaskIntoConstraints = false
        numberOfLines = 0
        backgroundColor = .clear
    }
    
}
