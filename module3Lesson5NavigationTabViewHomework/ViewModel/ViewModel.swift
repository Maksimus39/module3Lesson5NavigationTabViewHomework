import Foundation
import Combine

class ContentViewModel: ObservableObject, ProfileHeaderProtocol {
    @Published var user: UserPhoto = UserPhoto(
        userPhoto: "getUserPhoto",
        dotUser: "dot",
        dotPromotion: "starPromotionView",
        teas: [
            // Черные чаи
            "Earl Grey": 250.0,
            "English Breakfast": 240.0,
            "Assam": 260.0,
            "Ceylon": 270.0,
            "Lapsang Souchong": 300.0,
            "Keemun": 290.0,
            "Yunnan": 285.0,
            
            // Зеленые чаи
            "Sencha": 220.0,
            "Matcha": 350.0,
            "Gyokuro": 400.0,
            "Genmaicha": 230.0,
            "Hojicha": 225.0,
            "Bancha": 210.0,
            "Kukicha": 215.0,
            "Longjing": 320.0,
            "Bi Luo Chun": 310.0,
            "Xue Shan": 300.0,
            "Gunpowder": 240.0,
            
            // Белые чаи
            "Silver Needle": 380.0,
            "White Peony": 340.0,
            "Shou Mei": 320.0,
            "Tribal": 350.0,
            
            // Улунги
            "Tie Guan Yin": 360.0,
            "Da Hong Pao": 450.0,
            "Oriental Beauty": 420.0,
            "Ali Shan": 380.0,
            "Dong Ding": 370.0,
            
            // Желтые чаи
            "Junshan Yinzhen": 400.0,
            "Huoshan Huangya": 390.0,
            
            // Пуэры
            "Sheng Pu'er": 450.0,
            "Shu Pu'er": 420.0,
            "Bing Cha": 500.0,
            
            // Травяные чаи
            "Chamomile": 180.0,
            "Peppermint": 190.0,
            "Rooibos": 200.0,
            "Hibiscus": 195.0,
            "Lemon Balm": 185.0,
            
            // Фруктовые чаи
            "Berry Blend": 210.0,
            "Citrus Mix": 205.0,
            "Apple Cinnamon": 215.0,
            "Peach Iced Tea": 220.0,
            "Mango Passion": 225.0,
            
            // Специальные сборы
            "Detox Blend": 230.0,
            "Sleepy Time": 200.0,
            "Immunity Boost": 240.0,
            "Digestive": 210.0,
            "Energy": 220.0,
            
            // Ароматизированные чаи
            "Jasmine": 260.0,
            "Vanilla": 270.0,
            "Rose": 280.0,
            "Lavender": 275.0,
            "Caramel": 265.0,
            
            // Редкие чаи
            "Purple Tea": 500.0,
            "Yellow Gold": 550.0,
            "Golden Monkey": 600.0,
            "Silver Needle White": 480.0,
            "Dragon Well": 420.0,
            
            // Японские чаи
            "Sencha Premium": 290.0,
            "Matcha Ceremonial": 500.0,
            "Gyokuro Premium": 600.0,
            "Tamaryokucha": 320.0,
            "Hagi Bancha": 250.0,
            
            // Индийские чаи
            "Nilgiri": 270.0,
            "Sikkim": 280.0,
            "Manjushri": 290.0,
            "Makaibari": 300.0,
            
            // Цейлонские чаи
            "Dimbula": 260.0,
            "Nuwara Eliya": 270.0,
            "Uva": 280.0,
            "Kandy": 265.0,
            
            // Китайские чаи
            "Anji Bai Cha": 350.0,
            "Tai Ping Hou Kui": 400.0,
            "Tian Jian": 380.0,
            "Tie Luo Han": 450.0
        ],
        foods: [
            "Cheeseburger": 450.0,
            "Chicken Wings": 550.0,
            "French Fries": 300.0,
            "Onion Rings": 350.0,
            "Nachos": 400.0,
            "Garlic Bread": 250.0,
            "Caesar Salad": 380.0,
            "Greek Salad": 360.0,
            "Caprese": 320.0,
            "Bruschetta": 280.0,
            "Spring Rolls": 320.0,
            "Samosa": 270.0,
            "Empanadas": 310.0,
            "Calzone": 480.0,
            "Flatbread Pizza": 420.0,
            "Stuffed Mushrooms": 340.0,
            "Buffalo Cauliflower": 330.0,
            "Poutine": 400.0,
            "Mac and Cheese": 360.0,
            "Loaded Potato Skins": 380.0,
            "Quesadilla": 390.0,
            "Slider": 350.0,
            "Fish and Chips": 500.0
        ],
        discount: "$9.5",
        imageDiscount: "VectorDiscount",
        cupsCategories: "cups",
        burgerCategories: "burger",
        vectorModelCups: "VectoCup",
        vectorModelBurger: "VectorBurger",
        dot: "dot 1",
        rating: "rating"
    )
}
