require 'benchmark'
include Benchmark  

require_relative 'quicksort'
require_relative 'bucketsort'
require_relative 'heapsort'

array = (1..10000000).map { rand(1...10000000) }
Benchmark.bm do |x|
  x.report("bucketsort") { bucketsort(array) }
end

array = (1..10000000).map { rand(1...10000000) }
Benchmark.bm do |x|
    x.report("heapsort") { heapsort(array) }
end

array = (1..10000000).map { rand(1...10000000) }
Benchmark.bm do |x|
    x.report("quicksort") { quicksort(array) }
end