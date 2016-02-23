class RebelLegion::CostumeCategory
  attr_accessor :costumes, :name

  @@all = []

  def initialize(name)
    @name = name
    @costumes = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.display_all_names
    i = 0
    @@all.each do |category| 
      i += 1
      puts "#{i}. #{category.name}" 
    end
  end

  def add_costume(costume)
    @costumes << costume
    costume.costume_category = self
  end

  def display_costume_names
    i = 0
    costumes.each do |costume| 
      i += 1
      puts "#{i}. #{costume.name}"
    end
  end

end