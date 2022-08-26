model pt2
  Modelica.Blocks.Continuous.SecondOrder secondOrder(D = 1, w = 1)  annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse(amplitude = 1, period = 10, width = 50) annotation(
    Placement(visible = true, transformation(origin = {-52, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pulse.y, secondOrder.u) annotation(
    Line(points = {{-40, 0}, {-12, 0}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "3.2.3")));
end pt2;