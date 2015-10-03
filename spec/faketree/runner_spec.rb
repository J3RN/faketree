require 'spec_helper'

describe FakeTree::Runner do
  describe 'start' do
    context 'with a file' do
      before(:all) do
        FakeFS.activate!

        example_hash = { 'a' => 'Lorem ipsum set amet' }
        described_class.new.start(example_hash)
      end

      after(:all) do
        FakeFS.deactivate!
      end

      it 'creates a fake file' do
        expect(File.exist? 'a').to be true
        expect(FileTest.file? 'a').to be true
      end

      it 'populates the contents of the file' do
        expect(File.read 'a').to eq('Lorem ipsum set amet')
      end

    end

    context 'with a directory' do
      before(:all) do
        FakeFS.activate!
        example_hash = { 'b' => { 'c' => 'dolor' } }
        described_class.new.start(example_hash)
      end

      after(:all) do
        FakeFS.deactivate!
      end

      it 'creates a directory' do
        expect(File.exist? 'b').to be true
        expect(FileTest.directory? 'b').to be true
      end

      it 'creates a sub-file' do
        expect(File.exist? 'b/c').to be true
        expect(File.file? 'b/c').to be true
      end

      it 'populates the sub-file' do
        expect(File.read 'b/c').to eq('dolor')
      end
    end
  end
end
