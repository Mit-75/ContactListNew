//
//  DataStore.swift
//  ContactListNew
//
//  Created by Dmitry Parhomenko on 20.03.2024.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names =
    [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Nicola",
        "Bruse",
        "Allan",
        "Carl",
        "Sharon"
    ]
    let surnames =
    [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankin",
        "Williams",
        "Black",
        "Butler",
        "Robertson",
        "Murphy"
    ]
    let phoneNumbers =
    [
        "89128088801",
        "89121236543",
        "89128088802",
        "89045055801",
        "89046784804",
        "89128084721",
        "89048099991",
        "89047865432",
        "89122853015",
        "89120101023"
    ]
    let emails =
    [
        "qwerty@mail.ru",
        "asd@mail.ru",
        "rweq01@mail.ru",
        "ui02@mail.ru",
        "swbook39@mail.ru",
        "xiaomy@mail.ru",
        "clip@mail.ru",
        "get@mail.ru",
        "tab@mail.ru",
        "zodac@mail.ru"
    ]
    
    private init() {}
}


