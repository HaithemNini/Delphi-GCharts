program GChartsDemo;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  cfs.GCharts in '..\..\sources\cfs.GCharts.pas',
  cfs.GCharts.uniGUI in '..\..\sources\cfs.GCharts.uniGUI.pas',
  Demo.BaseFrame in 'Demo.BaseFrame.pas' {DemoBaseFrame: TUniFrame},
  Demo.Overview in 'Demo.Overview.pas',
  Demo.AnnotationChart.Sample in 'Demo.AnnotationChart.Sample.pas',
  Demo.AreaChart.Sample in 'Demo.AreaChart.Sample.pas',
  Demo.AreaChart.Stacking in 'Demo.AreaChart.Stacking.pas',
  Demo.BarChart.Annotations in 'Demo.BarChart.Annotations.pas',
  Demo.BarChart.BarStyles in 'Demo.BarChart.BarStyles.pas',
  Demo.BarChart.ColoringBars in 'Demo.BarChart.ColoringBars.pas',
  Demo.BarChart.Customizable in 'Demo.BarChart.Customizable.pas',
  Demo.BarChart.LabelingBars in 'Demo.BarChart.LabelingBars.pas',
  Demo.BarChart.Sample in 'Demo.BarChart.Sample.pas',
  Demo.BarChart.Series in 'Demo.BarChart.Series.pas',
  Demo.BarChart.Stacked in 'Demo.BarChart.Stacked.pas',
  Demo.BarChart.Stacking in 'Demo.BarChart.Stacking.pas',
  Demo.BubbleChart.ColorByNumbers in 'Demo.BubbleChart.ColorByNumbers.pas',
  Demo.BubbleChart.CustomizingLabels in 'Demo.BubbleChart.CustomizingLabels.pas',
  Demo.BubbleChart.Sample in 'Demo.BubbleChart.Sample.pas',
  Demo.CalendarChart.MultiLanguage in 'Demo.CalendarChart.MultiLanguage.pas',
  Demo.CalendarChart.Sample in 'Demo.CalendarChart.Sample.pas',
  Demo.CandlestickChart.Sample in 'Demo.CandlestickChart.Sample.pas',
  Demo.CandlestickChart.Waterfall in 'Demo.CandlestickChart.Waterfall.pas',
  Demo.ColumnChart.Annotations in 'Demo.ColumnChart.Annotations.pas',
  Demo.ColumnChart.ColoringColumns in 'Demo.ColumnChart.ColoringColumns.pas',
  Demo.ColumnChart.ColumnStyles in 'Demo.ColumnChart.ColumnStyles.pas',
  Demo.ColumnChart.Customizable in 'Demo.ColumnChart.Customizable.pas',
  Demo.ColumnChart.LabelingColumns in 'Demo.ColumnChart.LabelingColumns.pas',
  Demo.ColumnChart.Sample in 'Demo.ColumnChart.Sample.pas',
  Demo.ColumnChart.Series in 'Demo.ColumnChart.Series.pas',
  Demo.ColumnChart.Stacked in 'Demo.ColumnChart.Stacked.pas',
  Demo.ColumnChart.Stacking in 'Demo.ColumnChart.Stacking.pas',
  Demo.ColumnChart.Trendlines in 'Demo.ColumnChart.Trendlines.pas',
  Demo.ComboChart.Sample in 'Demo.ComboChart.Sample.pas',
  Demo.DiffChart.Column in 'Demo.DiffChart.Column.pas',
  Demo.DiffChart.Pie in 'Demo.DiffChart.Pie.pas',
  Demo.GanttChart.ComputingStartEndDuration in 'Demo.GanttChart.ComputingStartEndDuration.pas',
  Demo.GanttChart.CriticalPath in 'Demo.GanttChart.CriticalPath.pas',
  Demo.GanttChart.GroupingResources in 'Demo.GanttChart.GroupingResources.pas',
  Demo.GanttChart.NoDependencies in 'Demo.GanttChart.NoDependencies.pas',
  Demo.GanttChart.Sample in 'Demo.GanttChart.Sample.pas',
  Demo.GanttChart.StylingArrows in 'Demo.GanttChart.StylingArrows.pas',
  Demo.GanttChart.StylingTracks in 'Demo.GanttChart.StylingTracks.pas',
  Demo.GaugeChart.Sample in 'Demo.GaugeChart.Sample.pas',
  Demo.GeoChart.Coloring in 'Demo.GeoChart.Coloring.pas',
  Demo.GeoChart.Marker in 'Demo.GeoChart.Marker.pas',
  Demo.GeoChart.ProportionalMarkers in 'Demo.GeoChart.ProportionalMarkers.pas',
  Demo.GeoChart.Sample in 'Demo.GeoChart.Sample.pas',
  Demo.Histogram.MultipleSeries in 'Demo.Histogram.MultipleSeries.pas',
  Demo.Histogram.Sample in 'Demo.Histogram.Sample.pas',
  Demo.Intervals.Sample in 'Demo.Intervals.Sample.pas',
  Demo.Intervals.Styles in 'Demo.Intervals.Styles.pas',
  Demo.LineChart.Crosshairs in 'Demo.LineChart.Crosshairs.pas',
  Demo.LineChart.CurvingLines in 'Demo.LineChart.CurvingLines.pas',
  Demo.LineChart.LogScales in 'Demo.LineChart.LogScales.pas',
  Demo.LineChart.Sample in 'Demo.LineChart.Sample.pas',
  Demo.LineChart.Styles in 'Demo.LineChart.Styles.pas',
  Demo.LineChart.TrendLines in 'Demo.LineChart.TrendLines.pas',
  Demo.Material.LineChart.DualY in 'Demo.Material.LineChart.DualY.pas',
  Demo.Material.LineChart.Sample in 'Demo.Material.LineChart.Sample.pas',
  Demo.Material.LineChart.TopX in 'Demo.Material.LineChart.TopX.pas',
  Demo.MaterialBarChart.DualX in 'Demo.MaterialBarChart.DualX.pas',
  Demo.MaterialBarChart.RightY in 'Demo.MaterialBarChart.RightY.pas',
  Demo.MaterialBarChart.Sample in 'Demo.MaterialBarChart.Sample.pas',
  Demo.MaterialColumnChart.DualY in 'Demo.MaterialColumnChart.DualY.pas',
  Demo.MaterialColumnChart.RightY in 'Demo.MaterialColumnChart.RightY.pas',
  Demo.MaterialColumnChart.Sample in 'Demo.MaterialColumnChart.Sample.pas',
  Demo.MaterialScatterChart.DualY in 'Demo.MaterialScatterChart.DualY.pas',
  Demo.MaterialScatterChart.Sample in 'Demo.MaterialScatterChart.Sample.pas',
  Demo.MaterialScatterChart.TopX in 'Demo.MaterialScatterChart.TopX.pas',
  Demo.Miscellaneous.Animation in 'Demo.Miscellaneous.Animation.pas',
  Demo.Miscellaneous.AxisNumberFormat in 'Demo.Miscellaneous.AxisNumberFormat.pas',
  Demo.Miscellaneous.AxisNumberFormatLang in 'Demo.Miscellaneous.AxisNumberFormatLang.pas',
  Demo.Miscellaneous.Crosshairs in 'Demo.Miscellaneous.Crosshairs.pas',
  Demo.Miscellaneous.Customize in 'Demo.Miscellaneous.Customize.pas',
  Demo.Miscellaneous.CustomizeLines in 'Demo.Miscellaneous.CustomizeLines.pas',
  Demo.Miscellaneous.CustomizePoints in 'Demo.Miscellaneous.CustomizePoints.pas',
  Demo.Miscellaneous.CustomizeTooltips in 'Demo.Miscellaneous.CustomizeTooltips.pas',
  Demo.Miscellaneous.Formatters in 'Demo.Miscellaneous.Formatters.pas',
  Demo.Miscellaneous.Overlays in 'Demo.Miscellaneous.Overlays.pas',
  Demo.OrgChart.Sample in 'Demo.OrgChart.Sample.pas',
  Demo.PieChart.Donut in 'Demo.PieChart.Donut.pas',
  Demo.PieChart.Exploding_a_Slice in 'Demo.PieChart.Exploding_a_Slice.pas',
  Demo.PieChart.Removing_Slices in 'Demo.PieChart.Removing_Slices.pas',
  Demo.PieChart.Rotating in 'Demo.PieChart.Rotating.pas',
  Demo.PieChart.Sample in 'Demo.PieChart.Sample.pas',
  Demo.PieChart_3D in 'Demo.PieChart_3D.pas',
  Demo.SankeyDiagram.MultiLevels in 'Demo.SankeyDiagram.MultiLevels.pas',
  Demo.SankeyDiagram.Sample in 'Demo.SankeyDiagram.Sample.pas',
  Demo.ScatterChart.DualY in 'Demo.ScatterChart.DualY.pas',
  Demo.ScatterChart.Sample in 'Demo.ScatterChart.Sample.pas',
  Demo.SteppedAreaChart.Custom in 'Demo.SteppedAreaChart.Custom.pas',
  Demo.SteppedAreaChart.Sample in 'Demo.SteppedAreaChart.Sample.pas',
  Demo.SteppedAreaChart.Stacked in 'Demo.SteppedAreaChart.Stacked.pas',
  Demo.TableChart.Sample in 'Demo.TableChart.Sample.pas',
  Demo.TimelineChart.Advanced in 'Demo.TimelineChart.Advanced.pas',
  Demo.TimelineChart.ClassroomSchedules in 'Demo.TimelineChart.ClassroomSchedules.pas',
  Demo.TimelineChart.ClassroomSchedulesCtrlColors in 'Demo.TimelineChart.ClassroomSchedulesCtrlColors.pas',
  Demo.TimelineChart.ClassroomSchedulesSingleColor in 'Demo.TimelineChart.ClassroomSchedulesSingleColor.pas',
  Demo.TimelineChart.LabelingTheBars in 'Demo.TimelineChart.LabelingTheBars.pas',
  Demo.TimelineChart.Sample in 'Demo.TimelineChart.Sample.pas',
  Demo.TreeMapChart.Sample in 'Demo.TreeMapChart.Sample.pas',
  Demo.Trendlines.Exponential in 'Demo.Trendlines.Exponential.pas',
  Demo.Trendlines.Polynomial in 'Demo.Trendlines.Polynomial.pas',
  Demo.Trendlines.Sample in 'Demo.Trendlines.Sample.pas',
  Demo.WordTrees.Sample in 'Demo.WordTrees.Sample.pas',
  Demo.MaterialColumnChart.TopX in 'Demo.MaterialColumnChart.TopX.pas',
  Demo.MaterialBarChart.TopX in 'Demo.MaterialBarChart.TopX.pas',
  Demo.LineChart.Bitcoin in 'Demo.LineChart.Bitcoin.pas',
  Demo.Miscellaneous.DateTimes in 'Demo.Miscellaneous.DateTimes.pas',
  Demo.Miscellaneous.AxisScale in 'Demo.Miscellaneous.AxisScale.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.