﻿within IBPSA.Fluid.FixedResistances.Validation.Data;
record PipeDataULg151204_4
  "Experimental data from ULg's pipe test bench from December 4, 2015 (4); an increase followed by a decrease temperature"
  extends IBPSA.Fluid.FixedResistances.Validation.Data.BaseClasses.PipeDataULg(
    final n=5,
    T_ini_out=27.7,
    T_ini_in=31.2,
    m_flowIni=1.257,
    data=[0,1.257,27.1,27.7,30.5,31.2; 6.1,1.257,27.1,27.8,31.7,40.2; 12.5,
        1.257,27.3,28.1,38.2,49.7; 18.5,1.257,27.5,28.2,43.6,54.2; 24.8,1.257,
        27.6,28.3,47.8,56.8; 31.2,1.257,27.7,28.4,50.8,58.2; 37.3,1.257,27.9,
        28.6,52.8,59.1; 43.6,1.257,28,28.6,54.2,59.5; 49.6,1.257,28,28.6,55.3,
        59.9; 55.9,1.257,28,28.6,56.1,60.1; 62.1,1.257,28,28.6,56.7,60.3; 68.2,
        1.257,28,28.9,57.1,60.4; 74.6,1.257,28.8,31.1,57.5,60.5; 80.3,1.257,
        30.8,34.3,57.8,60.6; 86.4,1.257,34,38.2,58.1,60.7; 92.6,1.257,37.6,42.2,
        58.3,60.8; 98.6,1.257,41.1,45.8,58.5,60.9; 104.8,1.257,44.4,49.1,58.7,
        60.9; 111.3,1.257,47.3,51.9,58.8,60.9; 118.7,1.257,49.9,54.4,58.9,60.9;
        125.4,1.257,51.7,56.1,59,61; 132.2,1.257,53.1,57.4,59.1,61; 139,1.257,
        54.2,58.3,59.2,61; 147.4,1.257,55.1,59.1,59.3,61; 154.1,1.257,55.7,59.5,
        59.3,61; 160.9,1.257,56.1,59.9,59.4,61.1; 168.8,1.257,56.5,60.2,59.5,
        61.2; 175.2,1.257,56.8,60.4,59.6,61.2; 181.8,1.257,57,60.6,59.7,61.3;
        189.1,1.257,57.2,60.7,59.7,61.2; 196.2,1.257,57.3,60.7,59.7,61.3; 203,
        1.257,57.4,60.8,59.8,61.2; 209.7,1.257,57.5,60.9,59.8,61.2; 216.4,1.257,
        57.6,60.9,59.8,61.3; 222.6,1.257,57.7,60.9,59.9,61.3; 229,1.257,57.8,61,
        59.9,61.4; 235.3,1.257,57.8,61,60,61.4; 241.7,1.257,57.9,61.1,60,61.4;
        248.3,1.257,58,61.1,60.1,61.4; 254.9,1.257,58,61.1,60.1,61.4; 261.7,
        1.257,58.1,61.2,60.1,61.5; 268.1,1.257,58.2,61.2,60.2,61.5; 274.6,1.257,
        58.2,61.2,60.2,61.5; 281.4,1.257,58.2,61.2,60.2,61.5; 288.1,1.257,58.2,
        61.2,60.3,61.5; 294.8,1.257,58.3,61.2,60.3,61.5; 301.2,1.257,58.3,61.3,
        60.3,61.5; 307.7,1.257,58.3,61.3,60.3,61.6; 314.1,1.257,58.4,61.3,60.4,
        61.7; 320.3,1.257,58.4,61.4,60.4,61.7; 326.7,1.257,58.5,61.4,60.5,61.7;
        333.2,1.257,58.5,61.4,60.5,61.7; 339.7,1.257,58.6,61.4,60.5,61.8; 346,
        1.257,58.6,61.4,60.5,61.8; 352.4,1.257,58.6,61.5,60.6,61.8; 358.9,1.257,
        58.6,61.5,60.6,61.8; 365.3,1.257,58.6,61.5,60.6,61.8; 371.7,1.257,58.6,
        61.5,60.6,61.8; 378.2,1.257,58.7,61.5,60.6,61.8; 384.2,1.257,58.7,61.5,
        60.6,61.8; 391.2,1.257,58.8,61.6,60.6,61.8; 397.9,1.257,58.8,61.6,60.7,
        61.9; 404.6,1.257,58.8,61.6,60.7,61.9; 411.5,1.257,58.8,61.7,60.8,61.9;
        417.8,1.257,58.9,61.7,60.8,61.9; 424.7,1.257,58.9,61.7,60.8,61.9; 431,
        1.257,58.9,61.7,60.8,61.9; 437.2,1.257,58.9,61.7,60.8,62; 443.6,1.257,
        58.9,61.7,60.9,62; 450.4,1.257,58.9,61.7,60.9,62; 456.9,1.257,59,61.8,
        60.9,62; 463.4,1.257,59,61.8,60.9,62.1; 470.2,1.257,59,61.8,60.9,62.1;
        476.7,1.257,59,61.8,61,62; 483.4,1.257,59.1,61.8,61,62.1; 490.4,1.257,
        59.1,61.9,61,62; 497,1.257,59.1,61.9,61,62; 503.4,1.257,59.1,61.9,61,
        62.1; 510,1.257,59.2,61.9,61,62.2; 516.5,1.257,59.2,61.9,61.1,62.2;
        522.8,1.257,59.2,61.9,61.1,62.3; 529.6,1.257,59.2,62,61.1,62.2; 536.4,
        1.257,59.2,62,61.1,62.2; 543.2,1.257,59.2,62,61.1,62.2; 550.1,1.257,
        59.3,62,61.2,62.3; 556.3,1.257,59.3,62,61.2,62.3; 562.9,1.257,59.3,62,
        61.2,62.3; 569.5,1.257,59.3,62,61.2,62.2; 576.2,1.257,59.3,62,61.2,62.3;
        582.8,1.257,59.3,62,61.2,62.3; 589.3,1.257,59.3,62.1,61.2,62.3; 595.6,
        1.257,59.3,62.1,61.2,62.3; 601.9,1.257,59.4,62.1,61.3,62.3; 608.4,1.257,
        59.4,62.1,61.2,62.2; 614.9,1.257,59.4,62.1,61.2,62.1; 621.5,1.257,59.4,
        62.2,61.1,61.9; 628.3,1.257,59.4,62.2,60.9,61.6; 634.9,1.257,59.4,62.2,
        60.7,61.3; 641.4,1.257,59.4,62.2,60.5,60.9; 648.1,1.257,59.4,62.2,60.2,
        60.5; 654.7,1.257,59.5,62.2,59.9,60.1; 661.3,1.257,59.5,62.2,59.5,59.7;
        667.6,1.257,59.5,62.2,59.2,59.2; 674,1.257,59.5,62.2,58,53.9; 680.3,
        1.257,59.5,62.2,54.7,48.5; 687,1.257,59.5,62.2,51,44.4; 693.4,1.257,
        59.5,62.1,47.9,41.9; 699.6,1.257,59.4,62,45.6,40.4; 706,1.257,59.3,61.8,
        43.7,39.2; 712.4,1.257,59.1,61.6,42.2,38.6; 718.9,1.257,58.9,61.4,41.2,
        38.3; 725.5,1.257,58.7,61.1,40.5,38.1; 732.5,1.257,58.4,60.7,39.8,37.9;
        739.4,1.257,58,60.1,39.3,37.8; 746.1,1.257,57.2,58.5,39,37.7; 753.2,
        1.257,55.4,56,38.8,37.8; 759.8,1.257,53.2,53.2,38.5,37.7; 766.5,1.257,
        50.6,50.4,38.4,37.7; 772.9,1.257,48.2,47.8,38.3,37.6; 779.4,1.257,45.9,
        45.5,38.2,37.6; 785.7,1.257,44.1,43.7,38.1,37.6; 792.1,1.257,42.5,42.2,
        38,37.6; 798.5,1.257,41.3,41,37.9,37.5; 805.3,1.257,40.3,40.1,37.8,37.5;
        811.9,1.257,39.5,39.4,37.7,37.5; 818.3,1.257,39,38.9,37.7,37.4; 824.7,
        1.257,38.5,38.5,37.7,37.4; 831.1,1.257,38.2,38.3,37.6,37.3; 838.1,1.257,
        37.9,38,37.5,37.3; 845.1,1.257,37.6,37.9,37.4,37.3; 851.7,1.257,37.5,
        37.8,37.4,37.3; 858.2,1.257,37.3,37.7,37.4,37.2; 864.5,1.257,37.2,37.7,
        37.3,37.3; 871.3,1.257,37.1,37.6,37.3,37.2; 878,1.257,37,37.6,37.2,37.2;
        884.5,1.257,36.9,37.5,37.2,37.3; 891.8,1.257,36.9,37.5,37.2,37.1; 899.7,
        1.257,36.8,37.4,37.1,36.9]);
  annotation (Documentation(revisions="<html>
  <ul>
<li>
October 14, 2015 by Kevin Sartor:<br/>
Add some information about the test.
</li>
<li>
October 12, 2015 by Marcus Fuchs:<br/>
Add rudimentary documentation and integrate into experimental pipe package
</li>
<li>
October 7, 2015 by Kevin Sartor:<br/>
First implementation.
</li>
</ul>
</html>", info="<html>
<p><b><span style=\"color: #008000;\">Overview</span></b> </p>
<p>This record contains information of an aproximately 15 minutes long test bench carried out at the University of Liège.</p>


<p><b><span style=\"color: #008000;\">Data structure</span></b> </p>
<p><br>Column 1: Time in s </p>
<p>Column 2: Mass flow rate in kg/s</p>
<p>Column 3: Outlet pipe temperature in °C  </p>
<p>Column 4: Outlet water temperature in °C </p>
<p>Column 5: Inlet pipe temperature in °C  </p>
<p>Column 6: Inlet water temperature in °C  </p>

<p><b><span style=\"color: #008000;\">Test procedure</span></b> </p>
<p>Before to perform a test, the water city network is pushed inside the approximately 39 meter long studied pipe during about 10 minutes to be sure that it is at the same temperature. During this time period, valves V3 and V1 are opened, the boiler is off and the valve V2 is closed.</p>
<p>
Then, the valve V1 is closed and the valve V2 and V3 are opened. The boiler is started to reach the setpoint hot water temperature. When the temperature setpoint is achieved, data starts to be recorded, the valve V1 is opened and the valve V2 is closed at the same time to supply the studied pipe in hot water. After the outlet pipe temperature is stabilized, the boiler is shut off.</p>
<p>During the test, the ambient temperature is equal to 18 °C and the mass flow rate is set to 1.245 kg/s.</p>

<p><b><span style=\"color: #008000;\">Test bench schematic</span></b> </p>
<p><img src=\"modelica://IBPSA/Resources/Images/Experimental/ULgTestBench.png\" border=\"1\"/></p>
<p>Notice: length are approximate</p>

<p><b><span style=\"color: #008000;\">Pipe characteristics</span></b> </p>

<ul>
<li>Metal density about 7800 kg/m³</li>
<li>Specific heat capacity about 480 J/kg/K</li>
<li>Thickness 3.91 mm (Outer diameter 0.0603 m)</li>
<li>Inner diameter: 0.05248 m</li>
<li>Roughness is currently neglected</li>
<li>Initial temperature of the pipe is considered equal to the initial temperature of the water (cooliing before test)</li>
<li>Heat transfer coefficient between the pipe and the ambient is assumed at 5 W/m²/K (from internal model) due to insulation.  The pipe is insulated by Tubollt 60/13 (13mm of thickness) whose the nominal thermal coefficient is inferior 0.04. Notice the insulation is quite aged therefore the nominal thermal coefficient could be higher</li>
<li>Heat transfer coefficient between water and pipe is a function of the fluid temperature (determined by EES software)</li>
</ul>



</html>"));
end PipeDataULg151204_4;
