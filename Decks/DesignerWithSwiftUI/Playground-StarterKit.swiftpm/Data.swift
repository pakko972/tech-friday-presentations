import Foundation

struct AccountItem: Identifiable {
    let id: String
    let name: String
    let kind: String
    let currentAmount: Decimal
    let futureAmount: Decimal
    let currencyCode: String
    
    var anonymizedID: String {
        "**** \(id.suffix(4))"
    }
}

let accounts = [
    AccountItem(
        id: "FR7630004016080001010781118",
        name: "Compte chèque *7811* SCI SEL PEPE",
        kind: "Compte chèque",
        currentAmount: 2_425.46,
        futureAmount: 2_425.46,
        currencyCode: "EUR"
    ),
    AccountItem(
        id: "FR7630004016080001007289118",
        name: "Compte chèque *2891* DI OR 92",
        kind: "Compte chèque",
        currentAmount: 0,
        futureAmount: 0,
        currencyCode: "EUR"
    ),
    AccountItem(
        id: "FR7630004016080001005630418",
        name: "Compte chèque *6304* SCI PORTO",
        kind: "Compte chèque",
        currentAmount: 26.63,
        futureAmount: 26.63,
        currencyCode: "EUR"
    ),
    AccountItem(
        id: "FR7630004002740001119207358",
        name: "Compte chèque *2073* OP EUROS",
        kind: "Compte chèque",
        currentAmount: 59_298.19,
        futureAmount: 59_298.19,
        currencyCode: "EUR"
    ),
    AccountItem(
        id: "FR7630004031200001003139185",
        name: "Compte à vue *1391* PVL THB",
        kind: "Compte chèque",
        currentAmount: 186_673.59,
        futureAmount: 186_673.59,
        currencyCode: "THB"
    ),
    AccountItem(
        id: "FR7630004031200001002587643",
        name: "Compte à vue *5876* PVL USD",
        kind: "Compte chèque",
        currentAmount: 212_960.04,
        futureAmount: 212_960.04,
        currencyCode: "USD"
    ),
    AccountItem(
        id: "FR7630004031200001071400316",
        name: "Compte chèque *4003* PVL EUROS",
        kind: "Compte chèque",
        currentAmount: 23_472.01,
        futureAmount: 23_472.01,
        currencyCode: "EUR"
    ),
    AccountItem(
        id: "FR7630004016080004371278218",
        name: "Compte chèque *2782* OP",
        kind: "Compte chèque",
        currentAmount: 44_888.10,
        futureAmount: 44_888.10,
        currencyCode: "EUR"
    ),
    AccountItem(
        id: "FR7630004002740001005012750",
        name: "Compte à vue *0127* OP USD",
        kind: "Compte chèque",
        currentAmount: 2_634.89,
        futureAmount: 2_634.89,
        currencyCode: "USD"
    ),
    AccountItem(
        id: "FR7630004003640001018063914",
        name: "Compte chèque *0639* ENFANTINES",
        kind: "Compte chèque",
        currentAmount: 17_812.76,
        futureAmount: 17_812.76,
        currencyCode: "EUR"
    ),
]
