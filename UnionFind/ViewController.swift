//
//  ViewController.swift
//  UnionFind
//
//  Created by Arjun P A on 17/11/16.
//  Copyright © 2016 Arjun P A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let uf = UnionFind<Int>.init()
        uf.union(1, secondElem: 2)
        uf.union(3, secondElem: 4)
        uf.union(1, secondElem: 3)
        
        print(uf)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

