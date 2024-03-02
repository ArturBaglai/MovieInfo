import Foundation

class MoviesService {
    public func readJsonData () -> MoviesResponse {
        var  response: MoviesResponse {
            let moviesResponse = Bundle.main.decode(type: MoviesResponse.self, file: "Movies.json")
                return moviesResponse
        }
        return response
     }
}

struct MoviesResponse: Codable {
    let page: Int
    let results: [Movie]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Movie: Codable {
    let adult: Bool
    let backdropPath: String
    let genreIDS: [Int]
    let id: Int
    let originCountry: [String]
    let originalLanguage, originalName, overview: String
    let popularity: Double
    let posterPath, firstAirDate, name: String
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview, popularity
        case posterPath = "poster_path"
        case firstAirDate = "first_air_date"
        case name
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
public extension Bundle {
    
    func decode <T: Decodable>(type: T.Type = T.self, file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
                fatalError("Could not find \(file) in bundle.")
            }
        guard let data = try? Data(contentsOf: url) else {
                fatalError("Could not load \(file) from bundle.")
            }
            let decoder = JSONDecoder()
        guard let result = try? decoder.decode(T.self, from: data) else {
                fatalError("Failed to load and decode JSON")
            }
        return result
    }
}

