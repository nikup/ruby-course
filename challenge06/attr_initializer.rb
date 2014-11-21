class Object
  def attr_initializer(*attr)
    define_method :initialize do |*args|
      if attr.size != args.size
        raise ArgumentError, "wrong number of arguments (#{args.size} for #{attr.size})"
      end

      attr.each_with_index do |attribute, index| 
        instance_variable_set("@#{attribute}", args[index])
      end
    end
  end
end