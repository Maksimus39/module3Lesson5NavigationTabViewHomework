import SwiftUI


enum PortionSizeFoods: Double, CaseIterable {
    case small = 0.8
    case medium = 1.0
    case large = 1.2
    case extraLarge = 1.4
    
    var shortName: String {
        switch self {
        case .small: return "Sm"
        case .medium: return "Md"
        case .large: return "Lr"
        case .extraLarge: return "XL"
        }
    }
}

enum PortionSizeBeverages: Double, CaseIterable {
    case small = 0.8
    case medium = 1.0
    case large = 1.2
    case extraLarge = 1.4
    
    var shortName: String {
        switch self {
        case .small: return "Sm"
        case .medium: return "Md"
        case .large: return "Lr"
        case .extraLarge: return "XL"
        }
    }
}

struct CounterView: View {
    @Binding var count: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 22)
                .stroke(.gray, lineWidth: 1)
                .frame(width: 128, height: 42)
            
            HStack(spacing: 25) {
                Button {
                    if count > 1 {
                        count -= 1
                    }
                } label: {
                    Text("-")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(count > 1 ? .stepper : .gray)
                }
                .disabled(count <= 1)
                
                Text("\(count)")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.rootColorApplication)
                    .frame(minWidth: 30, maxWidth: 40, alignment: .center)
                
                Button {
                    if count < 10 {
                        count += 1
                    }
                } label: {
                    Text("+")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(count < 10 ? .stepper : .gray)
                }
                .disabled(count >= 10)
            }
            .frame(width: 128)
        }
        .frame(width: 128)
    }
}
