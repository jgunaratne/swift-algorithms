//
//  Fibonacci.swift
//  Algorithms
//
//  Created by Junius Gunaratne on 4/11/18.
//  Copyright © 2018 Junius Gunaratne. All rights reserved.
//

import Foundation

class Fibonacci {
  
  func fibonacci(i: Int) -> Int {
    if (i == 0) {
      return 0
    } else if (i == 1) {
      return 1
    }
    return fibonacci(i: i - 1) + fibonacci(i: i - 2)
  }
  
  var memo = [0 : 0]
  
  func dynamicFibonacci(i: Int) -> Int {
    if (i == 0) {
      return 0
    } else if (i == 1) {
      return 1
    }
    if (memo[i] == nil) {
      memo[i] = dynamicFibonacci(i: i - 1) + dynamicFibonacci(i: i - 2)
    }
    return memo[i]!
  }
  
}
