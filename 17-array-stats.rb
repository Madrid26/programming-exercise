# 使用者不断输入数字存进 Array，最后输出总和、平均、最大值、最小值
def total(array)
  a = 0
  array.each do |i|
    a = a + i
  end
  return a
end

def average(array)
  a = 0
  b = 0
  array.each do |i|
    a = a + i
    b = b + i
  end
  c = a/b
  return c
end

def max(array)
  a = array[0]
  array.each do |i|
    if a >= i
      a = a
    else
      a = i
    end
  end
  return a
end

def min(array)
  a = array[0]
  array.each do |i|
    if a <= i
      a = a
    else
      a = i
    end
  end
  return a
end

arr = []

while (true)
  print "请输入数字，结束请直接按 Enter: "
  user_input = gets
  if user_input == "\n"
    break
  else
    arr << user_input.to_i
  end
end

puts arr.to_s

puts "总和是 #{total(arr)}"
puts "平均是 #{average(arr)}"
puts "最大值是 #{max(arr)}"
puts "最小值是 #{min(arr)}"
