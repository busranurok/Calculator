//
//  ViewController.swift
//  Calculator
//
//  Created by Yeni Kullanıcı on 14.07.2020.
//  Copyright © 2020 Busra Nur OK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func showAlert(_ sender: Any) {
        // create the alert
        let alert = UIAlertController(title: "Calculator", message: "It allows you to perform your simple operations practically without wasting much time.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    /*var a : Int!
    var b : Int!*/
    var operationType : String!
    var txtField : String!
    
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   //return ifadesi okunduktan sonra o metoddaki alt tarafta bulunan kodlar okunmaz. Return den sonra 0 ya da herhangibir int sayı girilmesi gerekir. Eğer dönüş değeri void ise direkt return demek doğru olacaktır.
    
    //Aşağıdaki yapının cevabı 0 dır. Çünkü ilk return den sonraki kodlar okunmaz.
   /*func dondur()-> Int
    {
        var a=0
        var b=1
        
        
        return 0
        
        var top=a+b
        
        
        
        var sonuc=top/2
        return sonuc
    }*/
    
    func alertShow(message: String){
        let alert = UIAlertController(title: "Warning!", message: message, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func textEditingChange(_ sender: Any) {
         txtField = txtNumber.text!
        
        if txtField.rangeOfCharacter(from: NSCharacterSet.decimalDigits) == nil{
            txtNumber.text = nil
            
            alertShow(message: "Please, input a number!")
        }
    }
    
    @IBAction func textEditingChanged2(_ sender: Any) {
        txtField = txtNumber2.text!
        
        if txtField.rangeOfCharacter(from: NSCharacterSet.decimalDigits) == nil {
            txtNumber2.text = nil
            
            alertShow(message: "Please, input a number!")
        }
    }
    
    @IBAction func result(_ sender: Any) {

        var rslt : Int!=0
        let  a : Int! = Int(txtNumber.text!)
        let  b : Int! = Int(txtNumber2.text!)
                
                if operationType == "addition" {
                    rslt = sumFunction(num1:a!, num2:b!)
                }
                else if operationType == "subtraction"{
                    rslt = subFunction(num1:a!, num2:b!)
                }
                else if operationType == "multiplication"{
                    rslt = multiplicationFunction(num1:a!, num2:b!)
                }
                else if operationType == "division"{
                    if b == 0 {
                        alertShow(message: "This is a division by zero error.")
                        return
                        //codes under return. the work in that method ends.
                    }
                    //If we don't write return, use else.
                    /*else{
                        rslt = divisionFunction(num1:a!, num2:b!)
                    }*/
                    
                    
                }
        //You should always assign the first value above to the value printed on the screen.
                lblResult.text = "Result of the Process = " + String(rslt) + " ."
            }
    
    
    @IBAction func btnSum(_ sender: Any) {
        operationType = "addition"
    }
    
    @IBAction func btnSubtraction(_ sender: Any) {
        operationType = "subtraction"
    }
    @IBAction func btnMultiplication(_ sender: Any) {
        operationType = "multiplication"
    }
    
    @IBAction func btndivicion(_ sender: Any) {
        operationType = "division"
    }
    
    func sumFunction(num1 : Int, num2 : Int) -> Int  {
        return num1 + num2
    }
    
    func subFunction(num1 : Int, num2 : Int) -> Int {
        
        return num1 - num2
    }
    
    func multiplicationFunction(num1 : Int, num2 : Int) -> Int {
        return num1 * num2
    }

    func divisionFunction(num1 : Int, num2 : Int) -> Int {
        return num1 / num2
    }
    
}

