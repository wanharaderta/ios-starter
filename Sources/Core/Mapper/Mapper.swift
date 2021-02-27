//
//  File.swift
//  
//
//  Created by Wanhar on 24/02/21.
//

import Foundation

public protocol Mapper {
  associatedtype Response
  associatedtype Entity
  associatedtype Domain
}
