class Changer
  def self.make_change(cents)
    coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
    change = []

    coins.each do |coin, value|
      until cents < value do
       change << value
       cents -= value
      end
    end
    change
  end
end
