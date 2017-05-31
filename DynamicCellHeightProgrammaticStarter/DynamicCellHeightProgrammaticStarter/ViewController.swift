//
//  ViewController.swift
//  DynamicCellHeightProgrammaticStarter
//
//  Created by Satinder Singh on 7/3/16.
//  Copyright © 2016 Satinder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate let bookCellReuseIdentifier = "BookTableViewCellIdentifier"
    fileprivate let bookList = BookDataSource.bookList()
    fileprivate let tableview = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Books"
        configureTableView()
    }
    
    func configureTableView() {
        tableview.dataSource = self
        // TODO
    }

}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: bookCellReuseIdentifier, for: indexPath) as! BookTableViewCell
        let book = bookList[indexPath.row]
        cell.nameLabel.text = book.name
        cell.detailLabel.text = book.details
        return cell
    }
    
    
}

