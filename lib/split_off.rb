class Hash
  def split_off!(*_keys)
    _keys.reduce({}) do |result, _key|
      result[_key] = self.delete(_key)
      result
    end.reject{|k, v| v.nil? }
  end
end
