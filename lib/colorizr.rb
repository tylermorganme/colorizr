

class String
  # Define the available text colors as constant attribute.
  @@COLORS = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    pink: 95,
    light_blue: 94,
    white: 97,
    light_grey: 37,
    black: 30
  }

  # Return a list of color symbols.
  def self.colors
    return @@COLORS.keys
  end


  #  Create functions for all available colors.
  def self.create_colors
    @@COLORS.each do |key, value|
      color_method = %Q{
        def #{key}
          return "\e[#{value}m" + self + "\e[0m"
        end
      }
      class_eval(color_method)
    end
  end

  # Give a simple representation of each color.
  def self.sample_colors
    @@COLORS.each_key do |key|
      puts "This is " + key.to_s.send(key)
    end
  end

  # If a user tried to call a color that has not yet been created, create all colors.
  def method_missing(method_name, *arguments, &block)
    if @@COLORS.keys.include? method_name.to_sym
      self.class.create_colors
      self.send(method_name.to_s)
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    @@COLORS.keys.include? method_name.to_sym || super
  end

end
