//
//  AddEditTableViewController.swift
//  emojis Discription
//
//  Created by Student on 21/08/25.
//

import UIKit

class AddEditTableViewController: UITableViewController {
    var emoji:Emoji?
    
    @IBOutlet var saveOutlet: UIBarButtonItem!
    @IBOutlet var symbolfield: UITextField!
    
    @IBOutlet var nameField: UITextField!
    
    @IBOutlet var usageField: UITextField!
    @IBOutlet var descriptionField: UITextField!
    init?(coder:NSCoder,emoji:Emoji?=nil){
        self.emoji=emoji
        super.init(coder:coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveOutlet.isEnabled=false
        if let emoji=emoji{
            updateUI(emoji:emoji)
        }
        
        updateTheButtonState()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func updateUI(emoji:Emoji){
        symbolfield.text=emoji.symbol
        nameField.text=emoji.name
        descriptionField.text=emoji.description
        usageField.text=emoji.usage
    }

    @IBAction func textFieldUpdated(_ sender: Any) {
        updateTheButtonState()
    }
    
    func updateTheButtonState(){
        guard symbolfield.text != ""
            && nameField.text != "" && descriptionField.text != "" && usageField.text != "" else{
            
            saveOutlet.isEnabled=false
            return
            
        }
        saveOutlet.isEnabled=true
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        let emoji=Emoji(symbol: symbolfield.text ?? "", name: nameField.text ?? "", description: descriptionField.text ?? "", usage: usageField.text ?? "")
        
        self.emoji=emoji
        performSegue(withIdentifier: "saveSegue", sender: emoji)
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
