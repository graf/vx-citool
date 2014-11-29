require File.expand_path("../log",                __FILE__)
require File.expand_path("../parser",             __FILE__)
require File.expand_path("../actions/shell",      __FILE__)
require File.expand_path("../actions/ssh_agent",  __FILE__)
require File.expand_path("../actions/git_clone",  __FILE__)
require File.expand_path("../actions/chdir",      __FILE__)


module Vx
  module Citool
    module Actions

      Succ = Struct.new(:code, :message) do
        def success? ; true ; end
      end

      Fail = Struct.new(:code, :message) do
        def success? ; false ; end
      end

      extend self
      extend Log

      def extract_keys(string, *keys)
        Parser.new(string).extract(*keys)
      end


    end
  end
end
