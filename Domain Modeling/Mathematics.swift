//
//  Mathematics.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/20/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

protocol Mathematics {
    func + (left: Self, right: Self) -> Self
    func - (minuend: Self, subtrhend: Self) ->Self
}