//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by David Inyangson on 8/28/19.
//  Copyright © 2019 David Inyangson. All rights reserved.
//

import Foundation

class Stopwatch {
  
  init(isRunning: Bool) {
    self.isRunning = isRunning
  }
  private var startTime: NSDate?
  public var isRunning: Bool
  
  func start() {
    startTime = NSDate()
    isRunning = true

  }
  
  func stop() {
    startTime = nil
    isRunning = false

  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
    let diffMilliseconds = Int((Double(elapsedTime) - Double(Int(elapsedTime))) * 10)
    let diffSec = Int(elapsedTime.truncatingRemainder(dividingBy: 60))
    let diffMinutes = Int(elapsedTime / 60)
    let answer = String(format: "%02d:%02d.%01d", diffMinutes, diffSec, diffMilliseconds)
    print(elapsedTime)
    print(diffSec)
    return answer
  }

  
}
