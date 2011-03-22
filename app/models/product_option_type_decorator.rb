ProductOptionType.class_eval do
  calculated_adjustments
  has_many :product_option_values, :dependent => :destroy
  has_many :option_values, :through => :product_option_values

  def has_price_modifier?
    !(price_modifier_type.nil? || price_modifier_type.downcase=~/none/)
  end
end