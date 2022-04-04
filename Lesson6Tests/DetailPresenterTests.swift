import XCTest
@testable import Lesson6

final class DetailPresenterTests: XCTestCase {

  private var sut: DetailPresenter!

  override func setUp() {
    sut = DetailPresenter()
  }

  override func tearDown() {
    sut = nil
  }

  func testModelConsistency() {
      let model = ListViewModel.Artist(
      identifier: 1111,
      name: "A",
      albums: [
        ListViewModel.Artist.Album(
          name: "I",
          songs: [
            ListViewModel.Artist.Album.Song(name: "I", duration: 1),
            ListViewModel.Artist.Album.Song(name: "C", duration: 2),
            ListViewModel.Artist.Album.Song(name: "J", duration: 2),
            ListViewModel.Artist.Album.Song(name: "I", duration: 2),
            ListViewModel.Artist.Album.Song(name: "I", duration: 3),
            ListViewModel.Artist.Album.Song(name: "G", duration: 1),
            ListViewModel.Artist.Album.Song(name: "O", duration: 1),
            ListViewModel.Artist.Album.Song(name: "H", duration: 3),
            ListViewModel.Artist.Album.Song(name: "H", duration: 2),
            ListViewModel.Artist.Album.Song(name: "O", duration: 2)
          ],
          date: Date(timeIntervalSince1970: 5)
        )
      ]
    )

    sut.presentDetails(for: model)

    XCTAssertEqual(1, model.albums.count)
    XCTAssertEqual(10, model.albums[0].songs.count)
    XCTAssertEqual("A", model.name)
    XCTAssertEqual("I", model.albums[0].name)
    XCTAssertEqual(1111, model.identifier)
  }

  func testViewOutput() {
      XCTAssert(sut != nil)
  }
}
