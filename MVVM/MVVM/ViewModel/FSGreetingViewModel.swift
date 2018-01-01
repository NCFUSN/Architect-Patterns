//
//  FSGreetingViewModel.swift
//  MVVM
//
//  Created by Nathan Furman on 1/1/18.
//  Copyright © 2018 Nathan Furman. All rights reserved.
//

import Foundation

class FSGreetingViewModel : FSGreetingViewModelProtocol {
    let person: FSPerson
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    var greetingDidChange: ((FSGreetingViewModelProtocol) -> ())?
    required init(person: FSPerson) {
        self.person = person
    }
    @objc func showGreeting() {
        self.greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
    }
}
