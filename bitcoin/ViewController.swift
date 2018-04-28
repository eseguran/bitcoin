//
//  ViewController.swift
//  bitcoin
//
//  Created by Eddy Segura on 4/27/18.
//  Copyright © 2018 Eddy Segura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let precio = 15;
    var cash = 0;
    var cashback = 0;
    var cantidad = 0;
    var bought = 0;
    
    @IBOutlet weak var lblcompra: UILabel!
    
    @IBOutlet weak var lblcash: UILabel!
    @IBOutlet weak var txtcash: UITextField!
    
    func compra (){
        cash = Int(txtcash.text!)!;
        if(cash/precio>0){
            cantidad = cash/precio;
           
        }
        
        
    }
    
    func change (){
        cashback = (cash%precio)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func comprar(_ sender: Any) {
        
        compra();
        change();
        lblcompra.text = String(cantidad);
        lblcash.text = String(cashback);
        
    }
    
}

