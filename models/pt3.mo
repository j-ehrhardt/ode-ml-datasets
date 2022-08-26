model pt3
  Modelica.Blocks.Continuous.FirstOrder firstOrder(T = 4)  annotation(
    Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.SecondOrder secondOrder(D = 0.25, w = 4)  annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse(amplitude = 1, period = 10, width = 50)  annotation(
    Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pulse.y, firstOrder.u) annotation(
    Line(points = {{-78, 0}, {-42, 0}}, color = {0, 0, 127}));
  connect(firstOrder.y, secondOrder.u) annotation(
    Line(points = {{-18, 0}, {18, 0}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "3.2.3")));
end pt3;