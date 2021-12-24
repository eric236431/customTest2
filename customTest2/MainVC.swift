//
//  MainVC.swift
//  customTest2
//
//  Created by imac on 2021/12/2.
//
//gittest
//gittest2
import UIKit

class MainVC: UIViewController {


    @IBOutlet weak var customUIView: customView!
    @IBOutlet weak var cusView: customView!
    @IBOutlet weak var cView: customView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customUIView.delegate = self
        cusView.delegate = self
        cView.delegate = self
        
        customUIView.setInit(tag: "A", text: "A", image: UIImage(systemName: "person")!)
        
        cusView.setInit(tag: "B", text: "B", image: UIImage(systemName: "pencil")!)
        
        cView.setInit(tag: "C", text: "C", image: UIImage(systemName: "scribble")!)
        
        
        customUIView.tapped = {
            print("\($0) a")
            ($1 as UILabel).text = "jjk"
        }
        
//        cusView.tapped = {
//            print("\($0) b")
//        }
//        cView.tapped = {
//            print("\($0) c")
//        }
        
    }



}

extension MainVC: customViewListener{
    func target(tag: String, label: UILabel) {
        switch tag{
        case "A":
            print("a")
            label.text = "\(label.text!)\(label.text!)"
        case "B":
            print("b")
        case "C":
            print("c")
        default:
            print("nil")
        }
    }
    
    
    
    
}
