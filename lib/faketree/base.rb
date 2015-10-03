require 'fakefs/safe'

module FakeTree
  def self.start!(path_to_yaml)
    FakeFS.activate!

    tree_hash = Yaml.load(File.read(path_to_yaml))
    FakeTree::Runner.new.fake(tree_hash)
  end

  def self.stop!
    FakeFS.deactivate!
  end
end
