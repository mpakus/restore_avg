class Array
  def average
    reduce(:+).to_f / size.to_f
  end

  def self.restore_avg(avg, count, delta=0.5, precision=2)
    res = []
    count.times do |t|
      res << (Random.rand(avg-delta...avg+delta)).round(3)
    end
    if res.average != avg
      diff = (res.average - avg)    
      res.map! { |el| (el - diff).round(precision) }
    elsif precision != 2
      res.map! { |el| el.round(precision) }      
    end
    return res
  end

end
