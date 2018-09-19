classdef Shape < handle

  properties(SetAccess = protected, GetAccess = protected)
    location_    
  end

  methods

    function self = Shape(location)
      self.location_ = location;
    end

  end

  methods(Abstract)

    % set shape dimensions
    % dims is a matlab array of dimensions, differs per shape
    % ex. circle has radius, rectangle width and height, etc
    % @param dims Array of dimensions
    set_dimensions(self, dims)

    % to interact with a ray, the ray must intersect
    % the shape's surface
    % @param ray Ray object for which to check intersection
    % @return int True if ray intersects this shape
    intersects(self, ray)

    % Compute the closest point of intersection between ray and
    % shape object, as well as normal vector of Shape at that
    % point
    % @param ray Ray for which to compute intersection
    % @return int Intersection point and the normal
    % vector there, in that order
    intersection_point(self, ray)

    % Given the shape and a point p = (x, y),
    % draw a line from the centroid to p.
    % normal_vector returns the normal vector of
    % the shape at the intersection point of the line
    % and the shape boundary
    normal_vector(self, point)

    % Checks whether a given point is located inside the shape
    % @param point Vec representing location of point
    % @return in True if point is inside shape
    inside(self, point)

    % Moves the shape to the given point
    % @param point Point to move shape to
    move_to(self, point)

  end

end
