//
//  ViewController.swift
//  UserDefaultsPractice
//
//  Created by Beshoy Atef on 26/07/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var ageTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserData()
}

    @IBAction func saveButtonPressed(_ sender: Any) {
        if nameTF.text?.isEmpty == true {
            createAlert(message: "من فضلك ادخل الاسم")
        } else if let email = emailTF.text, !email.contains("@") || !email.contains(".") {
            createAlert(message: "من فضلك ادخل ايميل صحيح")
        } else if let age = ageTF.text, Int(age) == nil {
            createAlert(message: "من فضلك ادخل عمر صحيح")
        } else {
            successValidation()
        }
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        deleteData()
        clearFields()
        createAlert(message: "تم مسح البيانات")
    }
    
    
    func createAlert(message:String) {
        let alert = UIAlertController(title: "تحذير", message: message, preferredStyle: .alert)
        let OKButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(OKButton)
        present(alert, animated: true)
    }
    func successValidation () {
        let alert = UIAlertController(title: " ", message: "تم حفظ البيانات بنجاح ✅", preferredStyle: .alert)
        let OKButton = UIAlertAction(title: "OK", style: .default) { (action) in
            self.storeData()
        }
        alert.addAction(OKButton)
        present(alert, animated: true)
    }
    
    func storeData () {
        UserDefaults.standard.set(nameTF.text, forKey: "NAME_KEY")
        UserDefaults.standard.set(emailTF.text, forKey: "EMAIL_KEY")
        UserDefaults.standard.set(ageTF.text, forKey: "AGE_KEY")
    }
    
    func loadUserData() {
        nameTF.text = UserDefaults.standard.value(forKey: "NAME_KEY") as? String
        emailTF.text = UserDefaults.standard.value(forKey: "EMAIL_KEY") as? String
        ageTF.text = UserDefaults.standard.value(forKey: "AGE_KEY") as? String

    }
    
    func deleteData() {
        UserDefaults.standard.removeObject(forKey: "NAME_KEY")
        UserDefaults.standard.removeObject(forKey: "EMAIL_KEY")
        UserDefaults.standard.removeObject(forKey: "AGE_KEY")
    }
    
    func clearFields() {
        nameTF.text = ""
        emailTF.text = ""
        ageTF.text = ""
    }
}

