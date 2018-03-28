define 'leibniz' do |obj, args, opts|
  args.iterations = 1..1000
  args.body[0] = 0

  opts.last_operation = Proc.new { |result| result * 4 }
  opts.expected_result = Math::PI

  obj.class = :series
  obj.body = Proc.new { |i| (-1 ** i) / (2*i + 1) }
end
