import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabBarView()
        }
        .padding()
    }
}

struct TabBarView: View {
    @State private var selectedTab = 0
    
    let tabs = ["home", "ic_cart", "Vector", "setting"]
    
    var body: some View {
        VStack(spacing: 0) {
            // Основной контент (можно заменить на нужные экраны)
            GeometryReader { geometry in
                ZStack {
                    switch selectedTab {
                    case 0:
                        Text("House Content")
                    case 1:
                        Text("Cart Content")
                    case 2:
                        Text("Vector Content")
                    case 3:
                        Text("Setting Content")
                    default:
                        Text("Default Content")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
            // Кастомный таббар
            GeometryReader { proxy in
                ZStack(alignment: .bottomLeading) {
                    // Кнопки табов
                    HStack(spacing: 0) {
                        ForEach(0..<tabs.count, id: \.self) { index in
                            Button(action: {
                                withAnimation {
                                    selectedTab = index
                                }
                            }) {
                                VStack(spacing: 6) {
                                    Image(tabs[index])
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(Color.clear)
                        }
                    }
                    
                    // Анимированная точка (фоновое изображение) - под иконками
                    Image("background")
                        .frame(width: 10, height: 8)
                        .offset(x: calculateDotPosition(proxy.size), y: 0)
                        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: selectedTab)
                }
            }
            .frame(height: 63)
        }
    }
    
    private func calculateDotPosition(_ size: CGSize) -> CGFloat {
        let totalTabs = CGFloat(tabs.count)
        let tabWidth = size.width / totalTabs
        let position = CGFloat(selectedTab) * tabWidth + tabWidth / 2 - 5 // 5 = половина ширины точки
        
        return position
    }
}

#Preview {
    ContentView()
}
