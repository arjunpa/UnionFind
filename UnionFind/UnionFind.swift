//
//  UnionFind.swift
//  UnionFind
//
//  Created by Arjun P A on 17/11/16.
//  Copyright © 2016 Arjun P A. All rights reserved.
//

import UIKit

class UnionFind<T:protocol<Equatable,Comparable>>:CustomStringConvertible {
    
    var connectables:Array<Array<T>> = []
    internal init(){
    
    }
    
    func union(firstElem:T, secondElem:T){
        
      
        
        if !isConnected(firstElem, secondElem: secondElem){
            
      
            self.connect(firstElem, secondElem: secondElem)
            
        }
        
    }
    
    private func connect(firstElem:T, secondElem:T){
        var indexFirsTElem:Int?
        var indexSecondElem:Int?
        
        for (index,value) in connectables.enumerate(){
            if value.contains(firstElem){
                indexFirsTElem = index
            }
            
            if value.contains(secondElem){
                indexSecondElem = index
            }
            if indexFirsTElem != nil && indexSecondElem != nil{
                break
            }
        }
        
        if indexFirsTElem != nil && indexSecondElem != nil{
            let removedElem = connectables.removeAtIndex(indexSecondElem!)
            connectables[indexFirsTElem!].appendContentsOf(removedElem)
        }
        
        else if indexFirsTElem != nil && indexSecondElem == nil{
            connectables[indexFirsTElem!].append(secondElem)
        }
        else if indexSecondElem != nil && indexFirsTElem == nil{
            connectables[indexSecondElem!].append(firstElem)
        }
        else if indexSecondElem == nil && indexFirsTElem == nil{
            connectables.append([firstElem,secondElem])
        }
        
    }
 
    func isConnected(firstElem:T, secondElem:T) -> Bool{
        
        
        for structure in connectables{
            
            if structure.contains(firstElem) && structure.contains(secondElem){
                return true
            }
        }
        return false
    }
    
   internal var description: String{
        get{
            
            return connectables.description
        }
    }

}

internal func ==<T:Equatable>(lhs: T, rhs: T) -> Bool{

    return lhs == rhs
}
 
