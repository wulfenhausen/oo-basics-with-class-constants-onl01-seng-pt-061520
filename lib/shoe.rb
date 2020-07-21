class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
 BRANDS = ["Uggs","Rainbow","Nike"]

  def initialize(brand)
    @brand = brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    @brand = brand
    
    Shoe::BRANDS.include?(brand) ? nil : BRANDS << brand 
  end
    

end