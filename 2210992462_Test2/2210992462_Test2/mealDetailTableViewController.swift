//
//  mealDetailTableViewController.swift
//  2210992462_Test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class mealDetailTableViewController: UITableViewController {
    var mealTiming: String? // Passed from the first view controller

        // Sample meal data
    let meals: [String: [Meal]] = [
        "Breakfast": [
            Meal(name: "Pancakes", calorieCount: 350, time: 15, thumbnailImage:  "pancakes"),
            Meal(name: "Omelette", calorieCount: 250, time: 10, thumbnailImage:  "omelette"),
            Meal(name: "Smoothie", calorieCount: 200, time: 5, thumbnailImage:  "smoothie")
        ],
        "Lunch": [
            Meal(name: "Grilled Chicken", calorieCount: 400, time: 25, thumbnailImage:  "grilledChicken"),
            Meal(name: "Caesar Salad", calorieCount: 350, time: 15, thumbnailImage:  "caesarSalad"),
            Meal(name: "Pasta", calorieCount: 500, time: 30, thumbnailImage: "pasta")
        ],
        "Dinner": [
            Meal(name: "Steak", calorieCount: 600, time: 40, thumbnailImage: "steak"),
            Meal(name: "Grilled Salmon", calorieCount: 550, time: 25, thumbnailImage:  "grilledSalmon"),
            Meal(name: "Vegetable Stir-fry", calorieCount: 300, time: 20, thumbnailImage: "vegetableStirFry")
        ]
    ]

    var selectedMeals: [Meal] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        if let mealTiming = mealTiming {
            selectedMeals = meals[mealTiming] ?? []
            title = "\(mealTiming) Meals" // Set the title to the selected timing
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return selectedMeals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let meal = selectedMeals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = "Calories: \(meal.calorieCount) • Time: \(meal.time) min"
        cell.textLabel?.text = meal.thumbnailImage

        return cell
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
