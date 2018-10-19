$: << __dir__

require "lib/kuzu/gunshi"

childs = Kuzu::Gunshi::Fork.new(10)
child_gunshi = childs.come_on

puts
child_gunshi.you_are_name?
