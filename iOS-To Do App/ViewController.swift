//
//  ViewController.swift
//  iOS-To Do App
//
//  Created by Laurie McGee on 8/15/17.
//  Copyright © 2017 Laurie McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var myLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		myLabel.text = "Changed with Code!"
	}
	@IBAction func didTapButton(_ sender: Any) {
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

