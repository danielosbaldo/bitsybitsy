def strToArray(str)
  str.tr(' ','').split(',')
end

def FindIntersection(strArr)

  # code goes here
  
  intersect = []
  strArr.each do |str|
    if intersect.length == 0
      intersect = strToArray(str)
    else
      intersect = intersect & strToArray(str)
    end
  end

  return intersect.join(",")

end

# multiple attay of strings["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]
puts FindIntersection(STDIN.gets)
