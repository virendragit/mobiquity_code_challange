//
//  BookmarkViewController.swift
//  Mobiquity_Code_Challange
//
//  Created by Virendra Gupta on 01/08/21.
//

import UIKit


class BookmarkViewController: UIViewController {
    
    @IBOutlet weak var cityTextfield: UITextField!
    var selectedCity : String?
    var listOfCity = ["Mumbai","New Delhi","Chennai","Kolkata","London","Newyork","Stockholm","Banglore","Vienna"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createAndSetupPickerView()
        self.dismissAndClosePickerView()
        
    }
    
    func createAndSetupPickerView(){
        let pickerview = UIPickerView()
        pickerview.delegate = self
        pickerview.dataSource = self
        self.cityTextfield.inputView = pickerview
        
    }
    
    func dismissAndClosePickerView(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action:#selector(self.dissmissAction))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        self.cityTextfield.inputAccessoryView = toolBar
    }
    
    @objc func dissmissAction(){
        self.view.endEditing(true)
    }
    
}

extension BookmarkViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.listOfCity.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.listOfCity[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedCity = self.listOfCity[row]
        self.cityTextfield.text = self.selectedCity
    }
}

