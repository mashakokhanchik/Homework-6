import UIKit

class ListViewController: UIViewController {

    private let tableView: UITableView = UITableView(frame: .zero, style: .plain)
    var output: ListViewOutput?
    var router: ListRouterInput?
    
    private var tableContents: [ListViewModel.Artist] = []

  override func viewDidLoad() {
    super.viewDidLoad()
      configureUI()
      constrainTableView()
  }

}

  // MARK: - UITableViewDelegate & UITableViewDataSource Implementation

extension ListViewController: UITableViewDelegate, UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      //return tableContents.artists.count ?? 0
      return tableContents.count
  }

    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      //cell.accessoryType = .disclosureIndicator
      //cell.textLabel?.text = tableContents[indexPath.row].name

    return cell
  }

}

extension ListViewController: ListViewInput {
    
    func reload(_ viewModels: ListViewModel) {
        title = "Artist"
        tableView.reloadData()
    }
    
}

// MARK: - Configuration

private extension ListViewController {
    
    func configureUI() {
        view.backgroundColor = .white
        //title = "Artists"
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        constrainTableView()
    }
    
    func constrainTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}
