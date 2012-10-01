
class Bullet extends CircleMovingInGameObject
  constructor: (x, y, radius=3, x_velocity, y_velocity ) ->
    super(x, y, radius, x_velocity, y_velocity, new Rgba(255,255,255,1), 'none')

  draw: =>
    super(true,true)
