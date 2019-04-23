//
//  RandomQuoteGenerator.swift
//  MiniViper
//
//  Created by jose on 4/23/19.
//  Copyright © 2019 jose. All rights reserved.
//

import Foundation

class RandomQuoteGenerator {
  
  // MARK: Initializers
  private init() {}
  
  // MARK: variables
  private let quotes: [String] = [
    "Our greatest glory is not in never falling, but in rising every time we fall.",
    "All our dreams can come true, if we have the courage to pursue them.",
    "It does not matter how slowly you go as long as you do not stop.",
    "Everything you’ve ever wanted is on the other side of fear.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "Hardships often prepare ordinary people for an extraordinary destiny.",
    "Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine.",
    "I learned that courage was not the absence of fear, but the triumph over it. The brave man is not he who does not feel afraid, but he who conquers that fear.",
    "There is only one thing that makes a dream impossible to achieve: the fear of failure.",
    "It’s not whether you get knocked down. It’s whether you get up.",
    "Your true success in life begins only when you make the commitment to become excellent at what you do.",
    "Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going."
  ]
  
  // MARK: Singleton Instance
  public static let shared = RandomQuoteGenerator()
  
  func getRandomQuote() -> String {
    return quotes.randomElement()!
  }
}
