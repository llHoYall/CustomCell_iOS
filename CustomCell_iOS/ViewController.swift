//
//  ViewController.swift
//  CustomCell_iOS
//
//  Created by hoya kim on 14/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
	@IBOutlet weak var tableView: UITableView!
	
	var item = [[String: String]]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let item1 = ["name": "Apple", "image": "apple", "amount": "6", "value": "3000"]
		let item2 = ["name": "Blueberry", "image": "blueberry", "amount": "10", "value": "30000"]
		let item3 = ["name": "Carrot", "image": "carrot", "amount": "13", "value": "5000"]
		let item4 = ["name": "Cherry", "image": "cherry", "amount": "1", "value": "2000"]
		let item5 = ["name": "Grape", "image": "grape", "amount": "13", "value": "1000"]
		let item6 = ["name": "Kiwi", "image": "kiwi", "amount": "2", "value": "15000"]
		let item7 = ["name": "Lemon", "image": "lemon", "amount": "3", "value": "6000"]
		let item8 = ["name": "Lime", "image": "lime", "amount": "4", "value": "4000"]
		let item9 = ["name": "Meat", "image": "meat", "amount": "5", "value": "2000"]
		let item10 = ["name": "Strawberry", "image": "strawberry", "amount": "7", "value": "8000"]
		let item11 = ["name": "Tomato", "image": "tomato", "amount": "30", "value": "3000"]
		let item12 = ["name": "Vegetable", "image": "vegetable", "amount": "40", "value": "7000"]
		let item13 = ["name": "Watermelon", "image": "watermelon", "amount": "5", "value": "10000"]
		
		item = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13]
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "showDetail" {
			(segue.destination as! TableDetailViewController).detailData = item[tableView.indexPathForSelectedRow!.row]
		}
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return item.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
		let dict = item[indexPath.row]
		cell.backgroundColor = UIColor.clear
		cell.nameLabel.text = dict["name"]
		cell.amountLabel.text = dict["amount"]
		cell.valueLabel.text = dict["value"]
		cell.imgView.image = UIImage(named: dict["image"]!)
		return cell
	}
}

