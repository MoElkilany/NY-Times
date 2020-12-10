//
//  MostPopularArticlesCell.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

class MostPopularArticlesCell: UITableViewCell , CellDataProtocol{
    
    static let reuseID = "MostPopularArticlesCell"
    let titleLable = GeneralLable(colorText: .black, ChoosedFont: .OpenSansBold(size: 18), alignment: .center)
    
    private  let descriptionLable = GeneralLable(colorText: .black, ChoosedFont:.OpenSansLight(size: 15), alignment: .left)
    
    private  let dateLable = GeneralLable(colorText: .lightGray, ChoosedFont: .OpenSansBold(size: 20), alignment: .center)
    
    
    private  let autherImage = AutherImage(cornerReduis: 30)
    private  let containerView = ContainerCellView()
    private let padding : CGFloat = 8
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none
        configrationCellItems()
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configrationCellItems(){
        configurerContainerView()
        configurerImageView()
        configurerTitleLable()
        configurerDescrptionLable()
        configurerDateLable()
    }
    
    
    private func configurerContainerView(){
        addSubview(containerView)
        let containerViewConstraints = [containerView.topAnchor.constraint(equalTo:self.topAnchor, constant: padding),
                                        containerView.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: padding),
                                        containerView.trailingAnchor.constraint(equalTo:self.trailingAnchor, constant: -padding),
                                        containerView.widthAnchor.constraint(lessThanOrEqualToConstant:400),
                                        containerView.bottomAnchor.constraint(equalTo:self.bottomAnchor, constant: -padding),
                                        
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
    }
    
    private func configurerImageView(){
        addSubview(autherImage)
        
        let autherImageConstraints = [
            autherImage.leadingAnchor.constraint(equalTo:containerView.leadingAnchor, constant: padding),
            autherImage.topAnchor.constraint(equalTo: containerView.topAnchor,constant: padding),
            autherImage.widthAnchor.constraint(equalToConstant: 60),
            autherImage.heightAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(autherImageConstraints)
    }
    
    
    private func configurerTitleLable(){
        addSubview(titleLable)
        
        let titleLableConstraints = [
            titleLable.topAnchor.constraint(equalTo:containerView.topAnchor, constant: padding),
            titleLable.trailingAnchor.constraint(equalTo:containerView.trailingAnchor, constant: -padding),
            titleLable.leadingAnchor.constraint(equalTo:autherImage.trailingAnchor, constant: -4),
            titleLable.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(titleLableConstraints)
    }
    
    private func configurerDescrptionLable(){
        addSubview(descriptionLable)

        
        let descriptionLableConstraints = [
            descriptionLable.topAnchor.constraint(equalTo:titleLable.bottomAnchor, constant: 4),
            descriptionLable.trailingAnchor.constraint(equalTo:containerView.trailingAnchor, constant: -padding),
            descriptionLable.leadingAnchor.constraint(equalTo:containerView.leadingAnchor, constant: padding),
            descriptionLable.heightAnchor.constraint(lessThanOrEqualToConstant:400)
        ]
        NSLayoutConstraint.activate(descriptionLableConstraints)
    }
    
    private func configurerDateLable(){
        addSubview(dateLable)

        let dateLableConstraints = [
            dateLable.topAnchor.constraint(equalTo:descriptionLable.bottomAnchor, constant: 2),
            dateLable.trailingAnchor.constraint(equalTo:containerView.trailingAnchor, constant: -padding * 2),
            dateLable.bottomAnchor.constraint(equalTo:containerView.bottomAnchor, constant: -padding),
            dateLable.heightAnchor.constraint(equalToConstant:30)
        ]
        NSLayoutConstraint.activate(dateLableConstraints)
    }
    
    func setUpCellTitle(title: String) {
        titleLable.text = title
    }
    
    func setUpCellDescription(description: String) {
        descriptionLable.text = description
    }
    
    func setUpCellImage(image: String) {
        autherImage.downloadImage(form: image)
    }
    
    func setUpDateCell(date: String) {
        dateLable.text = date
    }
    
    
    
}

