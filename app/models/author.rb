class Author < ActiveRecord::Base
  has_many :pieces

  def self.from_cmoa_json(args = {})
    args["institutional_id"] = args.delete("artist_id") if args["artist_id"]
    a = Author.new(args)
    a.institution = "cmoa"
    a
  end
end
