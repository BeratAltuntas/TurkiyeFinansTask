//
//  HomeScreenVC.swift
//  TRFinansIslemlerScreen
//
//  Created by BERAT ALTUNTAŞ on 9.08.2022.
//

import UIKit

// MARK: - HomeScreenVC
final class HomeVC: BaseViewController {
    var viewModel: HomeVM! {
        didSet {
            viewModel.delegate = self
        }
    }
    @IBOutlet private weak var transactionsTableView: UITableView!
    @IBOutlet private weak var labelTitle: UILabel!
    private var tableViewCellArray = [TableViewCellModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBarButtonItems()
        registerTableViewCell()
        loadUIAttiributes()
    }
    
    private func setupBarButtonItems() {
        let leftButton = CustomBarButtonItem(with: UIImage(named: VCConstants.iconUser), isBellOn: false)
        navigationItem.leftBarButtonItem = leftButton
        
        let rightButton = CustomBarButtonItem(with: UIImage(named: VCConstants.iconBellOn), isBellOn: true)
        navigationItem.rightBarButtonItem = rightButton
        
        leftButton.tapAction = leftBarButton_TUI
        rightButton.tapAction = rightBarButton_TUI
    }
    
    private func registerTableViewCell() {
        transactionsTableView.register(UINib(nibName: VCConstants.transactionCellNibName, bundle: nil), forCellReuseIdentifier: VCConstants.transactionTableViewCellIdentifier)
    }
    
    private func loadUIAttiributes() {
        labelTitle.text = "İşlemler"
        tableViewCellArray.append(TableViewCellModel(title: "Para Transferi", iconName: VCConstants.iconParaGonder))
        
        tableViewCellArray.append(TableViewCellModel(title: "Ödemeler", iconName: VCConstants.iconFatura))
        
        tableViewCellArray.append(TableViewCellModel(title: "Alış Satış", iconName: VCConstants.iconAlSat))
        
        tableViewCellArray.append(TableViewCellModel(title: "Talimatlar ve Kayıtlı İşlemler", iconName: VCConstants.iconCek))
        
        tableViewCellArray.append(TableViewCellModel(title: "Karekod İşlemleri", iconName: VCConstants.iconQR))
        
    }
    
    @objc private func leftBarButton_TUI() {
        // going to person page
    }
    
    @objc private func rightBarButton_TUI() {
        // going to notification page
    }
}

// MARK: - extension: HomeScreenVMDelegate
extension HomeVC: HomeVMDelegate {
    
}

// MARK: - extension: UITableViewDataSource

extension HomeVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableViewCellArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: VCConstants.transactionTableViewCellIdentifier, for: indexPath) as! TransactionsTableViewCell
        cell.titleLabel.text = tableViewCellArray[indexPath.row].title
        cell.cellImageView.image = UIImage(named: tableViewCellArray[indexPath.row].iconName)
        
        let image = UIImage(systemName: "chevron.right")
        let checkmark  = UIImageView(frame:CGRect(x:0, y:0, width:(image?.size.width)!, height:(image?.size.height)!));
        checkmark.image = image
        cell.tintColor = UIColor(named: VCConstants.tabbarItemBackgroundColor)
        checkmark.tintColor = UIColor(named: VCConstants.tabbarItemBackgroundColor)
        cell.accessoryView = checkmark
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
}

// MARK: - extension: UITableViewDelegate
extension HomeVC: UITableViewDelegate {
}
