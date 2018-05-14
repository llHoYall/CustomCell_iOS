//
//  TableDetailViewController.swift
//  CustomCell_iOS
//
//  Created by hoya kim on 14/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class TableDetailViewController: UIViewController {
	@IBOutlet weak var imgView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var amountLabel: UILabel!
	@IBOutlet weak var valueLabel: UILabel!
	
	var detailData = [String: String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		imgView.image = UIImage(named: detailData["image"]!)
		imgView.contentMode = UIViewContentMode.scaleAspectFill
		imgView.layer.cornerRadius = 15.0
		imgView.layer.masksToBounds = true
		nameLabel.text = detailData["name"]
		amountLabel.text = detailData["amount"]
		valueLabel.text = detailData["value"]
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// Get the new view controller using segue.destinationViewController.
		// Pass the selected object to the new view controller.
	}
	*/
}
