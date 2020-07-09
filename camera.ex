defmodule Camera do

  defstruct(origin: {0, 0, 0}, corner: {-960,540,1200},right: {1,0,0}, down: {0,-1,0},size: {960 * 540})

  def normal(size) do
    {width,height} = size
    d = width * 1.2
    h = width/2
    v = height/2
    corner = {-h,v,d}
    right = {1,0,0}
    down = {0,-1,0}
    %Camera{origin: {0,0,0}, corner: corner, right: right, down: down, size: size}
  end

  def ray(camera, x, y) do
      x_pos = Vector.smul(camera.right, x)
      y_pos = Vector.smul(camera.down, y)
      pixel = Vector.add(camera.corner, Vector.add(x_pos,y_pos))
      dir = Vector.normalize(pixel)
      %Ray{pos: camera.origin, dir: dir}
    end
end

