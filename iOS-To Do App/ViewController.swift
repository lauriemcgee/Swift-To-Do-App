//
//  ViewController.swift
//  iOS-To Do App
//
//  Created by Laurie McGee on 8/15/17.
//  Copyright © 2017 Laurie McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
	@IBOutlet weak var myTextField: UITextField!
	@IBOutlet weak var myLabel: UILabel!
	// the ! means I know otherLabel can possibly be nil, but it's not going to be nil
	@IBOutlet var otherLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Assign ViewController as a delegate of the text field in StoryBoard, current, or with:
		// myTextField.delegate = self
	}
	
	@IBAction func didTapOtherButton(_ sender: Any) {
		let name = myTextField.text!
		otherLabel.text = "Hi \(name)!"
		myTextField.resignFirstResponder()
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		view.endEditing(true)
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		myTextField.resignFirstResponder()
		return false
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

