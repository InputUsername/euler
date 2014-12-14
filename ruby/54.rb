# project euler 54: how many poker games does player 1 win?
t = Time.new.to_f

#playing card class
class PlayingCard
    attr_reader :value, :suit

    def initialize(str)
        @value, @suit = str.split ''
    end

    def >(other)
        if other.is_a?(PlayingCard) then
            #own value is a number
            if self.value =~ /[0-9]+/ then
                #other value is Jack/Queen/King/Ace
                if other.value =~ /[JQKA]/ then
                    return false

                #other value is a number
                else
                    return self.value > other.value
                end

            #own value is Jack/Queen/King/Ace
            else
                #other value is a number
                if other.value =~ /[0-9]+/ then
                    return true

                #other value is Jack/Queen/King/Ace
                else
                    test = %w(J Q K A)
                    return test.index(self.value) > test.index(other.value)
                end
            end
        end
    end

    def ==(other)
        if other.is_a?(PlayingCard) then
            self.value == other.value and self.suit == other.suit
        end
        false
    end

    def same_value?(other)
        if other.is_a?(PlayingCard) then
            self.value == other.value
        end
        false
    end

    def same_suit?(other)
        if other.is_a?(PlayingCard) then
            self.suit == other.suit
        end
        false
    end

    def to_s
        self.value + self.suit
    end
end

#poker hand class
class PokerHand
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def rank
        
    end

    def flush
        arr = self.
    end
end

=begin

=end

p1_hands = []
p2_hands = []

File.readlines('../files/poker-54.txt').each do |line|
    line.chomp!

    p1_cards = line.slice(0, 15)
    p1_cards.split!(' ')
    p1_cards.map! do |card|
        PlayingCard.new(card)
    end
    p1_hands << PokerHand.new(p1_cards)

    p2_cards = line.slice(15, 30)
    p2_cards.split!(' ')
    p2_cards.map! do |card|
        PlayingCard.new(card)
    end
    p2_hands << PokerHand.new(p2_cards)
end

p1_wins = 0

p1_hands.each_with_index do |hand, i|
    if hand > p2_hands[i] then
        p1_wins += 1
    end
end

puts "result: #{p1_wins} - found in #{((Time.new.to_f - t) * 1000).round 3} ms"
