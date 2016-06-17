class Status < EnumerateIt::Base
  associate_values(
    active: [1, 'active'],
    inactive: [0, 'inactive']
  )
end
