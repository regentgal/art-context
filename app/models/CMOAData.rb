class CMOAData
  def self.from_json_file(path)
    return {} unless path

    file = File.read(path)
    JSON.parse(file)
  end
end