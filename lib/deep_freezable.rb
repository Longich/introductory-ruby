module DeepFreezable
  def deep_freeze(array_or_hash)
    if (array_or_hash.class == Array)
      array_or_hash.each do |array|
        array.freeze
      end
    elsif (array_or_hash.class == Hash)
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    array_or_hash.freeze
  end
end
