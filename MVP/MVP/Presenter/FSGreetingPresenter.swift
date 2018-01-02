//
//  File.swift
//  MVP
//
//  Created by Nathan Furman on 1/1/18.
//  Copyright © 2018 Nathan Furman. All rights reserved.
//

import Foundation

protocol FSGreetingView: class {
    func setGreeting(greeting: String)
}

protocol FSGreetingViewPresenter {
    init(view: FSGreetingView, person: FSPerson)
    func showGreeting()
}

class FSGreetingPresenter : FSGreetingViewPresenter {
    
    unowned let view: FSGreetingView
    let person: FSPerson
    
    required init(view: FSGreetingView, person: FSPerson) {
        self.view = view
        self.person = person
    }

    func showGreeting() {
        
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
