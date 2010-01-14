module SquishyI
  def to_squishy_i
    to_s.scan(/[0-9]/).join.to_i 
  end 
end

[Fixnum, String].each {|klass| klass.send(:include, SquishyI) }

class String
  def strip_html
    gsub(/<\/?[^>]*>/, '') 
  end 
end


