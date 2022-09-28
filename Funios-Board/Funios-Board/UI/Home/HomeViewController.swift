//
//  HomeViewController.swift
//  Funios-Board
//
//  Created by Azri Muhammad on 13/08/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet private weak var userProfileImage: UIImageView!
    @IBOutlet private weak var userProfileBalance: UILabel!
    @IBOutlet private weak var logoutImage: UIImageView!
    @IBOutlet private weak var transferButton: UIButton!
    @IBOutlet private weak var topUpButton: UIButton!
    @IBOutlet private weak var transactionTableView: UITableView!
    @IBOutlet private weak var seeAllLabel: UILabel!
    @IBOutlet private weak var userProfileSectionView: UIView!
    private var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
        configureButton()
        configureUserProfile()
        configureLogoutImage()
        configureTable()
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.isHidden = true
    }
    
    private func configureUserProfile() {
        userProfileSectionView.layer.cornerRadius = 16
        userProfileSectionView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        userProfileSectionView.clipsToBounds = true
        userProfileImage.image = UIImage(named: "samuel")!
    }
    
    private func configureButton() {
        transferButton.layer.cornerRadius = 8
        topUpButton.layer.cornerRadius = 8
        transferButton.clipsToBounds = true
        topUpButton.clipsToBounds = true
    }
    
    private func configureLogoutImage() {
        logoutImage.isUserInteractionEnabled = true
        let onLogoutImageTapped = UITapGestureRecognizer(target: self, action: #selector(self.onLogoutImageTapped(_:)))
        
        logoutImage.addGestureRecognizer(onLogoutImageTapped)
    }
    
    @objc private func onLogoutImageTapped(_ sender: UITapGestureRecognizer? = nil) {
        navigationController?.popViewController(animated: true)
    }
    
    private func configureTable() {
        transactionTableView.register(
            UINib(nibName: "HomeTableViewCell", bundle: nil),
            forCellReuseIdentifier: "TransactionCell"
        )
        transactionTableView.dataSource = self
        transactionTableView.separatorStyle = .none
        transactionTableView.showsHorizontalScrollIndicator = false
        transactionTableView.showsVerticalScrollIndicator = false
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyTransaction.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "TransactionCell",
            for: indexPath
        ) as? HomeTableViewCell {
            let transaction = dummyTransaction[indexPath.row]
            
            cell.bind(transaction)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
