//
//  ViewController.swift
//  MiMeme
//
//  Created by Lucas on 6/1/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var imageViewHeart: UIImageView!
    @IBOutlet weak var sendMimosButton: UIButton!
    @IBOutlet weak var barMimos: UIProgressView!
    var barTimer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        barTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(bajarBarraMimos), userInfo: nil, repeats: true)
        
        
        
    }
    
    @objc
    func bajarBarraMimos(){
        barMimos.progress -= 0.005
        if(barMimos.progress == 0){
            barTimer?.invalidate()
            memeImageView.image=#imageLiteral(resourceName: "MemeAppIcon triste")
            sendMimosButton.isEnabled = false
            sendMimosButton.setTitle("Perdiste a meme...", for: .disabled)
        }
    }


    @IBAction func sendMimosPressed(_ sender: UIButton) {
        barMimos.progress += 0.05
    }
}

