import UIKit

class DynamicEmbeddedViewController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    let data = ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Last"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        // Resize our constraint
        let totalHeight = data.count * TableViewCell.CELL_HEIGHT
        tableViewHeight.constant = CGFloat(totalHeight)
        self.updateViewConstraints()
        //in a real app a delegate call back would be good to update the constraint on the scrollview
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.dataLabel.text = data[indexPath.row]
        return cell
    }
    
}
