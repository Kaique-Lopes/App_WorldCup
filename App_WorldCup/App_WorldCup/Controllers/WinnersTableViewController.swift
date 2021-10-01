//
//  WinnersTableViewController.swift
//  App_WorldCup
//
//  Created by Kaique Lopes de Oliveira on 30/09/21.
//

import UIKit

class WinnersTableViewController: UITableViewController {

    var worldCups: [WorldCup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWorldCups()
    }
    
    // MARK: - Function Loading World Cups
    
    func loadWorldCups() {
        let fileURL = Bundle.main.url(forResource: "winners.json", withExtension: nil)!
        let jsonData = try! Data(contentsOf: fileURL)
        do {
            worldCups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldCups.count
    }

    // MARK: - Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let worldCup = worldCups[indexPath.row]
        cell.textLabel?.text = "Copas \(worldCup.year) - \(worldCup.country)"
        cell.detailTextLabel?.text = "\(worldCup.winner) vs \(worldCup.vice)"
        cell.imageView?.image = UIImage(named: "\(worldCup.winner).png")
        return cell
    }
    
    

}
