module ObjectFieldCalculator
  # calculates the sum of the given field for the given objects array
  # @param objects [Array] -> Array of objects
  # @param field_name [Symbol/String] -> Name of field used in calculations
  # @retrun sum [Integer/Fload] -> Sum of all field_name in the object
  def self.sum(objects, field_name = :amount)
    sum = 0
    objects.each do |obj|
      sum += obj.send(field_name)
    end
    sum
  end
end