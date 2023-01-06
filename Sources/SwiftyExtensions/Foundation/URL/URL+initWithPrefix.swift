import UIKit

public extension URL {
    static func initWithPrefix(string urlString: String) -> URL? {
        if urlString.hasPrefix("https://") || urlString.hasPrefix("http://"){
            let url = URL(string: urlString)
            return url
        } else {
            let correctedURL = "https://\(urlString)"
            let url = URL(string: correctedURL)
            return url
        }
    }
}
