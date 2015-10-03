module FakeTree
  class Runner
    def start(tree_hash, parent = './')
      tree_hash.each do |key, value|
        if value.is_a? String
          File.write(File.join(parent, key), value)
        elsif value.is_a? Hash
          Dir.mkdir(File.join(parent, key))
          start(value, File.join(parent, key))
        else
          fail "Invalid node of type: #{x.class}"
        end
      end
    end
  end
end
