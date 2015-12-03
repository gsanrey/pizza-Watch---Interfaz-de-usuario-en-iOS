//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Gabriel Urso Santana Reyes on 26/11/15.
//  Copyright © 2015 Gabriel Urso Santana Reyes. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tamaños: WKInterfacePicker!
    var tamañoSeleccionado : Int = 0

    
    @IBAction func cambiaTamaño(value: Int) {
        self.tamañoSeleccionado = value
        NSLog("List Picker: \(self.tamañoSeleccionado) selected")
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let item1 = WKPickerItem()
        item1.title = "chica"
        let item3 = WKPickerItem()
        item3.title = "mediana"
        let item2 = WKPickerItem()
        item2.title = "grande"
        self.tamaños.setItems([item1,item2,item3])
        self.tamaños?.setSelectedItemIndex(1)

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
