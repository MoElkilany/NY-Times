//
//  MostPopularArticlesList+Table.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import UIKit

extension MostPopularArticlesList :UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfArticles()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MostPopularArticlesCell.reuseID) as! MostPopularArticlesCell
        presenter.setDataToTableCell(CellProtocol: cell, index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectCell(index: indexPath.row)
    }
    
    
    
    
}
