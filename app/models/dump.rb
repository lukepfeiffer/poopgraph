class Dump < ActiveRecord::Base

  belongs_to :user

  validates :kind, presence: true, message: "ballin"
end


  KINDS = %W(
    nut
    lumpy
    sausage
    snake
    blobs
    fluffy
    watery
  )

  COLORS = {
    brown:         "#694707",
    light_brown:   "#8a5c04",
    black:         "#191202",
    red:           "#ae2505",
    orange:        "#be5303",
    green:         "#5b7706",
    gray:          "#5b5b59",
    light_green:   "#b6b10b",
    dark_brown:    "#611901"
  }

end
