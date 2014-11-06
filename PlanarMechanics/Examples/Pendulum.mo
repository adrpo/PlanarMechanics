within PlanarMechanics.Examples;
model Pendulum "A free swinging pendulum"
  extends Modelica.Icons.Example;

  Parts.Body body(
    m=1,
    I=0.1)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Joints.Revolute revolute(
    useFlange=false,
    phi(fixed=true, start=0),
    w(fixed=true, start=0))
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Parts.FixedTranslation fixedTranslation(r= {1,0})
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Parts.Fixed fixed(phi=0) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-60,0})));
  inner PlanarWorld planarWorld(defaultWidthFraction=10)
    annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
equation
  connect(fixed.frame_a, revolute.frame_a) annotation (Line(
      points={{-50,0},{-50,0},{-40,0}},
      color={95,95,95},
      thickness=0.5));
  connect(revolute.frame_b, fixedTranslation.frame_a) annotation (Line(
      points={{-20,0},{-15,0},{-10,0}},
      color={95,95,95},
      thickness=0.5));
  connect(fixedTranslation.frame_b, body.frame_a) annotation (Line(
      points={{10,0},{10,0},{30,0}},
      color={95,95,95},
      thickness=0.5));
  annotation (experiment(StopTime=3),
    Documentation(revisions="<html><p><img src=\"modelica://PlanarMechanics/Resources/Images/dlr_logo.png\"/> <b>Developed 2010-2014 at the DLR Institute of System Dynamics and Control</b></p></html>",  info="<html>
<p><img src=\"modelica://PlanarMechanics/Resources/Images/Pendulum_1.png\"/></p>
<p><img src=\"modelica://PlanarMechanics/Resources/Images/Pendulum_2.png\"/></p>
<p><img src=\"modelica://PlanarMechanics/Resources/Images/Pendulum_3.png\"/></p>
<p>Selected continuous time states</p>
<ul>
<li>&nbsp;&nbsp;revolute.phi</li>
<li>&nbsp;&nbsp;revolute.w</li>
</ul>
</html>",
      revisions="<html>
<p>(c) Copyright by Dirk Zimmer</p>
<p>The library was created and is owned by Dr. Dirk Zimmer.</p>
<p>dirk.zimmer@dlr.de</p>
</html>"));
end Pendulum;
