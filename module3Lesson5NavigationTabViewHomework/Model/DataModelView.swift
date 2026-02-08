import Foundation

struct UserPhoto: Identifiable {
    var id: String = UUID().uuidString
    var userPhoto: String
    var dotUser: String
    var dotPromotion: String
    
    var teas: [String: Double]
    var foods: [String: Double] 
    
    var discount: String
    var imageDiscount: String
    
    var cupsCategories: String
    var burgerCategories: String
    
    var vectorModelCups: String
    var vectorModelBurger: String
    
    var dot: String
    var rating: String
}
