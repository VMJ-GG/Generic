define :caesar => [:cryptographic, :substitution] do |obj, args, opts|
  args.text = 'Lorem Ipsum Dolor Sit Amet'
  args.body[0] = ('a'..'z').to_a
  args.body[1] = :always_change
  args.body[2] = 3

  opts.allow_special_chars = true

  obj.body = Proc.new do |alphabet, ch, key|
    new_index = (alphabet.index(ch) + key) % alphabet.length
    alphabet[new_index]
  end
end
