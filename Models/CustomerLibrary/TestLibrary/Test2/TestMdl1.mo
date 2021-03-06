within CustomerLibrary.TestLibrary.Test2;
model TestMdl1
  CustomerLibrary.Components.Heater heater(heating_table(
      tableOnFile=true,
      tableName="heater",
      fileName="../Data/heating.txt"))
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(C=50)
    annotation (Placement(transformation(extent={{-10,0},{10,20}})));
  CustomerLibrary.Components.AmbientLosses ambientLosses(ambient_G(
      tableOnFile=true,
      tableName="Gloss",
      fileName="../Data/ambient_losses.txt"))
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
equation
  connect(heater.port_a, heatCapacitor.port)
    annotation (Line(points={{-20,0},{0,0}}, color={191,0,0}));
  connect(ambientLosses.port_b, heatCapacitor.port)
    annotation (Line(points={{20.2,0},{0,0}}, color={191,0,0}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=100));
end TestMdl1;
