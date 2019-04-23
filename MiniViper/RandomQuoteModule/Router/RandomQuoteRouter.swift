//
//  RandomQuoteRouter.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import UIKit

class RandomQuoteRouter: RandomQuoteRouterProtocol {
  static func createRandomQuoteModule() -> UIViewController {
    let quoteViewController = QuoteViewController()
    let presenter: RandomQuotePresenterProtocol & RandomQuoteInteractorOutputProtocol = RandomQuotePresenter()
    let intercator: RandomQuoteInteractorInputProtocol = RandomQuoteInteractor()
    let router: RandomQuoteRouterProtocol = RandomQuoteRouter()
    
    quoteViewController.presenter = presenter
    presenter.view = quoteViewController
    presenter.interactor = intercator
    presenter.router = router
    intercator.presenter = presenter
    
    return quoteViewController
  }
}
