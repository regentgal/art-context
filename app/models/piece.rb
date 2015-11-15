class Piece < ActiveRecord::Base
  belongs_to :author

  def self.from_cmoa_json(args={})
    # FIXME: This likely isn't the best place for this method.
    args['institutional_id'] = args.delete('id') if args['id']
    p = new(args)

    # FIXME: Using the local image filenames as not to reach externally for now
    p.images = images_filenames(institutional_id: p.institutional_id) if p.institutional_id
    p.institution = "cmoa"
    p
  end

  def self.images_filenames(institutional_id:)
    image_glob = "#{Rails.root.join('app', 'assets', 'images')}/#{institutional_id}*"
    Dir[image_glob].map { |i| File.basename(i) }
  end
end
