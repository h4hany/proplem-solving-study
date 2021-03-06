# https://leetcode.com/problems/balanced-binary-tree/
#!/user/bin/ruby
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  return true if (root.nil?) #"If the tree is empty it is valid"
  left = get_height(root.left) #"Get the height of the left side of this specific node"
  right = get_height(root.right) #"Same as above for the right"
  min = [left, right].min #"Get the smallest height of this specific node"
  max = [left, right].max #"Get the biggest height"
  #"Here we make sure the height difference is at the most One, and we recursively check Every Single Node in our tree using the same methods above by recursively calling it on our children below."
  return (max - min <= 1) && is_balanced(root.left) && is_balanced(root.right)
end

def get_height(root)
  return -1 if root.nil? #"We return -1 because if there is only one node it ends up returning 0 ( -1 and + 1)"
  return [get_height(root.left) + 1, get_height(root.right) + 1].max  #"Recursively compare the height of the left side and the right side of our tree and return the max height. Remember the recursive function ends up returning an integer allowing us to Add it to + 1."
end
