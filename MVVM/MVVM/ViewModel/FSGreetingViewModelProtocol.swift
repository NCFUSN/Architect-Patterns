//
//  GreetingViewModelProtocol.swift
//  MVVM
//
//  Created by Nathan Furman on 1/1/18.
//  Copyright © 2018 Nathan Furman. All rights reserved.
//

import Foundation

protocol FSGreetingViewModelProtocol: class {
    var greeting: String? { get }
    var greetingDidChange: ((FSGreetingViewModelProtocol) -> ())? { get set } // function to call when greeting did change
    init(person: FSPerson)
    func showGreeting()
}
