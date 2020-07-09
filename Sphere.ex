defmodule Sphere do

    defstruct( pos: {0, 0, 0}, radius: 2)

    defimpl Object do

      def intersect(sphere,ray) do
      Sphere.intersect(sphere, ray)
    end
  end

    def intersect(%Sphere{pos: spos, radius: radius},  %Ray{pos: rpos, dir: dir}) do
        k = Vector.sub(spos,rpos)
        a = Vector.dot(spos, dir)
        a_squared = :math.pow(a,2)
        k_squared = :math.pow(k,2)
        r_squared = :math.pow(radius,2)
        h_squared = k_squared - a_squared
        t_squared = r_squared - h_squared

        if t_squared < 0 do
          :no

      else

        t = :math.sqrt(t_squared)
        intersection_1 = a - t
        intersection_2 = a + t

        cond do
          intersection_1 and intersection_2 > 0.0 ->
            {:ok, min(intersection_1, intersection_2)}
          intersection_1 > 0.0 ->
            {:ok, intersection_2}
          intersection_2 > 0.0 ->
            {:ok, intersection_2}
          true ->
            :no
        end
      end

    end

end
