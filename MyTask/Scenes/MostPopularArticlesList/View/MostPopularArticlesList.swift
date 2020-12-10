//
//  MostPopularList.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//
  
import UIKit

class MostPopularArticlesList: DataLoadingVC {

    let mostPopularArticlesTable = UITableView()
    
    var presenter :MostPopularArticlesPresenter!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewConfigration()
        presenter = MostPopularArticlesPresenter(view: self)
        presenter.viewDidLoad()
    }
    
    func configureRefreshControl(){
        
        mostPopularArticlesTable.refreshControl = UIRefreshControl()
        mostPopularArticlesTable.refreshControl?.addTarget(self, action:
                                          #selector(handleRefreshControl),
                                          for: .valueChanged)
    }
    
    @objc func handleRefreshControl() {
        presenter.refershTableView()
       DispatchQueue.main.async {
          self.mostPopularArticlesTable.refreshControl?.endRefreshing()
       }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = presenter.navigationTitle
        configureRefreshControl()
    }

    
    func tableViewConfigration(){
        view.addSubview(mostPopularArticlesTable)
        mostPopularArticlesTable.backgroundColor = UIColor(white: 1, alpha: 0.90)
        mostPopularArticlesTable.register(MostPopularArticlesCell.self, forCellReuseIdentifier:MostPopularArticlesCell.reuseID)
        mostPopularArticlesTable.delegate   = self
        mostPopularArticlesTable.dataSource = self
        mostPopularArticlesTable.showsVerticalScrollIndicator = false
        mostPopularArticlesTable.showsHorizontalScrollIndicator = false
        mostPopularArticlesTable.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mostPopularArticlesTable.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor),
            mostPopularArticlesTable.leadingAnchor.constraint(equalTo:view.leadingAnchor),
            mostPopularArticlesTable.trailingAnchor.constraint(equalTo:view.trailingAnchor),
            mostPopularArticlesTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}



extension MostPopularArticlesList  : MostPopularArticlesProtocol{
    
    
    func gerError(error: String) {
        self.presentAlertOnMainThread(title: .ServerError, message: error, buttonTitle: .ok)
    }
    
    func showLoadingView() {
        self.showLoading()
    }
    
    func dismissLoading() {
        self.dismissLoadingView()
    }
    func getDataSuccesfully() {
        mostPopularArticlesTable.reloadData()
    }
    
    func didselect(result: ResultResponse) {
        let detailsPresenter = MostPopularDetailsPresenter(with: result, with: nil)
        
        let detailsController = MostPopularArticlesDetailsVC()
        detailsController.presenter = detailsPresenter
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.tintColor = .black

        self.navigationController?.pushViewController(detailsController, animated: true)
        
    }
    
    
    
}
