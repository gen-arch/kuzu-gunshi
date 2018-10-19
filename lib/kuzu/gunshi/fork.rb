require "kuzu/gunshi/template"

module Kuzu::Gunshi
  class Fork

    attr_accessor :childs

    def initialize(num)
      @num = num
      @childs = form(@num)
    end 

    def come_on
      @childs.sample.new
    end

    def form(num)
      childs = Array.new
      num.times do |i|
        klass = Kuzu::Gunshi.const_set :"ChildGunshi#{i}", Class.new(Template::ForkTemp)
        if rand(10) == 7
          klass.class_eval{ def you_are_name?; raise "good by dad" end}
        end
        (childs ||= "") << klass
      end

      return childs
    end
  end
end
