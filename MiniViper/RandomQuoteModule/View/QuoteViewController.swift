//
//  QuoteViewController.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
  
  // MARK: Instance Vars
  var quoteLabel: UILabel!

  var quote: String? {
    didSet {
      if let quote_ = self.quote {
        quoteLabel.text = quote_
      }
    }
  }
  
  // MARK: Presenter
  var presenter: RandomQuotePresenterProtocol?
  
  // MARK: Lifecycle Methods
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initView()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    presenter?.viewWillAppear()
  }
  
  private func initView() {
    self.view.backgroundColor = .groupTableViewBackground
    quoteLabel = UILabel()
    view.addSubview(quoteLabel)
    
    quoteLabel.font = UIFont.systemFont(ofSize: 25.0)
    quoteLabel.textColor = .blue
    quoteLabel.numberOfLines = 0
    quoteLabel.textAlignment = .center
    quoteLabel.translatesAutoresizingMaskIntoConstraints = false
    
    let constraints = [
      NSLayoutConstraint(item: quoteLabel!, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.8, constant: 1.0),
      NSLayoutConstraint(item: quoteLabel!, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0),
      NSLayoutConstraint(item: quoteLabel!, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: -30.0)
    ]
    
    NSLayoutConstraint.activate(constraints)
  }
}

extension QuoteViewController: RandomQuoteViewProtocol {
  func showQuote(_ quote: String) {
    self.quote = quote
  }
}
