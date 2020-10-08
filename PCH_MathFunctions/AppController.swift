//
//  AppController.swift
//  PCH_MathFunctions
//
//  Created by Peter Huber on 2020-10-07.
//

import Cocoa

class AppController: NSObject {

    @IBOutlet weak var mainView: NSView!
    
    var mValueLabels:[NSTextField] = []
    var pchValueLabels:[NSTextField] = []
    var gslValueLabels:[NSTextField] = []
    
    override func awakeFromNib() {
        
        var textLabels:[NSTextField] = []
        for nextView in self.mainView.subviews
        {
            if let nextLabel = nextView as? NSTextField
            {
                if nextLabel.tag >= 0
                {
                    textLabels.append(nextLabel)
                }
            }
        }
        
        textLabels.sort(by: {$0.tag < $1.tag})
        
        for nextLabel in textLabels
        {
            if nextLabel.tag < 10
            {
                self.mValueLabels.append(nextLabel)
            }
            else if nextLabel.tag < 20
            {
                self.pchValueLabels.append(nextLabel)
            }
            else
            {
                self.gslValueLabels.append(nextLabel)
            }
        }
    }
    
    @IBAction func handleKm(_ sender: Any) {
        
        
    }
    
}
