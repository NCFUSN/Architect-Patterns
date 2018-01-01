//
//  FSGreetingViewController.swift
//  MVVM
//
//  Created by Nathan Furman on 1/1/18.
//  Copyright © 2018 Nathan Furman. All rights reserved.
//

import UIKit

class FSGreetingViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    var viewModel: FSGreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.lbl.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customize()
        self.btn.addTarget(self.viewModel, action: #selector(self.showGreeting), for: .touchUpInside)
        
        // Assembling of MVVM
        let model = FSPerson(firstName: "Tom", lastName: "Sawer")
        let viewModel = FSGreetingViewModel(person: model)
        self.viewModel = viewModel
    }
    
    @objc func showGreeting() {
        
        self.viewModel.showGreeting()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func customize() {
        
        self.btn.backgroundColor = UIColor.green
        self.btn.setTitleColor(UIColor.darkGray, for: .normal)
        self.btn.setTitle("PUSHME", for: .normal)
        lbl.text = ""
    }
}
