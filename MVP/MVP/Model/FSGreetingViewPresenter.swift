//
//  File.swift
//  MVP
//
//  Created by Nathan Furman on 1/1/18.
//  Copyright © 2018 Nathan Furman. All rights reserved.
//

import Foundation

protocol FSGreetingViewPresenter {
    init(view: FSGreetingView, person: FSPerson)
    func showGreeting()
}
