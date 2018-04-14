//
//  StoryBoardViewController.swift
//  AutoLayoutDemo
//
//  Created by Gavin Huang on 2018/4/11.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import UIKit

class StoryBoardViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let viewModel = SBViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
         configureUI()
    }
    
    func configureUI() {
      self.tableView.rowHeight = 50
      self.tableView.tableFooterView = UIView()
    }
    
    func registerCell() {
        tableView.register(UINib.init(nibName: "SBTableViewCell", bundle: nil), forCellReuseIdentifier: NSStringFromClass(SBTableViewCell.self))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - UITableViewDataSource
extension StoryBoardViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return viewModel.datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(SBTableViewCell.self), for: indexPath) as! SBTableViewCell
          let model = viewModel.datas[indexPath.row]
          cell.place.text = model.place
          cell.distance.text = model.distance
        
        return cell
    }
}
