// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * 2
}
// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var noodles_layers = 0
    var sauce_layers = 0
    for layer in layers {
        if layer == "noodles" {
            noodles_layers += 1
        } else if layer == "sauce" {
            sauce_layers += 1
        }
    }
    return (noodles: noodles_layers * 3, sauce: Double(sauce_layers) * 0.2)
}
// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    amount.sauce = amount.sauce * 33.814
}
// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    func numberOfMozzarella(_ layers: [String]) -> Int {
        layers.filter { $0 == "mozzarella" }.count
    }
    func numberOfRicotta(_ layers: [String]) -> Int {
        layers.filter { $0 == "ricotta" }.count
    }
    func numberOfBéchamel(_ layers: [String]) -> Int {
        layers.filter { $0 == "béchamel" }.count
    }
    func numberOfSauce(_ layers: [String]) -> Int {
        layers.filter { $0 == "sauce" }.count
    }
    func numberOfMeat(_ layers: [String]) -> Int {
        layers.filter { $0 == "meat" }.count
    }
    let whiteIngredients = numberOfMozzarella(layers) + numberOfRicotta(layers) + numberOfBéchamel(layers)
    let redIngredients = numberOfMeat(layers) + numberOfSauce(layers)
    return redIngredients >= whiteIngredients}
