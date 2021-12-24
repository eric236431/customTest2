//
//  customView.swift
//  customTest2
//
//  Created by imac on 2021/12/2.
//

import UIKit

class customView: UIView {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var delegate: customViewListener?
    
    var cellTag: String = ""
    
    var tapped: ((String, UILabel) -> (Void))? = nil

    override func awakeFromNib() {
        addXibView()
    }
    
    @IBAction func btnAction(_ sender: Any) {
        //delegate?.target(tag: cellTag, label: labelText)
        tapped?(cellTag, labelText)
    }
    
    func setInit(tag: String, text: String, image: UIImage){
        labelText.text = text
        imageView.image = image
        cellTag = tag
    }
    
    
}


//只有這個檔可以呼叫
fileprivate extension customView {
    //加入畫面
    func addXibView() {
        
        if let loadView = Bundle(for: customView.self).loadNibNamed("customView", owner: self, options: nil)?.first as? UIView{
            addSubview(loadView)
            loadView.frame = bounds
        }
        
    }
}

@objc protocol customViewListener: NSObjectProtocol{
    func target(tag: String, label: UILabel)
}
