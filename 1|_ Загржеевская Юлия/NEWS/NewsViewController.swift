//
//  NewsViewController.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 18.11.2021.
//

import UIKit

class NewsViewController: UITableViewController {

//   MARK: @IBOUTLETS
    
    @IBOutlet weak var newsTableView: UITableView!

    var newsPosts = NewsArray()
    var viewsCount = [IndexPath: Bool?]()
    let blankSpace = "" // replace "0" in lables with blanck space

//    MARK: OVERRIDE FUNCTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNewsPosts()
    }

//    MARK: PRIVATE FUNCTIONS
    private func configNewsPosts() {
        newsTableView.delegate = self
        newsTableView.dataSource = self
        newsTableView.register(UINib(nibName: "NewsViewCell", bundle: nil), forCellReuseIdentifier: "NewsCell")
        newsTableView.reloadData()
    }
}

// MARK: EXTENTIONS

extension NewsViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return newsPosts.groups.count
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if viewsCount[indexPath] == nil || viewsCount[indexPath]! == false {
            viewsCount[indexPath] = true
    }
}
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let newsCell = newsTableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as? NewsViewCell else {
                return UITableViewCell()
        }
            
    let newsRow = newsPosts.groups[indexPath.row]
            
    newsCell.nameGroupNews.text = newsRow.groupsNameForPost.name
    newsCell.avatarGroupNews.image = UIImage(named: newsRow.groupsNameForPost.imageName)
    newsCell.dataPostGroup.text = newsRow.date
    newsCell.timePostNews.text = newsRow.time
    newsCell.postTextGroupNews.text = newsRow.textOfPostNews
    newsCell.imageGroupPostNews.image = UIImage(named: newsRow.imagePost)
//        round photo group
    newsCell.avatarGroupNews.layer.cornerRadius = newsCell.avatarGroupNews.frame.height/2
//        shadow under the avatar of groups
    newsCell.shadowView.layer.cornerRadius = newsCell.avatarGroupNews.layer.cornerRadius
    newsCell.shadowView.clipsToBounds = false
    newsCell.shadowView.layer.shadowColor = UIColor.black.cgColor
    newsCell.shadowView.layer.shadowOpacity = 1
    newsCell.shadowView.layer.shadowOffset = CGSize.zero
    newsCell.shadowView.layer.shadowRadius = 6
        
//        gradient for Like and Share View
    let myGradient = CAGradientLayer()
        myGradient.colors = [UIColor.init(displayP3Red: 100, green: 98, blue: 80, alpha: 0.3).cgColor, UIColor.init(_colorLiteralRed: 162, green: 160, blue: 131, alpha: 0.003).cgColor]
        myGradient.locations = [ 0 as NSNumber, 1 as NSNumber]
        myGradient.startPoint = CGPoint.init(x: 0.35, y: 1)
        myGradient.endPoint = CGPoint(x: 1, y: 1)
    newsCell.likeShareViewPostNews.layer.insertSublayer(myGradient, at: 0)
    myGradient.frame = newsCell.likeShareViewPostNews.bounds
            
//        connection with buttons
    newsCell.shareIcon.addTarget(self, action: #selector(sharePushButton), for: .touchUpInside)
    newsCell.shareIcon.tag = indexPath.row
            
    newsCell.commentIcon.addTarget(self, action: #selector(commentPushButton), for: .touchUpInside)
    newsCell.commentIcon.tag = indexPath.row
            
//    MARK: Tap animation on avatar
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapIconNews(tapGestureRecognizer:)))
    newsCell.avatarGroupNews.isUserInteractionEnabled = true
    newsCell.avatarGroupNews.addGestureRecognizer(tapGestureRecognizer)
            
//    MARK: Views on posts
                            
    if viewsCount[indexPath] == nil || viewsCount[indexPath]! == false {
        newsRow.viewsOfUsers = 0
            } else {
                newsRow.viewsOfUsers = 1
    }
            
    newsCell.numberOfViews.text = String(describing: newsRow.viewsOfUsers)
            
// MARK: Comment Controller
            
    if newsRow.isCommented == true {
        newsCell.numberOfComments.text = "1"
        newsCell.numberOfComments.textColor = UIColor(red: 0.128, green: 0.126, blue: 0.102, alpha: 0.5)
        newsCell.commentIcon.tintColor = UIColor(red: 0.128, green: 0.126, blue: 0.102, alpha: 0.5)
            } else {
                newsCell.numberOfComments.text = blankSpace
                newsCell.numberOfComments.textColor = UIColor.white
                newsCell.commentIcon.tintColor = UIColor.white
            }

// MARK: Repost controller

    if newsRow.isShared == true {
        newsCell.numberOfReposts.text = "1"
        newsCell.numberOfReposts.textColor = UIColor(red: 0.128, green: 0.126, blue: 0.102, alpha: 0.5)
        newsCell.shareIcon.tintColor = UIColor(red: 0.128, green: 0.126, blue: 0.102, alpha: 0.5)
            } else {
                newsCell.numberOfReposts.text = blankSpace
                newsCell.numberOfReposts.textColor = UIColor.white
                newsCell.shareIcon.tintColor = UIColor.white
        }
                return newsCell
    }
    
    @objc func sharePushButton(_ sender: UIButton) {
        
        let shareButtonTag = sender.tag
        if newsPosts.groups[shareButtonTag].isShared == false {
                newsPosts.groups[shareButtonTag].isShared = true
            } else {
                    newsPosts.groups[shareButtonTag].isShared = false
            }
                    newsTableView.reloadData()
    }
    
    @objc func commentPushButton(_ sender: UIButton) {
        
        let commentButtonTag = sender.tag
        if newsPosts.groups[commentButtonTag].isCommented == false {
                newsPosts.groups[commentButtonTag].isCommented = true
                newsTableView.reloadData()
            } else {
                    newsPosts.groups[commentButtonTag].isCommented = false
            }
                        newsTableView.reloadData()
    }
    
//    MARK: Animation block
               
    @objc func tapIconNews(tapGestureRecognizer: UIGestureRecognizer) {
        guard let tapIconNews = tapGestureRecognizer.view as? UIImageView else {
                return
    }
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0,
            options: [.curveEaseInOut],
            animations: { [weak self]  in
                tapIconNews.layer.cornerRadius = tapIconNews.layer.frame.height/2
                tapIconNews.bounds.size = CGSize (width: 90, height: 90)},
            completion: nil)
    }
}

