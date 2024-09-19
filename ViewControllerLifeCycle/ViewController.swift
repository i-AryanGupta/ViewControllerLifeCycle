//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Yashom on 19/09/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    let tableView = UITableView()
    
    override func loadView() {
        super.loadView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        view = tableView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        // this method load one time only and load the view into memory
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Test"
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // we this method to add something before the view appear like fetching the api or data
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //we use this method after the view displayed like prompt for password
        //add subViews
        //dispatch a req through api call, we show spinner
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //for cleanup
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // for cleanup
    
    }
    
    deinit {
        // clean up memory
        // commonly used for remove notification observer
        NotificationCenter.default.removeObserver(self)
        
        
    }


}

