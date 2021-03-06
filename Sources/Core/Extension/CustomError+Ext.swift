//
//  File.swift
//  
//
//  Created by Mochamad Nurkhayal Kadafi on 30/12/20.
//

import Foundation

public enum URLError: LocalizedError {
  
  case invalidResponse
  case addressUnreacble(URL)
  
  public var errorDescription: String? {
    switch self {
    case .invalidResponse:
      return "The server responded with garbage"
    case .addressUnreacble(let url):
      return "\(url.absoluteString) is unreachable"
    }
  }
  
}

public enum DatabaseError: LocalizedError {
  
  case invalidInstance
  case requestFailed
  
  public var errorDescription: String? {
    switch self {
    case .invalidInstance:
      return "Database can't instance"
    case .requestFailed:
      return "Your request failed"
    }
  }
  
}
