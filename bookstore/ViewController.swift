//
//  ViewController.swift
//  bookstore
//
//  Created by SAIPAVAN SIRIPURAM on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var img: UIImageView!
    
    var imageset:[UIImage] = [
        UIImage(named: "C++.jpg")!,
        UIImage(named: "C++.jpg")!,
        UIImage(named: "C++.jpg")!,
        UIImage(named: "C++.jpg")!
    ]
    
    @IBAction func b1(_ sender: Any) {
        let chandler = {
            (action:UIAlertAction)->Void in
            self.img.animationImages = self.imageset
            self.img.animationDuration = 10
            self.img.startAnimating()
            self.view.backgroundColor = UIColor(patternImage:UIImage( named:"C++.jpg")!)
        }
        let pythonhandler = {
            (action:UIAlertAction)->Void in
            self.img.image = #imageLiteral(resourceName: "python")
            self.view.backgroundColor = UIColor(patternImage:UIImage( named:"python.jpg")!)
            self.img.stopAnimating()
        }
        let javahandler = {
            (action:UIAlertAction)->Void in
            self.img.image = #imageLiteral(resourceName: "java")
            self.view.backgroundColor = UIColor(patternImage:UIImage( named:"java.jpg")!)
            self.img.stopAnimating()
        }
        let devopshandler = {
            (action:UIAlertAction)->Void in
            self.img.image = #imageLiteral(resourceName: "devops")
            self.view.backgroundColor = UIColor(patternImage:UIImage( named:"devops.jpg")!)
            self.img.stopAnimating()
        }
    
       
        
        let alert1 = UIAlertController(title: "Books", message: "Select Books", preferredStyle: .actionSheet)

        alert1.addAction(UIAlertAction(title: "C++", style: .default, handler: chandler))
        alert1.addAction(UIAlertAction(title: "Python", style: .default, handler: pythonhandler))
        alert1.addAction(UIAlertAction(title: "Java", style: .default, handler: javahandler))
        alert1.addAction(UIAlertAction(title: "DevOps", style: .default, handler: devopshandler))
        alert1.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        self.present(alert1, animated: true, completion: nil)



        }
    }
    


