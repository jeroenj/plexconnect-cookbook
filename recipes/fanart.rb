node[:plexconnect][:fanart][:packages].each do |pkg|
  package pkg
end

python_pip 'Pillow'
