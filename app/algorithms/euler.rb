define 'euler' => [:mathematic, :series] do |obj, args, opts|
  args.iterations = 1..1000
  args.body.first = 1

  opts.last_operation = Proc.new { |result| Math.sqrt(result * 6) }
  opts.expected_result = Math::PI

  obj.body = Proc.new { |i| 1 / i**2 }
end
