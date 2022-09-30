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
    private var viewModel: HomeViewModel = HomeViewModel(
        dotaServiceProtocol: DotaServicesDefaultNetworkModel(),
        userDefault: UserDefaults.standard
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar()
        configureButton()
        configureUserProfile()
        configureLogoutImage()
        configureTable()
        retrieveHeroes()
    }
    
    private func retrieveHeroes() {
        Task {
            let result = await viewModel.retrieveDotaHeroes()
            switch result {
            case .success( _):
                DispatchQueue.main.async {
                    self.transactionTableView.reloadData()
                }
            case .failure(let error):
                print("Terjadi error dengan pesan \(error)")
            }
        }
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
        transactionTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "TransactionCell")
        transactionTableView.register(UINib(nibName: "DotaHeroesTableViewCell", bundle: nil), forCellReuseIdentifier: "DotaHeroesCell")
        transactionTableView.rowHeight = UITableView.automaticDimension
        transactionTableView.dataSource = self
        transactionTableView.separatorStyle = .none
        transactionTableView.showsHorizontalScrollIndicator = false
        transactionTableView.showsVerticalScrollIndicator = false
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getDataLength()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel.getItems()[indexPath.row] {
        case .dotaHeroes(let heroes):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "DotaHeroesCell",
                for: indexPath
            ) as? DotaHeroesTableViewCell else { return UITableViewCell() }
                let hero = heroes[indexPath.row]
                cell.bind(hero)
                
                return cell
            
        case .dummyTransaction:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "TransactionCell",
                for: indexPath
            ) as? HomeTableViewCell else { return UITableViewCell() }
                let transaction = dummyTransaction[indexPath.row]
                cell.bind(transaction)
                
                return cell
        }
    }
    
}
