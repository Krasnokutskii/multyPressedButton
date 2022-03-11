//
//  ViewController.swift
//  multyPressedButton
//
//  Created by Yaroslav Krasnokutskiy on 07.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCellTableViewCell
        //additional
        cell.id.text = "\(data[indexPath.row].id)"
        cell.dueDate.text = "\(data[indexPath.row].dueDate)"
        cell.status.text = "\(data[indexPath.row].status)"
        return cell
    }
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dueDatebutton: UIButton!
    @IBOutlet weak var statusButton: UIButton!
    @IBOutlet weak var tabelView: UITableView!
    
    var dueDateGesture: UITapGestureRecognizer?
    var statusGesture: UITapGestureRecognizer?
    var gestureIndex: Int?
    
    var data = Order.TestOrders
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.delegate = self
        tabelView.dataSource = self
        setGestures()
    }
    func setGestures(){
        dueDateGesture = UITapGestureRecognizer(target: self, action: #selector(gesturePresssed(index:)))
        statusGesture = UITapGestureRecognizer(target: self, action: #selector(gesturePresssed(index:)))
        dueDateGesture?.numberOfTapsRequired = 2
        dueDateGesture?.numberOfTouchesRequired = 1
       
        
        statusGesture?.numberOfTapsRequired = 2
        statusGesture?.numberOfTouchesRequired = 1
        
        dueDatebutton?.addGestureRecognizer(dueDateGesture!)
        statusButton?.addGestureRecognizer(statusGesture!)
        dueDateGesture?.isEnabled = false
        statusGesture?.isEnabled = false
    }
    
    @objc private func gesturePresssed(index: Int){
        if let index = gestureIndex{
            label.text = "\(index)"
            print("index: \(index)")
        }
    }
    var ascending = true
    var ascendingType: Bool?  = nil
    @IBAction func sortButtonPressed(_ sender: UIButton) {
        if sender.tag == 0{
            sortArray(index: 0, ascending:ascending , ascendingType: nil)
        }else if sender.tag == 1{
            sortArray(index: 1, ascending: ascending, ascendingType: nil)
        }else if sender.tag == 2{
            sortArray(index: 2, ascending: ascending, ascendingType: nil)
            
        }
        
    }
    
    private func sortArray(index: Int, ascending: Bool, ascendingType: Bool?){
        if index == 0{
            data = data.sorted{ ascending ? $0.id < $1.id : $0.id > $0.id }
        }else if index == 1{
            data = data.sorted{ ascending ? $0.dueDate < $1.dueDate : $0.dueDate > $0.dueDate }
        }else if index == 2{
            data = data.sorted{ ascending ? $0.status < $1.status : $0.status > $0.status }
        }else if index == 3{
            
        }else if index == 4{
            
        }
        
        tabelView.reloadData()
    }

}
