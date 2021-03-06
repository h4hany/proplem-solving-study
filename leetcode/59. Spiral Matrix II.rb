# https://leetcode.com/problems/spiral-matrix-ii/
#!/user/bin/ruby
# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  return [] if n == 0
  result = Array.new(n){Array.new(n,0)}
  row_start = column_start = 0
  row_end = column_end = n - 1
  count = 1
  direction = 0
  while row_start <= row_end && column_start <= column_end
    if direction  == 0
      column_start.upto(column_end) do |column_idx|
        result[row_start][column_idx] = count
        count += 1
      end
      row_start += 1
      direction += 1

    elsif direction == 1
      row_start.upto(row_end) do |row_idx|
        result[row_idx][column_end] = count
        count += 1
      end
      column_end -= 1
      direction += 1

    elsif direction == 2
      column_end.downto(column_start) do |column_idx|
        result[row_end][column_idx] = count
        count += 1
      end
      row_end -= 1
      direction += 1

    elsif direction == 3
      row_end.downto(row_start) do |row_idx|
        result[row_idx][column_start] = count
        count += 1
      end
      column_start += 1
      direction  = 0
    end
  end
   result
end

n = 3
generate_matrix(n)
