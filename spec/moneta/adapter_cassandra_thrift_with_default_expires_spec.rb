# Generated by generate-specs
require 'helper'

describe_moneta "adapter_cassandra_thrift_with_default_expires" do
  def features
    [:expires]
  end

  def new_store
    Moneta::Adapters::CassandraThrift.new(:keyspace => 'adapter_cassandra_thrift_with_default_expires', :expires => 1)
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'default_expires'
  it_should_behave_like 'expires'
  it_should_behave_like 'features'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'not_create'
  it_should_behave_like 'not_increment'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_large'
end
