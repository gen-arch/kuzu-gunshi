Kuzu::Gunshi.constants.each do |cons|
  puts "#{cons} => #{Kuzu::Gunshi.const_get(cons)}"
end
