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
    let interactor: RandomQuoteInteractorInputProtocol = RandomQuoteInteractor()
    let router: RandomQuoteRouterProtocol = RandomQuoteRouter()
    
    quoteViewController.presenter = presenter
    presenter.view = quoteViewController
    presenter.interactor = interactor
    presenter.router = router
    interactor.presenter = presenter
    
    return quoteViewController
  }
}
