//
//  ViewController.swift
//  HW4.4UITablewCell
//
//  Created by Alisher Sultanov on 24/1/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private lazy var simpleTableView = UITableView()
    
    private let custom: [Simple] = [Simple(image: "1", titleText: "Furniture", itemText: "785 Items", price: "200$"),
                                    Simple(image: "2", titleText: "Kitchenware", itemText: "645 Items", price: "130$"),
                                    Simple(image: "3", titleText: "Reading Table", itemText: "Inventory", price: "170$")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        view.backgroundColor = .white
        simpleTableView.dataSource = self
        simpleTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        simpleTableView.delegate = self
        
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(simpleTableView)
        simpleTableView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(60)
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalTo(view.snp.bottom).offset(-16)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        custom.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.setCustomData(custom[indexPath.row].image,
                           text: custom[indexPath.row].titleText,
                           item: custom[indexPath.row].itemText)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.simpleData = custom[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

