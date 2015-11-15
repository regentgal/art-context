class Author
  attr_accessor :artist_id, :full_name, :cited_name, :role, :nationality, :birth_date, :death_date, :birth_place, :death_place
  
  def initialize(h={})
    h.each { |k,v| send("#{k}=",v) }
  end
end