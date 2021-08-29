//
//  Users.swift
//  LoginApp
//
//  Created by Виктор Чуриков on 30.08.2021.
//

import Foundation

struct Users{
    let login: String
    let password: String
    let userFullName: [Person]
    
    static func getUsers () -> [Users] {
        [
            Users(
                login: "Admin",
                password: "Admin111",
                userFullName: [
                    Person(
                        userName: "Viktor",
                        userSurname: "Churikov",
                        age: 29,
                        interest: [
                            Interest(
                                music: [
                                    Music(
                                        genre: "Rock",
                                        artist: [
                                            Artist(artistName: "Би-2"),
                                            Artist(artistName: "Сплин"),
                                            Artist(artistName: "Slot")
                                        ]),
                                    Music(
                                        genre: "Dubstep",
                                        artist: [
                                            Artist(artistName: "Skrillex"),
                                            Artist(artistName: "FWLR")
                                        ])
                                ],
                                hobby: "Игра на гитаре",
                                favoriteMovie: [
                                    Movie(
                                        genre: "Комедия",
                                        movieTitle: [
                                            MovieTitle(movieTitle: "1+1"),
                                            MovieTitle(movieTitle: "Силиконовая долина")
                                        ]),
                                    Movie(
                                        genre: "Ужасы",
                                        movieTitle: [
                                            MovieTitle(movieTitle: "Зеркала"),
                                            MovieTitle(movieTitle: "Поворот не туда")
                                        ])
                                ])
                        ])
                ])
        ]
    }
}

struct Person {
    let userName: String
    let userSurname: String
    let age: Int
    let interest: [Interest]
}

struct Interest {
    let music: [Music]
    let hobby: String
    let favoriteMovie: [Movie]
}

struct Music {
    let genre: String
    let artist: [Artist]
}

struct Movie {
    let genre: String
    let movieTitle: [MovieTitle]
}

struct Artist {
    let artistName: String
}

struct MovieTitle {
    let movieTitle: String
}
