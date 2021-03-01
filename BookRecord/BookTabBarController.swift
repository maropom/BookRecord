//
//  BookTabBarController.swift
//  BookRecord
//
//  Created by Mika Miyakawa on 2021/03/02.
//

import UIKit

class BookTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "plus_64")!, style: .done, target: self, action: #selector(addBookButtonTapped))
    }
    
    @objc private func addBookButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "BookSetting", bundle: nil)
        let BookSettingVC = storyboard.instantiateViewController(withIdentifier: "BookSettingViewController") as! BookSettingViewController
        self.present(BookSettingVC, animated: true, completion: nil)
    }
}
