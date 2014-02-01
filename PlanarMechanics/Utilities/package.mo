within PlanarMechanics;
package Utilities 


  annotation (Icon(graphics={            Rectangle(
          extent={{-80,100},{100,-80}},
          lineColor={0,0,0},
          fillColor={215,230,240},
          fillPattern=FillPattern.Solid), Rectangle(
          extent={{-100,80},{80,-100}},
          lineColor={0,0,0},
          fillColor={240,240,240},
          fillPattern=FillPattern.Solid),
                              Polygon(
          points={{52,-10},{34,10},{14,10},{-6,-10},{-70,-10},{-78,-18},{-78,-28},
              {-70,-36},{-4,-36},{14,-54},{34,-54},{54,-34},{26,-34},{18,-28},{18,
              -16},{26,-10},{52,-10}},
          lineThickness=0.5,
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None,
          lineColor={0,0,0})}), Documentation(info="<html>
<p>This package contains auxiliary functions and blocks for internal usage.</p>
</html>", revisions="<html>
<p><img src=\"modelica://PlanarMechanics/Resources/Images/dlr_logo.png\"/><b>Developed 2010-2014 at the DLR Institute of System Dynamics and Control</b> </p>
</html>"));
end Utilities;