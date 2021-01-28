//
//  ViewController.swift
//  sample
//
//  Created by Evanson on 22/1/21.
//  Copyright © 2021 Highly Succeed. All rights reserved.
//

import UIKit

struct Person {
    let name: String
    let image:  String
    let details: String
    let time: String

}




class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var listOfPerson = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listOfPerson = [Person (name: "Mia", image:"sample1", details: "Lorem Ipsum", time: "1 hour ago"),
                        Person (name: "Chris", image:"sample2", details: "Lorem Ipsum", time: "1 minute ago"),
                        Person (name: "Rob", image:"sample3", details: "Lorem Ipsum", time: "12 hours ago"),
                        Person (name: "Johnny", image:"sample4", details: "Lorem Ipsum", time: "6 hours ago"),
                        Person (name: "Nicholas", image:"sample5", details: "Lorem Ipsum", time: "9 hours ago")]
 
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPerson.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellID", for: indexPath) as! CustomCell
        
        let person = listOfPerson[indexPath.row]
    
        cell.titleLabel.text = person.name
        cell.customImageView.image = UIImage(named: person.image)
        cell.detailsLabel.text = person.details
        cell.timeLabel.text = person.time
    
        cell.titleLabel.textColor = UIColor.red
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    


}
class CustomCell: UITableViewCell{
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
}

