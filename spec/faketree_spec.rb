require 'spec_helper'

describe FakeTree do
  it 'has a version number' do
    expect(FakeTree::VERSION).not_to be nil
  end

  describe '::start!' do
    let(:yaml_file) { 'spec/support/faketree.yml' }

    it 'does not error' do
      expect { FakeTree.start!(yaml_file) }.to_not raise_error
    end
  end

  describe '::stop!' do
    it 'does not error' do
      expect { FakeTree.stop! }.to_not raise_error
    end
  end
end
