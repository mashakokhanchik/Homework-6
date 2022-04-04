import Foundation

// MARK: - Module I/O

public protocol DetailModuleInput {}

public protocol DetailModuleOutput {}

// MARK: - Module Components

protocol DetailViewInput: AnyObject {

  func upadateDetails(_ details: DetailViewModel)
}

protocol DetailViewOutput {

  func viewIsReady()
}

protocol DetailInteractorInput {

  func obtainDetails()
}

protocol DetailInteractorOutput: AnyObject {

    func presentDetails(for artist: ListViewModel.Artist)
}

protocol DetailRouterInput {}
protocol DetailRouterOutput: AnyObject {}
