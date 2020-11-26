//
//  ChangeDateViewController.swift
//  LootLogger
//
//  Created by User on 26.11.2020.
//

import UIKit

class ChangeDateViewController: UIViewController {

    @IBOutlet var datePicker: UIDatePicker!
    var item: Item! {
        didSet {
            navigationItem.title = "\(item.dateCreated)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        datePicker.date = item.dateCreated
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        item.dateCreated = datePicker.date

    }
    


}
