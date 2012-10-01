#the bubbles
class Enemy extends CircleMovingInGameObject
  constructor: (radius = 10+Math.random()*10) ->
    radius = MAX_ENEMY_RADIUS if radius > MAX_ENEMY_RADIUS
    #where to place the bubble
    where_to_place_the_bubble = Math.random()
    if where_to_place_the_bubble < 0.25
      #top
      y = -radius
      x = Math.random() * CANVAS_WIDTH
      y_velocity = DEFAULT_SPEED
      x_velocity = (DEFAULT_SPEED * -1) + Math.random()*(1+DEFAULT_SPEED)
    else if where_to_place_the_bubble < 0.50
      #bottom
      y = CANVAS_HEIGHT + radius
      x = Math.random() * CANVAS_WIDTH
      y_velocity = (DEFAULT_SPEED * -1)
      x_velocity = (DEFAULT_SPEED * -1) * Math.random()*(1+DEFAULT_SPEED)
    else if where_to_place_the_bubble < 0.75
      #left
      y = Math.random() * CANVAS_HEIGHT
      x = -radius
      x_velocity = 1
      y_velocity = (DEFAULT_SPEED * -1) * Math.random()*(1+DEFAULT_SPEED)
    else
      #right
      y = Math.random() * CANVAS_HEIGHT
      x = CANVAS_WIDTH + radius
      x_velocity = (DEFAULT_SPEED * -1)
      y_velocity = (DEFAULT_SPEED * -1) * Math.random()*(1+DEFAULT_SPEED)

    @age = 0
    #new Rgba(255,0,0,0.9)
    #super(x, y, radius, x_velocity, y_velocity, 'rgba('+Math.floor(Math.random()*255)+','+Math.floor(Math.random()*255)+','+Math.floor(Math.random()*255)+',0.7)', 'rgb(0,0,255)')
    super(x, y, radius, x_velocity, y_velocity, 'rgba(255, 255, 255, 0.35)', '#22781d')

  update: =>
    super()
    @stroke_style = 'rgba(255,255,255,0.65)' if @radius > player1.radius
    @stroke_style = 'rgba(255,255,255,0.85)' if @radius >=  MAX_ENEMY_RADIUS
    @stroke_style = 'rgba(255,255,255,0.25)' if @radius < player1.radius




  draw: =>
    super(true, true)

  join: (another_circle) =>
    super(another_circle)
    @radius = MAX_ENEMY_RADIUS if @radius >  MAX_ENEMY_RADIUS






