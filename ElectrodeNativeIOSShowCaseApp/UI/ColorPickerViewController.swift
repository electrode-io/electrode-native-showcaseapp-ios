/*
 * Copyright 2017 WalmartLabs
 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 
 * http://www.apache.org/licenses/LICENSE-2.0
 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import UIKit

class ColorPickerViewController: ERNBaseViewController {
    static let identifier = "colorpicker"
    @IBOutlet weak var hexValueBackgroundView: UIView!
    @IBOutlet weak var hexValueLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.addColorPicker()
        self.registerForColorPickerEvents()
    }
    
    /**
     Creates a view that houses the color picker mini app and places it (more or less) in the top half
     of this view controller's view.
     */
    private func addColorPicker()
    {
        // Create a view controller to house the color picker mini app.
        let miniAppViewController = ElectrodeReactNative.sharedInstance().miniApp(withName: "colorpickerdemominiapp", properties: nil)
        
        // Set the color picker's frame to take up the top half of the screen minus some offset for the top bar.
        var frame = self.view.frame
        frame.origin.y += 20
        frame.size.height = self.view.frame.size.height / 2
        miniAppViewController.view.frame = frame
        
        // Add the mini app's view to our view.
        self.view.addSubview(miniAppViewController.view)
        
        // Round the background view for the hex value display.
        self.hexValueBackgroundView.layer.cornerRadius = self.hexValueBackgroundView.frame.size.height / 2
    }
    
    /**
     Registers for events from the color picker mini app and updates the UI based on the selected color
     when such events are triggered.
     */
    private func registerForColorPickerEvents()
    {
        ColorPickerAPI().events.addColorSelectedEventListener { (colorAsHexString) in
            if let colorAsHexString = colorAsHexString as? String
            {
                self.hexValueLabel.text = colorAsHexString
                self.view.backgroundColor = self.hexStringToUIColor(hex: colorAsHexString)
            }
        }
    }
    
    /**
     Takes a hex string and returns a UIColor.
     Copied from https://stackoverflow.com/a/27203691/845431
     */
    private func hexStringToUIColor (hex:String) -> UIColor
    {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#"))
        {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6)
        {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
