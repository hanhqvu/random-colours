//
//  ColoursDetailVC.swift
//  Random Colours
//
//  Created by Hanh Vu on 2022/12/23.
//

import UIKit

class ColoursDetailVC: UIViewController {

    var colour: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .blue
        // Do any additional setup after loading the view.
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
