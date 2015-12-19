$LOAD_PATH.unshift('../lib/')
require 'simplecov'
SimpleCov.start
require 'heap'
require 'minitest'

class HeapTest < Minitest::Test
  attr_reader :pile, :binarytree

  def setup
    skip
    @pile = Heap.new
    @binarytree = BinaryTree.new
  end

  def test_create_class
    skip
    assert_equal Heap, pile.class
  end

  def test_create_max_heap_small
    skip
    binarytree.insert(5)
    binarytree.insert(9)
    binarytree.insert(10)
    pile.create(binarytree, ">=")
    assert_equal [10, 9, 5], pile.heap
  end

  def test_create_min_heap_small
    skip
    binarytree.insert(10)
    binarytree.insert(9)
    binarytree.insert(5)
    pile.create(binarytree, "<=")
    assert_equal [5, 9, 10], pile.heap
  end

  def test_create_max_heap_large
    skip
    binarytree.insert(10)
    binarytree.insert(9)
    binarytree.insert(5)
    binarytree.insert(52)
    binarytree.insert(98)
    binarytree.insert(1)
    pile.create(binarytree, ">=")
    assert_equal [98, 52, 5, 10, 9, 1], pile.heap
  end

  def test_create_min_heap
    binarytree.insert(10)
    binarytree.insert(9)
    binarytree.insert(5)
    binarytree.insert(52)
    binarytree.insert(98)
    binarytree.insert(1)
    pile.create(binarytree, "<=")
    assert_equal [1, 9, 5, 52, 98, 10], pile.heap
  end

end
