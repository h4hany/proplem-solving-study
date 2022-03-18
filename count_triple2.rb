#!/user/bin/ruby
# https://www.hackerrank.com/challenges/count-triplets-1/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
def countTriplets(arr, r)
  v2 = {}
  v3 = {}
  v3.default = 0
  v2.default = 0
  count = 0
  for k in arr
    puts v3[k]
    count += v3[k]
    v3[k * r] += v2[k]
    v2[k * r] += 1
    puts "#{k} - count: #{count} - v2: #{v2} - v3: #{v3}"
    puts '--------------------------------'
  end
  count
end

arr = [1, 5, 5, 25, 125]
r = 5
arr = [1, 2, 2, 4]
# [0, 1, 2, 3]
# 0,1,3  0,2,3
# [1,2,4]
# [1,2,4]

r = 2
puts countTriplets(arr, r)
