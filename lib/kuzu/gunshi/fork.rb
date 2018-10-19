class Fork
  def initialize(num)
    @num = num
  end

  def form
    @num.times do |i|
      puts "屑軍師#{i}号が生まれた"
    end
  end
end
