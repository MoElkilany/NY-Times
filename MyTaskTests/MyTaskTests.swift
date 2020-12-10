//
//  MyTaskTests.swift
//  MyTaskTests
//
//  Created by mohamed sayed on 12/10/20.
//

import XCTest
@testable import MyTask

class MyTaskTests: XCTestCase {
   
    var sut: MostPopularArticlesList!
    
    override func setUp() {
      super.setUp()
        sut = MostPopularArticlesList()
        sut.loadView()
        sut.viewDidLoad()
    }
    
    func testHasATableView(){
        XCTAssertNotNil(sut.mostPopularArticlesTable)
    }
    
    func testTableViewHasDataSource() {
            XCTAssertNotNil(sut.mostPopularArticlesTable.dataSource)
        }
    
    func testTableViewHasDelegate() {
            XCTAssertNotNil(sut.mostPopularArticlesTable)
        }
    
    
    func testTableViewConfromsToTableViewDelegateProtocol() {
        XCTAssertTrue(sut.conforms(to: UITableViewDelegate.self))
        XCTAssertTrue(sut.responds(to: #selector(sut.tableView(_:didSelectRowAt:))))
    }
    
    
    func testTableViewCellHasReuseIdentifier() {
            let cell = sut.tableView(sut.mostPopularArticlesTable, cellForRowAt: IndexPath(row: 1, section: 0)) as? MostPopularArticlesCell
            let actualReuseIdentifer = cell?.reuseIdentifier
            let expectedReuseIdentifier = "MostPopularArticlesCell"
            XCTAssertEqual(actualReuseIdentifer, expectedReuseIdentifier)
        }
    
    func testTableCellHasCorrectLabelText() {
           let zeroCell = sut.tableView(sut.mostPopularArticlesTable, cellForRowAt: IndexPath(row: 0, section: 0)) as? MostPopularArticlesCell
        XCTAssertEqual(zeroCell?.titleLable.text, "The Losses We Share")
           
        let firstCell = sut.tableView(sut.mostPopularArticlesTable, cellForRowAt: IndexPath(row: 1, section: 0)) as? MostPopularArticlesCell
     XCTAssertEqual(firstCell?.titleLable.text, "Whatever It Is, It’s Probably Not Hair Dye")
           
        let secondCell = sut.tableView(sut.mostPopularArticlesTable, cellForRowAt: IndexPath(row: 2, section: 0)) as? MostPopularArticlesCell
     XCTAssertEqual(secondCell?.titleLable.text, "The Children of Pornhub")
       }

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


}
