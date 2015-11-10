//
//  ViewController.swift
//  pickerApp
//
//  Created by benjaminlo on 2015/11/10.
//  Copyright © 2015年 BAD Games (Benjamin Lo). All rights reserved.
//
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate
{
    
    @IBOutlet   var _itemLabel: UILabel!
                var _food = ["りんご", "バナナ", "ぶどう", "なし", "ブルーベリー"]

    /**
     * Initialization
     */
    override func viewDidLoad()
    {
        super.viewDidLoad()
        _itemLabel.text = "アイテム名" //        _itemLabel.text = _food[0]
    }

    
    /**
     * Memory warning
     */
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


    /**
     * Number of components in picker view
     */
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    
    /**
     *  Number of rows in the wheel .. so return number of items in food array
     */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return _food.count
    }
    
    
    /**
     * return row of all of the elements in _food array
     */
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return _food[row]
    }
    
    
    /**
     *  Show item selected
     */
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        var _itemSelected   = _food[row]
        _itemLabel.text     = _itemSelected
    }
}





