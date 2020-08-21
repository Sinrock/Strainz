module DeepFind
  def deep_find(obj, key, nested_key: nil)
    return obj[key] if obj.respond_to?(:key?) && obj.key?(key)
    if obj.is_a? Enumerable
      found = nil
      obj.find { |*a| found = deep_find(a.last, key) }
      if nested_key != nil
        deep_find(found, nested_key)
        binding.pry
      else
        found
      end
    end
  end
end