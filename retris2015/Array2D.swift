//
//  Array2D.swift
//  retris2015
//
//  Created by Nick Ludlow on 12/10/2015.
//  Copyright © 2015 Nick Ludlow. All rights reserved.
//

//Observe for initial commit

class Array2D<T> {
    let columns: Int
    let rows: Int
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}