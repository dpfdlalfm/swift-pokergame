struct Card {
    // 구조체로 선언한 이유는 Card가 상속의 필요성이 없고,
    // 클래스보다 접근이나 메모리 관리가 효율적이기 때문입니다.
    
    // enum 타입으로 설정한 이유는 가독성면에서 좋기 때문입니다.
    // CaseIterable 채택 이유: CardDeck 구조체에서 카드 초기화에 활용
    enum Suit:String, CustomStringConvertible, CaseIterable {
        case spade = "♠",
             heart = "♥",
             clover = "♣",
             diamond = "♦"
        
        var description: String {
            return self.rawValue
        }
    }
    
    enum Rank:Int, CustomStringConvertible, CaseIterable {
        case ace = 1,
             two,
             three,
             four,
             five,
             six,
             seven,
             eight,
             nine,
             ten,
             jack,
             queen,
             king
        
        var description: String {
            return "\(self.rawValue)"
        }
    }
    
    private let suit:Suit
    private let rank:Rank
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
}

extension Card:CustomStringConvertible {
    var description: String {
        return self.suit.description + self.rank.description
    }
}
