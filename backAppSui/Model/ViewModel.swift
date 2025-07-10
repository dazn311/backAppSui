//
//  ViewModel.swift
//  backAppSui
//
//  Created by Daz N311 on 10.07.2025.
//

import Foundation
import SwiftUI

@Observable
@MainActor
class ViewModel {
  enum FetchStatus {
    case notStarted
    case fetching
    case success
    case failed(error: Error)
  }
  
  private(set) var status: FetchStatus = .notStarted
  
//  private let fetcher = FetchRequest(sortDescriptors: <#[NSSortDescriptor]#>)

}
