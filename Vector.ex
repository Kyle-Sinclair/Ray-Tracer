defmodule Vector do

  def smul({x1,x2,x3},s) do
    {s*x1,s*x2,s*x3}
  end

  def sub({x1,x2,x3},{y1,y2,y3}) do
    {x1 - y1, x2 - y2, x3 - y3}
  end

  def add({x1,x2,x3},{y1,y2,y3}) do
     {x1 + y1, x2 + y2, x3 + y3}
end

  def norm({x1,x2,x3}) do
    :math.sqrt(:math.pow(x1,2) + :math.pow(x2,2) + :math.pow(x3,2))
   end

  def dot({x1,x2,x3}, {y1,y2,y3}) do
    {x1 * y1, x2 * y2, x3 * y3}
  end

  def normalize(x) do
    norm(x)/abs(x)
  end



end
