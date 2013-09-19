class Dump < ActiveRecord::Base

  TYPES= %W(
    nut
    lumpy
    sausage
    shake
    blobs
    fluffy
    watery
  )

  belongs_to :user

end
