//
//  FSGreetingViewController.swift
//  MVP
//
//  Created by Nathan Furman on 1/1/18.
//  Copyright © 2018 Nathan Furman. All rights reserved.
//

import UIKit

class FSGreetingViewController: UIViewController, FSGreetingView {
    
    
    var presenter: FSGreetingViewPresenter!
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customize()
        
        self.btn.addTarget(self, action: #selector(FSGreetingViewController.didTapButton(button:)), for: .touchUpInside)
        
        //feed in data
        let model = FSPerson(firstName: "Tom", lastName: "Sawer")
        presenter = FSGreetingPresenter(view: self as FSGreetingView, person: model)
    }
    
    private func customize() {
        
        self.btn.backgroundColor = UIColor.green
        self.btn.setTitleColor(UIColor.darkGray, for: .normal)
        self.btn.setTitle("PUSHME", for: .normal)
        lbl.text = ""
    }
    
    @objc func didTapButton(button: UIButton) {
        self.presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        self.lbl.text = greeting
    }
}
