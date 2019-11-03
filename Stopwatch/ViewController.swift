//
//  ViewController.swift
//  Stopwatch
//
//  Created by David Inyangson on 8/28/19.
//  Copyright © 2019 David Inyangson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let stopwatch = Stopwatch(isRunning: false)
  
  @objc func updateElapsedTimeLabel(timer: Timer) {
    if stopwatch.isRunning {
      elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
    } else {
      timer.invalidate()
    }
  }
  @IBOutlet weak var elapsedTimeLabel: UILabel!


  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  @IBAction func startButtonTapped(sender: UIButton) {
    // code to start the clock
    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
    stopwatch.start()
  }

  @IBAction func stopButtonTapped(sender: UIButton) {
    // code to stop the clock
    stopwatch.stop()
  }


}

