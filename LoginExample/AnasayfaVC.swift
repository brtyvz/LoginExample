//
//  AnasayfaVC.swift
//  LoginExample
//
//  Created by Berat Yavuz on 20.12.2021.
//

import UIKit

class AnasayfaVC: UIViewController {
    let d = UserDefaults.standard
    @IBOutlet weak var labelSonuc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        labelSonuc.text = ka
    }
    

   
    @IBAction func cikisYap(_ sender: Any) {
        //ka ve s değerlerini silicez
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        //anasayfaya atar
        exit(-1)
    }
    
}
