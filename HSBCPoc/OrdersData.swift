//
//  OrdersData.swift
//  HSBCPoc
//
//  Created by Pierre A on 16/02/2017.
//  Copyright © 2017 Pierre A. All rights reserved.
//

import Foundation
class OrdersData
{
    var sections = ["Imports", "Exports", "Events", ""]
    
    var Imports = ["2017/01/09 Import HSBC1", "2017/01/09 Import HSBC2", "2017/01/09 Import HSBC3", "2017/01/09 Import HSBC4"]
    
    var Exports = ["2017/01/09 Export HSBC1", "2017/01/09 Export HSBC2", "2017/01/09 Export HSBC3", "2017/01/09 Export HSBC4"]
        
    var AllEvents = ["First Event", "2017/01/09 Second Event", "2017/01/10 Third Event", "2017/01/16 Fourth Event", "2017/01/17 Fith Event"]
    
    var CurrentView = ["Imports", "Exports", "Events"]
    var CurrentSection = ""
    private static var singleton : OrdersData = OrdersData()
    
    public static var Singleton : OrdersData
    {
        get{ return  singleton}
    }
}
