//
//  ColoursTableVC.swift
//  Random Colours
//
//  Created by Hanh Vu on 2022/12/23.
//

import UIKit

class ColoursTableVC: UIViewController {
    
    var colours: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColourCell"
    }
    
    enum Segues {
        static let toDetails = "ToColoursDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColours()
        // Do any additional setup after loading the view.
    }
    
    func addRandomColours() {
        for _ in 0..<50 {
            colours.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColoursDetailVC
        destVC.colour = sender as? UIColor
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
       
        cell.backgroundColor = colours[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: Segues.toDetails, sender: colour)
    }
}
