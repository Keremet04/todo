//
//  ViewController.swift
//  contacts
//
//  Created by Керемет  on 28/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactsTableView: UITableView!

    var test: [String] = ["clean the house", "throw the trash ", "do homework", "go to gym ", "go to grocery", "wash the car"]
    
    
   
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "contact_cell")
        
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
        
//
       navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addTap))
    }


    @objc func addTap(){
        
        
        let
       // test.append("new task")

     //   test.insert("new task", at: 0)
       
        contactsTableView.reloadData()
    }
}









extension ViewController: UITableViewDataSource{
    
    
    
    
    
    
    
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        
        return test.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
       

        let cell = tableView.dequeueReusableCell(withIdentifier: "contact_cell", for: indexPath)
       // cell.textLabel?.text = contacts[indexPath.row]
        cell.textLabel?.text = test[indexPath.row]
        cell.imageView?.image = UIImage(systemName: "circle")
       
        cell.backgroundColor = .white
        
        return cell
    }


}

 
extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    //
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        let vc = storyboard?.instantiateViewController(identifier: "detail_vc") as! DetailViewController
    //
    
    
    //        let person = test[indexPath.row]
    //        vc.name = person
    //
    //
    //        navigationController?.pushViewController(vc, animated: true)
    //    }
    //}
    //
    }
