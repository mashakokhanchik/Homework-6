import Foundation

final class DetailInteractor {

  weak var output: DetailInteractorOutput?

  private let artistId: Int

  init(artistId: Int) {
    self.artistId = artistId
  }
}

extension DetailInteractor: DetailInteractorInput {

  func obtainDetails() {
    output?.presentDetails(for: getArtist())
  }
}

private func getArtist() -> ListViewModel.Artist {
    return ListViewModel.Artist(
    identifier: 1111,
    name: "John Lennon",
    albums: [
        ListViewModel.Artist.Album(
        name: "Imagine",
        songs: [
            ListViewModel.Artist.Album.Song(name: "Imagine", duration: 180),
            ListViewModel.Artist.Album.Song(name: "Crippled Inside", duration: 227),
            ListViewModel.Artist.Album.Song(name: "Jealous Guy", duration: 254),
            ListViewModel.Artist.Album.Song(name: "It's So Hard", duration: 205),
            ListViewModel.Artist.Album.Song(name: "I Don't Want to Be a Soldier", duration: 365),
            ListViewModel.Artist.Album.Song(name: "Gimme Some Truth", duration: 196),
            ListViewModel.Artist.Album.Song(name: "Oh My Love", duration: 170),
            ListViewModel.Artist.Album.Song(name: "How Do You Sleep?", duration: 336),
            ListViewModel.Artist.Album.Song(name: "How?", duration: 223),
            ListViewModel.Artist.Album.Song(name: "Oh Yoko!", duration: 260)
        ],
        date: Date(timeIntervalSince1970: 53222400)
      )
    ]
    )
}
