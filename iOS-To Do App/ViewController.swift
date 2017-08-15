//
//  ViewController.swift
//  iOS-To Do App
//
//  Created by Laurie McGee on 8/15/17.
//  Copyright © 2017 Laurie McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
	@IBOutlet weak var txtInput: UITextField!
	@IBOutlet weak var txtOutput: UITextView!
	
	var items:[String] = []

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func addItem(_ sender: Any) {
		// check to see if there is actually text inside of the field
		if (txtInput.text! == "") {
			return
		}
		// append the array with unwrapped property
		items.append(txtInput.text!)
		txtOutput.text = ""
		for item in items {
			// put each to-do in the list out on a new line
			txtOutput.text.append("\(item)\n")
		 }
		// clear the input box
		txtInput.text = ""
		txtInput.resignFirstResponder()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	
	}


}

