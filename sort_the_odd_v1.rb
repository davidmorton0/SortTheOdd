require "test/unit/assertions"
include Test::Unit::Assertions

def sort_array(source_array)
  odds = source_array.select { |n| n.even? == false}.sort
  odd_counter = 0
  return source_array.each_with_index.map do |val, i|
    if val % 2 == 0
      val
    else
      odd_counter += 1
      odds[odd_counter - 1]
    end
  end
end

assert_equal(sort_array([5, 3, 2, 8, 1, 4, 11]), [1, 3, 2, 8, 5, 4, 11])
assert_equal(sort_array([2, 22, 37, 11, 4, 1, 5, 0]), [2, 22, 1, 5, 4, 11, 37, 0])
assert_equal(sort_array([1, 111, 11, 11, 2, 1, 5, 0]),[1, 1, 5, 11, 2, 11, 111, 0])
assert_equal(sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),[1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
assert_equal(sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),[0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
assert_equal(sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]),[0, 1, 2, 3, 4, 5, 8, 7, 6, 9])
assert_equal(sort_array([]), [])
assert_equal(sort_array([19]), [19])
assert_equal(sort_array([2]), [2])
assert_equal(sort_array([7,5]), [5,7])
