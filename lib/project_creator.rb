require 'fileutils'
require 'project_creator/version'

class Hash
  def create_project(path = '.')
    self.each_pair do |key, value|

      relative_path = [path,key].join('/')

      case value
      when Hash
        FileUtils.mkdir_p(relative_path)
        value.create_project(relative_path)
      when String
        value.to_file(relative_path)
      end
    end
  end
end

class String
  def to_file(path = '.')
    File.open(path, 'w+') {|f| f.write(self) }
  end
end
