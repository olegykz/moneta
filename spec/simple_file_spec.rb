# Generated file
require 'helper'

begin
  Juno.new(:File, :dir => File.join(make_tempdir, "simple_file")).close

  describe "simple_file" do
    before do
      @store = Juno.new(:File, :dir => File.join(make_tempdir, "simple_file"))
      @store.clear
    end

    after do
      @store.close.should == nil if @store
    end

    it_should_behave_like 'null_objectkey_objectvalue'
    it_should_behave_like 'null_objectkey_stringvalue'
    it_should_behave_like 'null_objectkey_hashvalue'
    it_should_behave_like 'null_stringkey_objectvalue'
    it_should_behave_like 'null_stringkey_stringvalue'
    it_should_behave_like 'null_stringkey_hashvalue'
    it_should_behave_like 'null_hashkey_objectvalue'
    it_should_behave_like 'null_hashkey_stringvalue'
    it_should_behave_like 'null_hashkey_hashvalue'
    it_should_behave_like 'store_objectkey_objectvalue'
    it_should_behave_like 'store_objectkey_stringvalue'
    it_should_behave_like 'store_objectkey_hashvalue'
    it_should_behave_like 'store_stringkey_objectvalue'
    it_should_behave_like 'store_stringkey_stringvalue'
    it_should_behave_like 'store_stringkey_hashvalue'
    it_should_behave_like 'store_hashkey_objectvalue'
    it_should_behave_like 'store_hashkey_stringvalue'
    it_should_behave_like 'store_hashkey_hashvalue'
    it_should_behave_like 'returndifferent_objectkey_objectvalue'
    it_should_behave_like 'returndifferent_objectkey_stringvalue'
    it_should_behave_like 'returndifferent_objectkey_hashvalue'
    it_should_behave_like 'returndifferent_stringkey_objectvalue'
    it_should_behave_like 'returndifferent_stringkey_stringvalue'
    it_should_behave_like 'returndifferent_stringkey_hashvalue'
    it_should_behave_like 'returndifferent_hashkey_objectvalue'
    it_should_behave_like 'returndifferent_hashkey_stringvalue'
    it_should_behave_like 'returndifferent_hashkey_hashvalue'
    it_should_behave_like 'marshallable_key'

  end
rescue LoadError => ex
  puts "Test simple_file not executed: #{ex.message}"
rescue Exception => ex
  puts "Test simple_file not executed: #{ex.message}"
  #puts "#{ex.backtrace.join("\n")}"
end