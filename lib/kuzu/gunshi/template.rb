module Template
  class ForkTemp
    attr_accessor :os

    def initialize
      @os = Hash.new
    end

    def you_are_name?
      self.class.name
    end

    def kill
      puts "good by dad"
      raise "The world is broken"
    end

    def method_missing(name, *args, &block)
      super unless name =~ /^(\w+)=$/
      name = name.to_s.delete("=").to_sym
      Array(args) if args.is_a?(Array)
      @os[name] = ( @os[name] ||= Array.new ).concat(args)
    end

  end
end
