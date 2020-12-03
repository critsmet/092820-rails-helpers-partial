class Kombucha < ApplicationRecord
  #Use this format if you want to apply several validations to several attributes
  #validates :flavor, :brew_time, :notes, presence: true, numericality: true
  #Use this format if you only want to apply one validation to several attributes
  validates_presence_of :brew_time
  validates_uniqueness_of :flavor
  validates :flavor, length: {maximum: 15, minimum: 5}, presence: true

  # validate :maximum_total_word_count
  #
  # def maximum_total_word_count
  #   if flavor.length + notes.length > 500
  #     errors.add(total_length: "You have too many words overall")
  #   end
  # end

  belongs_to :brand
  accepts_nested_attributes_for :brand, reject_if: proc { |attributes| attributes['name'].blank? }

  #accepts_nested_attributes_for writes this method for us:
  # def brand_attributes=(hash)
  #   byebug
  # end
end
