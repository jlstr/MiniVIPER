//
//  RandomQuoteInteractor.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import Foundation

class RandomQuoteInteractor: RandomQuoteInteractorInputProtocol {
  // MARK: - instance vars
  var presenter: RandomQuoteInteractorOutputProtocol?
  
  func getQuote() {
    // Get Quote from "DataStore" (DataStore Could be anything, CoreData, LocalStore, etc)
    let quote = RandomQuoteGenerator.shared.getRandomQuote()
    presenter?.didRetrieveQuote(quote)
  }
}
