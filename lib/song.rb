class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.new_by_name name
    @name = new.name
  end

  def self.create_by_name name
    @name = name
    @@all << self
  end 

  def self.find_by_name name
    @@all.find(name == @name)
  end

  # def self.find_or_create_by_name name
  #   @@all.includes?(name == @name)
  #     ? name
  #     : self.create.by.name name  
  #   else 
  # end

  def self.alphabetical
    @@all.sort_by { |ele, | }
  end 

  def self.new_from_filename filename 
    @@all << "#{artist_name} - #{name}.mp3"
  end 

  def self.destroy_all  
    self.all.clear
  end 

end
