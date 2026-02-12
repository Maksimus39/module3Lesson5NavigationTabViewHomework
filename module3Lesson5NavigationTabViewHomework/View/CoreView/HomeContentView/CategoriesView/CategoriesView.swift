import SwiftUI

struct CategoriesView: View {
    let model: CoreUserData
    @Binding var selectedCategory: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Categories")
                .font(.system(size: 18, weight: .regular))
            
            LazyVGrid(
                columns: [
                    GridItem(.flexible(), spacing: 20),
                    GridItem(.flexible(), spacing: 20)
                ],
                spacing: 20
            ) {
                Button {
                    selectedCategory = Section.beverages.rawValue
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 22)
                            .fill(.rootColorApplication)
                            .frame(height: 156)
                            .overlay(
                                ZStack(alignment: .leading) {
                                    HStack {
                                        Spacer()
                                        VStack {
                                            Spacer()
                                            Image(model.vectorModelCups)
                                                .resizable()
                                                .frame(width: 101, height: 101)
                                                .offset(x: -2, y: -2)
                                        }
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 16) {
                                        Image(model.cupsCategories)
                                            .resizable()
                                            .frame(width: 38, height: 38)
                                        
                                        VStack(alignment: .leading, spacing: 4) {
                                            Text("Beverages")
                                                .font(.system(size: 16, weight: .regular))
                                                .foregroundColor(.white)
                                            
                                            Text("\(model.teas.count) Menus")
                                                .font(.system(size: 14, weight: .regular))
                                                .foregroundColor(.rootTextMenu)
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 18)
                            )
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
                Button {
                    selectedCategory = Section.foods.rawValue
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 22)
                            .fill(.rootColorApplication)
                            .frame(height: 156)
                            .overlay(
                                ZStack(alignment: .leading) {
                                    HStack {
                                        Spacer()
                                        VStack {
                                            Spacer()
                                            Image(model.vectorModelBurger)
                                                .resizable()
                                                .frame(width: 101, height: 101)
                                                .offset(x: -2, y: -2)
                                        }
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 16) {
                                        Image(model.burgerCategories)
                                            .resizable()
                                            .frame(width: 38, height: 38)
                                        
                                        VStack(alignment: .leading, spacing: 4) {
                                            Text("Foods")
                                                .font(.system(size: 16, weight: .regular))
                                                .foregroundColor(.white)
                                            
                                            Text("\(model.foods.count) Menus")
                                                .font(.system(size: 14, weight: .regular))
                                                .foregroundColor(.rootTextMenu)
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(.leading, 18)
                            )
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding()
    }
}
