within Annex60.Fluid.Actuators.Valves;
model TwoWayPressureIndependent "Model of a pressure-independent two way valve"
  extends Annex60.Fluid.Actuators.BaseClasses.PartialTwoWayValve(
            final linearized = false,
            from_dp=true,
            phi=l + y_actual*(1 - l));

  parameter Real l2(min=1e-10) = 0.0001
    "Gain for mass flow increase if pressure is above nominal pressure"
    annotation(Dialog(tab="Advanced"));

protected
  Modelica.SIunits.MassFlowRate m_flow_set "Requested mass flow rate";
  Modelica.SIunits.Pressure dp_min
    "Minimum dp required for delivering requested mass flow rate";

  Modelica.SIunits.MassFlowRate m_flow_cor "Correction for mass flow rate";
  Modelica.SIunits.Pressure dp_cor "Correction for dp";
equation
  m_flow_set = m_flow_nominal*phi;

  dp_min = Annex60.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(
              m_flow=m_flow_set,
              k=k,
              m_flow_turbulent=m_flow_turbulent);

 kVal = Kv_SI;
 if (dpFixed_nominal > Modelica.Constants.eps) then
   k = sqrt(1/(1/kFixed^2 + 1/kVal^2));
 else
   k = kVal;
 end if;

 // Compute the correction in mass flow rate or pressure drop
 // for the situation where the pressure is not sufficiently large.
 // For too large pressure, this correction increases the flow rate slightly
 // to avoid zero derivative of the mass flow rate vs. the pressure drop.
 if from_dp then
   m_flow_cor = (m_flow_set- Annex60.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp(
                               dp=dp,
                               k=k,
                               m_flow_turbulent=m_flow_turbulent))
                  /max(1+(dp-dp_min)/dp_min/l2,1)^(1/3);
   dp_cor     = 0;
 else
   m_flow_cor = 0;
   //        I suggest you update the implementation notes and explain there your
   //        implementation. Otherwise I don't understand what you wanted to achieve,
   //        what is implemented, and what the (now wrong/outdated) model documentation says to the user.
   dp_cor     = (dp_min-Annex60.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(
                               m_flow=m_flow,
                               k=k,
                               m_flow_turbulent=m_flow_turbulent))
                 *max(1+(m_flow-m_flow_set)/m_flow_set/l2,1);
 end if;

 if homotopyInitialization then
   if from_dp then
      m_flow=homotopy(actual=m_flow_set-m_flow_cor,
                      simplified=m_flow_nominal_pos*dp/dp_nominal_pos);

   else
      dp=homotopy(actual=dp_min-dp_cor,
                  simplified=dp_nominal_pos*m_flow/m_flow_nominal_pos);
   end if;
 else // do not use homotopy
   if from_dp then
     m_flow=m_flow_set-m_flow_cor;
    else
      dp=dp_min-dp_cor;
    end if;
  end if; // homotopyInitialization
  annotation (defaultComponentName="val",
  Icon(coordinateSystem(preserveAspectRatio=true,  extent={{-100,-100},
            {100,100}}),       graphics={
        Polygon(
          points={{2,-2},{-76,60},{-76,-60},{2,-2}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-50,40},{0,-2},{54,40},{54,40},{-50,40}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-52,-42},{0,-4},{60,40},{60,-42},{-52,-42}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{0,-2},{82,60},{82,-60},{0,-2}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{0,40},{0,-4}}),
        Line(
          visible=not filteredOpening,
          points={{0,100},{0,40}})}),
Documentation(info="<html>
<p>
Two way valve with a pressure-independent valve opening characteristic.
The mass flow rate is controlled such that it is nearly equal to its
set point <code>y*m_flow_nominal</code>, unless the pressure
<code>dp</code> is too low, in which case a regular <code>Kv</code>
characteristic is used.
</p>
<h4>Main equations</h4>
<p>
First the minimum pressure head <code>dp_min</code>
required for delivering the requested mass flow rate
<code>y*m_flow_nominal</code> is computed. If
<code>dp &gt; dp_min</code> then the requested mass flow
rate is supplied. If <code>dp &lt; dp_min</code> then
<code>m_flow = Kv/sqrt(dp)</code>. Transition between
these two flow regimes happens in a smooth way.
</p>
<h4>Typical use and important parameters</h4>
<p>
This model is configured by setting <code>m_flow_nominal</code>
to the mass flow rate that the valve should supply when it is
completely open, i.e., <code>y = 1</code>. The pressure drop corresponding
to this working point can be set using <code>dpValve_nominal</code>,
or using a <code>Kv</code>, <code>Cv</code> or <code>Av</code>
value. The parameter <code>dpValve_fixed</code> can be used to add
additional pressure drops, although in this valve it is equivalent to
add these to <code>dpValve_nominal</code>.
</p>
<p>
The parameter <code>l2</code> represents the non-ideal
leakage behaviour of this valve for high pressures.
It is assumed that the mass flow rate will rise beyond
the requested mass flow rate <code>y*m_flow_nominal</code>
if <code>dp &gt; dpValve_nominal+dpFixed_nominal</code>.
The parameter <code>l2</code> can be used to control
the control the magnitude of this leakage.
In the ideal case <code>l2=0</code>, but
this may introduce singularities, for instance when
connecting this component with a fixed mass flow source.
</p>
<h4>Options</h4>
<p>
Parameter <code>deltax</code> sets the duration of
the transition region between the two flow regimes
as a fraction of <code>dp_nominal</code> or <code>m_flow_nominal</code>,
depending on the value of <code>from_dp</code>.
</p>
<h4>Implementation</h4>
<p>
Note that the result in the transition region when
using <code>from_dp = true</code> is not identical to
the result when using <code>from_dp = false</code>.
</p>
</html>",
revisions="<html>
<ul>
<li>
January 7, 2016, by Filip Jorissen:<br/>
Changed implementation such that <code>dp(m_flow)</code> is strictly
increasing and has a continuous derivative.
Removed parameter <code>deltax</code>.
</li>
<li>
January 29, 2015, by Filip Jorissen:<br/>
First implementation.
</li>
</ul>
</html>"));
end TwoWayPressureIndependent;
