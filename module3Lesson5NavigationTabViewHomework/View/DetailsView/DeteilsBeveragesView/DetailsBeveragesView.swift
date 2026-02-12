import SwiftUI

struct DetailsBeveragesView: View {
    let teaName: String
    let price: Double
    let priceTag: String
    
    @State private var selectedSize: PortionSizeBeverages = .medium
    @State private var countBeverages: Int = 1
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                GeometryReader { geometry in
                    Image(teaName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: 366)
                        .clipped()
                        .frame(maxWidth: .infinity)
                }
                .frame(height: 366)
                
                VStack(alignment: .center, spacing: 20) {
                    Text(teaName)
                        .font(.system(size: 18, weight: .bold))
                        .padding(.top, 16)
                    
                    Text("“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia”")
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 28)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    HStack(alignment: .center, spacing: 10) {
                        ForEach(PortionSizeBeverages.allCases, id: \.self) { size in
                            Button {
                                selectedSize = size
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 22)
                                        .frame(width: 64, height: 64)
                                        .foregroundStyle(selectedSize == size
                                                         ? .rootTextMenu
                                                         : .rootTextMenuColorOpacity)
                                    
                                    Text(size.shortName)
                                        .font(Font.system(size: 16, weight: .bold))
                                        .foregroundStyle(selectedSize == size
                                                         ? .indigo
                                                         : .black)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding(.horizontal, 20)
                    
                    HStack(alignment: .center) {
                        HStack(spacing: 14) {
                            Image(priceTag)
                                .resizable()
                                .frame(width: 24, height: 24)
                            
                            Text("\(String(format: "%.1f", price * selectedSize.rawValue))р")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.rootColorApplication)
                        }
                        .fixedSize()
                        
                        Spacer(minLength: 20)
                        
                        CounterView(count: $countBeverages)
                    }
                    .padding(.horizontal, 28)
                    .padding(.vertical, 20)
                    .frame(maxWidth: 400)
                    .frame(maxWidth: .infinity) 
                    
                    Text("Click next to confirm your order")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.black)
                        .padding(.top, 10)
                    
                    Button {
                        // Действия для дальнейшего оформления в корзину
                    } label: {
                        HStack(spacing: 14) {
                            Text("Place order")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            Text("\(String(format: "%.1f", Double(countBeverages) * price * selectedSize.rawValue))р") // Жена сказала что так лучше
                                .font(.headline)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 16, weight: .bold))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 18)
                        .frame(maxWidth: .infinity)
                        .background(.rootColorApplication)
                        .cornerRadius(22)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                    .frame(maxWidth: 500) // ✅ Ограничиваем кнопку
                    .frame(maxWidth: .infinity)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .ignoresSafeArea(edges: [.top, .horizontal])
        .navigationTitle(teaName)
        .navigationBarTitleDisplayMode(.inline)
    }
}
