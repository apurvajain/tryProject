require 'Set'
class EqualLines
 def initialize(xcord1,ycord1,xcord2,ycord2)
  @xcord1 = xcord1
  @ycord1 = ycord1
  @xcord2 = xcord2
  @ycord2 = ycord2

  def hash
  [@xcord1, @ycord1, @xcord2 ,@ycord2].hash
  end
 end
 def xcord1
 	@xcord1
 end
 def ycord1
 	@ycord1
 end
 def xcord2
 	@xcord2
 end
 def ycord2
 	@ycord2
 end

 def ==(line)
  isEqual= false
  if line.nil?
  end
  if line.is_a?(EqualLines)
  isEqual=(((xcord1 == line.xcord1) && (ycord1 == line.ycord1) && (xcord2 == line.xcord2) && (ycord2 == line.ycord2)) || ((xcord1 == line.xcord2) && (ycord1 == line.ycord2) && (xcord2 == line.xcord1) && (ycord2 == line.ycord1)))  
  end
  return isEqual
 end
 
  def eql?(line)
  self == line
  end

  

end