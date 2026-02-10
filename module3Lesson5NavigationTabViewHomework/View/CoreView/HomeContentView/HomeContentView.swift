import SwiftUI

enum Section: String, CaseIterable {
    case beverages = "Beverages"
    case foods = "Foods"
}

struct HomeContentView: View {
    @ObservedObject var model: ContentViewModel
    @State private var selectedCategory: String = Section.beverages.rawValue
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                ProfileHeaderView(user: model.user)
            }
            
            VStack(spacing: 25) {
                PromotionView(dotPromotion: model.user)
                
                if selectedCategory == Section.beverages.rawValue {
                    ProductCollectionView(model: model.user)
                } else if selectedCategory == Section.foods.rawValue {
                    FoodCollectionView(model: model.user)
                }
            }
            
            VStack(spacing: 39) {
                CategoriesView(
                    model: model.user,
                    selectedCategory: $selectedCategory 
                )
            }
            
            VStack(spacing: 20){
                FeaturedBeveragesView(dotPromotion: model.user)
                
                if selectedCategory == Section.beverages.rawValue {
                    BeveragesView(model: model.user)
                } else if selectedCategory == Section.foods.rawValue {
                    FoodsView(model: model.user)
                }
            }
        }
    }
}

 








