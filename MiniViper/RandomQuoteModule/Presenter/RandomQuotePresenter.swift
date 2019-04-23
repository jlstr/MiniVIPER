//
//  RandomQuotePresenter.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import Foundation

class RandomQuotePresenter: RandomQuotePresenterProtocol {
  var view: RandomQuoteViewProtocol?
  var interactor: RandomQuoteInteractorInputProtocol?
  var router: RandomQuoteRouterProtocol?
  
  func viewWillAppear() {
    interactor?.getQuote()
  }
}

extension RandomQuotePresenter: RandomQuoteInteractorOutputProtocol {
  func didRetrieveQuote(_ quote: String) {
    view?.showQuote(quote)
  }
}
