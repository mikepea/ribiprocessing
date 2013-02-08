module Ribiprocessing
  module Proxy
    attr_accessor :processing_instance

    def initialize(processing_instance)
      @processing_instance = processing_instance
    end

    def method_missing(method, *args, &block)
      processing_instance.send(method, *args, &block)
    end
  end
end
