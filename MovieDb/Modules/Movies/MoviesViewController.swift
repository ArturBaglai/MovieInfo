import UIKit
class MoviesViewController: UIViewController, UITableViewDataSource {

    private var rootView: UITableView {
        view as! UITableView
    }
    
    override func loadView() {
        super.loadView()
        let view = UITableView()
        view.register(MovieCell.self, forCellReuseIdentifier: movieCellId)
        self.view = view
        self.title = "Movies"
        view.dataSource = self
    }
    
    private let movieCellId = "MovieCell"
    
    var data: [MoviesResponse] {
      var service = MoviesService()
       let response = service.readJsonData()
        return [response]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = (tableView.dequeueReusableCell(withIdentifier: movieCellId) ?? MovieCell()) as! MovieCell
        cell.titleLabel.text = "Movie \(data[indexPath.row].results.first!.name)"
        cell.descriptionLabel.text = "Description: \(data[indexPath.row].results.first!.overview)"
        cell.iconImageView.image = UIImage(named: data[indexPath.row].results.first!.backdropPath)
        return cell
    }
    
}
struct MovieModel {
    let name: String
    let desctiption: String
    let status: String
    let image: UIImage
}
struct Section {
    var status: String
}
