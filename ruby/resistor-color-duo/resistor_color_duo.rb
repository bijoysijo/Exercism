class ResistorColorDuo
  RESISTOR = {
    "black" => 0,
    "brown" => 1,
    "red"=> 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }

  def self.value(color_array)
    (RESISTOR[color_array[0]] * 10 + RESISTOR[color_array[1]] * 1)
  end
end

puts ResistorColorDuo.value(["brown", "black"])
