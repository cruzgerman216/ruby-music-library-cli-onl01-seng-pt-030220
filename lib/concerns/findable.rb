module Concerns::Findable
  def find_by_name(name)
    self.all.detect {|e| e.name == name}
  end

  def self.find_by_name(name)
    instance = nil
    self.all.each do |element|
      instance = song if name.name == name
    end
    instance
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

end
