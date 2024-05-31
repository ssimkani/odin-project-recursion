# frozen_string_literal: true

def fibs(num, counter = 2)
  arr = [0, 1]
  return [0] if num == 1
  return arr if num == 2

  (num - 2).times do
    arr[counter] = arr[counter - 1] + arr[counter - 2]
    counter += 1
  end
  arr
end

def fibs_rec(num, hash = { 1 => [0], 2 => [0, 1] })
  return hash[num] if hash.key?(num)

  hash[num] = ([fibs_rec(num - 1, hash).last + fibs_rec(num - 2, hash).last] + hash[num - 1]).sort
end
