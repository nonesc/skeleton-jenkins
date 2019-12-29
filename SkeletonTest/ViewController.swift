//
//  ViewController.swift
//  SkeletonTest
//
//  Created by Sujin Chaichanamongkol on 28/12/2562 BE.
//  Copyright © 2562 Sujin Chaichanamongkol. All rights reserved.
//

import UIKit
import SkeletonView
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SkeletonTableViewCell", bundle: nil), forCellReuseIdentifier: "test")
        tableView.register(UINib(nibName: "ProductDescriptionCell", bundle: nil), forCellReuseIdentifier: "PRODUCT_DESCRIPTION_CELL")
        tableView.register(UINib(nibName: "SliderCell", bundle: nil), forCellReuseIdentifier: "test2")


        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.tableView.hideSkeleton()
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "test2", for: indexPath) as? SliderCell {
                
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "PRODUCT_DESCRIPTION_CELL", for: indexPath) as? ProductDescriptionCell {
                cell.showAnimatedGradientSkeleton()
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateInitialViewController() else { return }
        DispatchQueue.main.async {
            if indexPath.row == 2 {
                self.dismiss(animated: true, completion: nil)
            } else {
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}

