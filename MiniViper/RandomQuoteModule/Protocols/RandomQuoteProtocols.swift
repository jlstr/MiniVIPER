//
//  RandomQuoteProtocols.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import UIKit

// Presenter => View
protocol RandomQuoteViewProtocol: class {
  var presenter: RandomQuotePresenterProtocol? { get set }
  func showQuote(_ quote: String)
}

// View => Presenter
protocol RandomQuotePresenterProtocol: class {
  var view: RandomQuoteViewProtocol? { get set }
  var interactor: RandomQuoteInteractorInputProtocol? { get set }
  var router: RandomQuoteRouterProtocol? { get set }
  func viewWillAppear()
}

// Presenter => Interactor
protocol RandomQuoteInteractorInputProtocol: class {
  var presenter: RandomQuoteInteractorOutputProtocol? { get set }
  func getQuote()
}

// Interactor => Presenter
protocol RandomQuoteInteractorOutputProtocol: class {
  func didRetrieveQuote(_ quote: String)
}

// Presenter => Router
protocol RandomQuoteRouterProtocol: class {
  static func createRandomQuoteModule() -> UIViewController
}
