require 'spec_helper'

require 'puppet/indirector/node/memory'
require 'shared_behaviours/memory_terminus'

describe Puppet::Node::Memory do
  before do
    @name = "me"
    @searcher = Puppet::Node::Memory.new
    @instance = double('instance', :name => @name)

    @request = double('request', :key => @name, :instance => @instance)
  end

  it_should_behave_like "A Memory Terminus"
end
