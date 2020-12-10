//
//  MostPopularArticlesDetailsVC.swift
//  MyTask
//
//  Created by mohamed sayed on 12/10/20.
//

import UIKit

class MostPopularArticlesDetailsVC: UIViewController {
    
    var presenter: MostPopularDetailsPresenter?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        presenter = MostPopularDetailsPresenter(with: presenter?.articlesListDetails, with: self)
        presenter?.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureViewItems()
    }
    
    
    
    let padding:CGFloat = 8
    
    let scrollView = UIScrollView()
    
    let containerView = UIView()

    let typeLable = GeneralLable(colorText: .blue, ChoosedFont: .OpenSansBold(size: 15), alignment: .center)

    let descriptionLable = GeneralLable(colorText: .black, ChoosedFont: .OpenSansLight(size: 20), alignment: .center)
    
    let titleLable = GeneralLable(colorText: .black, ChoosedFont: .OpenSansBold(size: 25), alignment: .center)


    let autherNameLable = GeneralLable(colorText: .lightGray, ChoosedFont: .OpenSansBold(size: 20), alignment: .center) // byLine
    
    let autherImage = AutherImage(cornerReduis: 12)
    
    let sourceLable = GeneralLable(colorText: .brown, ChoosedFont: .OpenSansBold(size: 12), alignment: .center)
    
    let dateLable = GeneralLable(colorText: .gray, ChoosedFont: .OpenSansBold(size: 12), alignment: .center)
    
    
    
    
    func configureViewItems(){
        configureContainerView()
        configureScrollView()
        configureTypeLable()
        configureTitleLable()
        configureUpdatedDateLable()
        configureAutherNameLable()
        configureAutherImage()
        configureDescriptionLable()
    }
    
    
    func configureContainerView(){
        containerView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(containerView)
        let containerViewConstraints = [
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
        containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
        containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
    }
    
    
    
    func configureScrollView(){
        view.addSubview(scrollView)
        scrollView.backgroundColor = .clear
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        let scrollViewConstraints = [
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            
        ]
        NSLayoutConstraint.activate(scrollViewConstraints)
    }
    
    
    func configureTypeLable(){
        containerView.addSubview(typeLable)
//        typeLable.text = "Type Article"
        let typeLableConstraints = [
            typeLable.topAnchor.constraint(equalTo: containerView.topAnchor),
            typeLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            typeLable.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(typeLableConstraints)
    }
    
    
    func configureTitleLable(){
        containerView.addSubview(titleLable)
//        titleLable.text = "titleLable titleLable titleLable"
        let titleLableLableConstraints = [
            titleLable.topAnchor.constraint(equalTo: typeLable.bottomAnchor, constant: -padding   ),
            titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding)
        ]
        NSLayoutConstraint.activate(titleLableLableConstraints)
    }
    
    
     func configureUpdatedDateLable(){
         containerView.addSubview(dateLable)
//        dateLable.text = "2020 - 12 - 21"
         let dateLableConstraints = [
            dateLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: padding - 4 ),
            dateLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            dateLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
         ]
         NSLayoutConstraint.activate(dateLableConstraints)
     }
    
    func configureAutherNameLable(){
        containerView.addSubview(autherNameLable)
//        autherNameLable.text = "Doctor sam"
        let autherNameLableConstraints = [
            autherNameLable.topAnchor.constraint(equalTo: dateLable.bottomAnchor, constant: padding  ),
            autherNameLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            autherNameLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            autherNameLable.heightAnchor.constraint(equalToConstant: 100)
        ]
        NSLayoutConstraint.activate(autherNameLableConstraints)
    }
    
    
    func configureAutherImage(){
        containerView.addSubview(autherImage)
//        autherImage.image = UIImage(named: "test")
        let autherNameLableConstraints = [
            autherImage.topAnchor.constraint(equalTo: autherNameLable.bottomAnchor, constant: padding ),
            autherImage.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            autherImage.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            autherImage.heightAnchor.constraint(equalToConstant: 200)
        ]
        NSLayoutConstraint.activate(autherNameLableConstraints)
    }
    
     func configureDescriptionLable(){
         containerView.addSubview(descriptionLable)
//         descriptionLable.text = "descriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLabledescriptionLable descriptionLable descriptionLable"
         let descriptionLableConstraints = [
             descriptionLable.topAnchor.constraint(equalTo: autherImage.bottomAnchor, constant: padding ),
             descriptionLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
             descriptionLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            descriptionLable.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding)
         ]
         NSLayoutConstraint.activate(descriptionLableConstraints)
     }
     
}

extension MostPopularArticlesDetailsVC : MostPopularDetailsProtocol{
    func setType(type: String) {
        self.typeLable.text = type
    }
    
    func setTitle(title: String) {
        self.titleLable.text = title
    }
    
    func setAutherName(byline: String) {
        self.autherNameLable.text = byline
    }
    
    func date(date: String) {
        self.dateLable.text = date
    }
    
    func image(imageUrl: String) {
        self.autherImage.downloadImage(form: imageUrl)
    }
    
    func description(abstract: String) {
        self.descriptionLable.text = abstract
    }
    
    
}
