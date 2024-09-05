double getScaleDetails(DateTime min, DateTime max) {
  // Convert DateTime to milliseconds since epoch for easy calculation
  int minMillis = min.millisecondsSinceEpoch;
  int maxMillis = max.millisecondsSinceEpoch;

  // Minimal increment to avoid extreme values on the chart edges
  double epsilon = (maxMillis - minMillis) / 1e6;
  maxMillis += epsilon.round();
  minMillis -= epsilon.round();
  int range = maxMillis - minMillis;

  // Target number of intervals to display
  int stepCount = 15;
  // Rough step in milliseconds
  int roughStep = (range / (stepCount - 1)).round();

  // Define good normalized steps in milliseconds
  List<int> goodNormalizedSteps = [
    1 * 60 * 1000, // 1 minute
    5 * 60 * 1000, // 5 minutes
    15 * 60 * 1000, // 15 minutes
    30 * 60 * 1000, // 30 minutes
    1 * 60 * 60 * 1000, // 1 hour
    2 * 60 * 60 * 1000, // 2 hours
    4 * 60 * 60 * 1000, // 4 hours
    6 * 60 * 60 * 1000, // 6 hours
    8 * 60 * 60 * 1000, // 8 hours
    12 * 60 * 60 * 1000, // 12 hours
    24 * 60 * 60 * 1000, // 1 day
    7 * 24 * 60 * 60 * 1000, // 7 day
    30 * 24 * 60 * 60 * 1000 // 30 day
  ];

  // Normalize rough step to find the best fitting normalized step
  int normalizedStep = roughStep;
  for (var step in goodNormalizedSteps) {
    if (roughStep <= step) {
      normalizedStep = step;
      break;
    }
  }

  Duration stepDuration = Duration(milliseconds: normalizedStep);

  return stepDuration.inMicroseconds.toDouble();
}
