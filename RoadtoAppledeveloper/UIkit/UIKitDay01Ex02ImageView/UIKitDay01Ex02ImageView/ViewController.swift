//
//  ViewController.swift
//  UIKitDay01Ex02ImageView
//
//  Created by 김규철 on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imageOn: UIImage?
    var imageOff: UIImage?
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnZoom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // #imageLiteral()도 사용 가능
        imageOn = UIImage(named: "lamp_on")
        imageOff = UIImage(named: "lamp_off")
        
        imgView.image = imageOff
        _ = UIImage(systemName: "plus.magnifyingglass")
    }
    
    @IBAction func btnZoom(_ sender: UIButton) {
        
        if isZoom {
            print("축소 됩니다.")
            btnZoom.setTitle("확대", for: .normal)
            //처리 후에 isZoom 상태병경
            //isZoom = false
            
        } else {
            print("확대 됩니다.")
            btnZoom.setTitle("축소", for: .normal)
            //iszoom = true
        
        }
        
        isZoom = !isZoom
    }
    
    @IBAction func imgView(_ sender: UISwitch) {
        
        imgView.image = imageOn ?? imageOff
    }
    


}

