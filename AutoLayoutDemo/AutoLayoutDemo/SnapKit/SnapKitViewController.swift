//
//  SnapKitViewController.swift
//  AutoLayoutDemo
//
//  Created by Gavin Huang on 2018/4/11.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import UIKit

class SnapKitViewController: UIViewController {
    let viewModel = SBViewModel()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
         registerCells()
         configureUI()
    }
    
    func configureUI() {
        self.tableView.tableFooterView = UIView()
        self.tableView.rowHeight = 50
    }
    
    func registerCells() {
        tableView.register(SnpTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(SnpTableViewCell.self))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SnapKitViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(SnpTableViewCell.self), for: indexPath) as! SnpTableViewCell
        
        let model = viewModel.datas[indexPath.row]
        cell.placeLabel.text = model.place
        cell.distanceLabel.text = model.distance
        
        return cell
    }
}
