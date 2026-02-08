import SwiftUI


struct HomeContentView: View {
    @ObservedObject var model: ContentViewModel
    @State private var selectedCategory: String = "Beverages"
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                ProfileHeaderView(user: model.user)
            }
            
            VStack(spacing: 25) {
                PromotionView(dotPromotion: model.user)
            }
            
            if selectedCategory == "Beverages" {
                ProductCollectionView(model: model.user)
            } else if selectedCategory == "Foods" {
                FoodCollectionView(model: model.user)
            }
            
            
            VStack(spacing: 39) {
                CategoriesView(
                    model: model.user,
                    selectedCategory: $selectedCategory 
                )
            }
            
            VStack(spacing: 20){
                FeaturedBeveragesView(dotPromotion: model.user)
            }
            
            if selectedCategory == "Beverages" {
                BeveragesView(model: model.user)
            } else if selectedCategory == "Foods" {
                FoodsView(model: model.user)
            }
        }
    }
}

 








