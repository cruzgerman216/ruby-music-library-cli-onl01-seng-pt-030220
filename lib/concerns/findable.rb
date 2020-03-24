module Concerns::Findable
  def find_by_name(name)
    self.all.detect {|e| e.name == name}
  end

  def self.find_by_name(name)
    instance = nil
    self.all.each do |element|
      instance = element if name.name == name
    end
    instance
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
       self.create(name)
     else
       self.find_by_name(name)
    end
  end

end
