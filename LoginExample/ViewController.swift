//
//  ViewController.swift
//  LoginExample
//
//  Created by Berat Yavuz on 20.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    @IBOutlet weak var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        //eğer kullanıcı adı ve sifre değerlei bos değerinden farklıysa direkt öbür sayfaya geçiş yap
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos"  {
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
        }
    }

    @IBAction func girisYap(_ sender: Any) {
    
        if let ka = textFieldKullaniciAdi.text,let s = textFieldSifre.text{
            
            if s == "123456" && ka == "admin"{
                d.setValue(ka, forKey: "kullaniciAdi")
                d.setValue(s, forKey: "sifre")
                performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
            }
            else{print("hatalı giriş")}
            
            
        }
    
    
    }
    
    
    // app çalıştığında nav controller gizlenir
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    //başka sayfaya geçtiğinde nav tekrar görünür olur
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

