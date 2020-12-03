class TwoWordsValidator < ActiveModel::EachValidator

  def validate_each(instance, attribute, value)
    if value.split(" ").count != 2
      instance.errors.add(attribute, "Must be two words")
    end
  end

end
