//
//  PhoneTableViewController.swift
//  HW2
//
//  Created by Тимур Хайруллин on 03.07.2022.
//

import UIKit

struct Phone {
    let name: String
    
}

class PhoneTableViewController: UITableViewController {
    
    let phone: [Phone] = [
        Phone(name: "Petya"),
        Phone(name: "Vasya"),
        Phone(name: "Olga"),
        Phone(name: "Anna")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return phone.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "PhoneTableViewCell",
            for: indexPath
        ) as? PhoneTableViewCell else { return UITableViewCell() }
        
        cell.nameLabel.text = phone[indexPath.row].name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if phone[indexPath.row].name == "Petya" {
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "NextViewController")
                else {return}
            present(nextVC, animated: true)
        }
            
        if phone[indexPath.row].name == "Vasya" {
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "NextViewController2")
                else {return}
            present(nextVC, animated: true)
        }
        
        if phone[indexPath.row].name == "Olga" {
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "NextViewController3")
                else {return}
            present(nextVC, animated: true)
        }
        
        if phone[indexPath.row].name == "Anna" {
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "NextViewController4")
                else {return}
            present(nextVC, animated: true)
        }
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
