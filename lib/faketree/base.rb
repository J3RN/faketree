module FakeTree
  def self.start!(path_to_yaml)
    tree_hash = YAML.load(File.read(path_to_yaml))

    FakeFS.activate!
    FakeTree::Runner.new.start(tree_hash)
  end

  def self.stop!
    FakeFS.deactivate!
  end
end
