//
//  AuthManager.swift
//  Spotify
//
//  Created by user on 28.07.21.
//

import Foundation

final class AuthManager {

    static let shared = AuthManager()

    struct Constants {
        static let clientId = "194cd1795c5e4317a045d5a05fcb4b61"
        static let clientSecret = "730fbae634924fdc955a3bea8f9090a3"
    }
    private init() {}

    public var signInURL: URL? {
        let redirectURI = "https://www.linkedin.com/in/nikolai-beklemishchev-1420651b4/"
        let scopes = "user-read-private"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientId)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }

    var isSignedIn: Bool {
        return false
    }

    private var accessToken: String? {
        return nil
    }

    private var refreshToken: String? {
        return nil
    }

    private var tokenExperationDate: Date? {
        return nil
    }

    private var shouldRefreshToken: Bool {
        return false
    }

    public func exchangeCodeForToken(code: String, completion: @escaping ((Bool) -> Void)) {
        // Get Token
    }
    
    public func refreshAccessToken() {

    }

    private func cashToken() {

    }
}
