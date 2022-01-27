//
//  MyGroupController.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 09.11.2021.
//

import UIKit
import SDWebImage

class MyGroupController: UITableViewController {
    
    @IBOutlet var tableViewMyGroups: UITableView!
    
    private var myGroupsAPI = MyGroupsAPI()
    private var myGroupsAPIArray: [MyGroups] = []
    
//    MARK: OVERRIDE FUNCTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myGroupsAPI.myGroupsRequestAlamofire { [weak self] myGroupsAPIArray in
            guard let self = self else { return }
            
            self.myGroupsAPIArray = myGroupsAPIArray
            self.tableViewMyGroups.reloadData()
    }
}
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myGroupsAPIArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "myGroupCell", for: indexPath) as? MyGroupCell else {
          return UITableViewCell()
      }

    let group = myGroupsAPIArray[indexPath.row]

    cell.grName.text = group.name
    cell.grAvatar.sd_setImage(with: URL.init(string: group.photo_200), completed: nil)
    cell.grAvatar.layer.cornerRadius =  cell.grAvatar.frame.height/2
    cell.grAvatar.contentMode = .scaleAspectFill
        
//    MARK: Tap animation on avatar
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapIconGroups(tapGestureRecognizer:)))
    cell.grAvatar.isUserInteractionEnabled = true
    cell.grAvatar.addGestureRecognizer(tapGestureRecognizer)
    cell.grAvatar.tag = indexPath.row

    return cell
    
    }
 
// MARK: @IBACTIONS
    
    @IBAction func addGroup (segue: UIStoryboardSegue) {

}
    
//  MARK: Animation block
            
    @objc func tapIconGroups(tapGestureRecognizer: UIGestureRecognizer) {
        guard let tapIconGroups = tapGestureRecognizer.view as? UIImageView else {
                return
        }
        UIView.animate(
            withDuration: 3.5,
            delay: 0,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0,
            options: [.curveEaseInOut],
            animations: { [weak self]  in
                tapIconGroups.layer.cornerRadius = tapIconGroups.layer.frame.height/2
                tapIconGroups.bounds = CGRect(x: 250, y: 250, width: 250, height: 250)},
            completion: nil)
    }
}
