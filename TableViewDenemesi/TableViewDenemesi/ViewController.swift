import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var denemeTableView: UITableView!
    
    let rickArray = ["Rick Sanchez", "Morty Smith", "Summer Smith", "Beth Smith", "Jerry Smith"]
    let imageArray = ["rick", "morty", "summer", "beth", "jerry"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        denemeTableView.register(TestTableViewCell.nib(), forCellReuseIdentifier: TestTableViewCell.identifier)
        print("ekremForkDenemesi")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rickArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = denemeTableView.dequeueReusableCell(withIdentifier: TestTableViewCell.identifier) as! TestTableViewCell
        cell.nameRick.text = rickArray[indexPath.row]
        cell.imageRick.image = UIImage(named: imageArray[indexPath.row])
        return cell
    }

}

