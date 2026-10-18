package com.android.internal.location.gnssmetrics;

import android.os.SystemClock;
import android.os.connectivity.GpsBatteryStats;
import android.util.Base64;
import android.util.Log;
import android.util.TimeUtils;
import com.android.internal.app.IBatteryStats;
import com.android.internal.location.nano.GnssLogsProto;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes3.dex */
public class GnssMetrics {
    private static final int DEFAULT_TIME_BETWEEN_FIXES_MILLISECS = 1000;
    public static final int GPS_SIGNAL_QUALITY_GOOD = 1;
    public static final int GPS_SIGNAL_QUALITY_POOR = 0;
    public static final int NUM_GPS_SIGNAL_QUALITY_LEVELS = 2;
    private static final String TAG = "GnssMetrics";
    private Statistics locationFailureStatistics;
    private String logStartInElapsedRealTime;
    private GnssPowerMetrics mGnssPowerMetrics;
    private Statistics positionAccuracyMeterStatistics;
    private Statistics timeToFirstFixSecStatistics;
    private Statistics topFourAverageCn0Statistics;

    public GnssMetrics(IBatteryStats iBatteryStats) {
        this.mGnssPowerMetrics = new GnssPowerMetrics(iBatteryStats);
        this.locationFailureStatistics = new Statistics();
        this.timeToFirstFixSecStatistics = new Statistics();
        this.positionAccuracyMeterStatistics = new Statistics();
        this.topFourAverageCn0Statistics = new Statistics();
        reset();
    }

    public void logReceivedLocationStatus(boolean z) {
        if (!z) {
            this.locationFailureStatistics.addItem(1.0d);
        } else {
            this.locationFailureStatistics.addItem(0.0d);
        }
    }

    public void logMissedReports(int i, int i2) {
        int max = (i2 / Math.max(1000, i)) - 1;
        if (max > 0) {
            for (int i3 = 0; i3 < max; i3++) {
                this.locationFailureStatistics.addItem(1.0d);
            }
        }
    }

    public void logTimeToFirstFixMilliSecs(int i) {
        this.timeToFirstFixSecStatistics.addItem(i / 1000);
    }

    public void logPositionAccuracyMeters(float f) {
        this.positionAccuracyMeterStatistics.addItem(f);
    }

    public void logCn0(float[] fArr, int i) {
        if (i == 0 || fArr == null || fArr.length == 0 || fArr.length < i) {
            if (i == 0) {
                this.mGnssPowerMetrics.reportSignalQuality(null, 0);
                return;
            }
            return;
        }
        float[] copyOf = Arrays.copyOf(fArr, i);
        Arrays.sort(copyOf);
        this.mGnssPowerMetrics.reportSignalQuality(copyOf, i);
        if (i < 4) {
            return;
        }
        int i2 = i - 4;
        double d = 0.0d;
        if (copyOf[i2] > 0.0d) {
            while (i2 < i) {
                d += copyOf[i2];
                i2++;
            }
            this.topFourAverageCn0Statistics.addItem(d / 4.0d);
        }
    }

    public String dumpGnssMetricsAsProtoString() {
        GnssLogsProto.GnssLog gnssLog = new GnssLogsProto.GnssLog();
        if (this.locationFailureStatistics.getCount() > 0) {
            gnssLog.numLocationReportProcessed = this.locationFailureStatistics.getCount();
            gnssLog.percentageLocationFailure = (int) (this.locationFailureStatistics.getMean() * 100.0d);
        }
        if (this.timeToFirstFixSecStatistics.getCount() > 0) {
            gnssLog.numTimeToFirstFixProcessed = this.timeToFirstFixSecStatistics.getCount();
            gnssLog.meanTimeToFirstFixSecs = (int) this.timeToFirstFixSecStatistics.getMean();
            gnssLog.standardDeviationTimeToFirstFixSecs = (int) this.timeToFirstFixSecStatistics.getStandardDeviation();
        }
        if (this.positionAccuracyMeterStatistics.getCount() > 0) {
            gnssLog.numPositionAccuracyProcessed = this.positionAccuracyMeterStatistics.getCount();
            gnssLog.meanPositionAccuracyMeters = (int) this.positionAccuracyMeterStatistics.getMean();
            gnssLog.standardDeviationPositionAccuracyMeters = (int) this.positionAccuracyMeterStatistics.getStandardDeviation();
        }
        if (this.topFourAverageCn0Statistics.getCount() > 0) {
            gnssLog.numTopFourAverageCn0Processed = this.topFourAverageCn0Statistics.getCount();
            gnssLog.meanTopFourAverageCn0DbHz = this.topFourAverageCn0Statistics.getMean();
            gnssLog.standardDeviationTopFourAverageCn0DbHz = this.topFourAverageCn0Statistics.getStandardDeviation();
        }
        gnssLog.powerMetrics = this.mGnssPowerMetrics.buildProto();
        String encodeToString = Base64.encodeToString(GnssLogsProto.GnssLog.toByteArray(gnssLog), 0);
        reset();
        return encodeToString;
    }

    public String dumpGnssMetricsAsText() {
        StringBuilder sb = new StringBuilder();
        sb.append("GNSS_KPI_START");
        sb.append('\n');
        sb.append("  KPI logging start time: ");
        sb.append(this.logStartInElapsedRealTime);
        sb.append("\n");
        sb.append("  KPI logging end time: ");
        TimeUtils.formatDuration(SystemClock.elapsedRealtimeNanos() / 1000000, sb);
        sb.append("\n");
        sb.append("  Number of location reports: ");
        sb.append(this.locationFailureStatistics.getCount());
        sb.append("\n");
        if (this.locationFailureStatistics.getCount() > 0) {
            sb.append("  Percentage location failure: ");
            sb.append(this.locationFailureStatistics.getMean() * 100.0d);
            sb.append("\n");
        }
        sb.append("  Number of TTFF reports: ");
        sb.append(this.timeToFirstFixSecStatistics.getCount());
        sb.append("\n");
        if (this.timeToFirstFixSecStatistics.getCount() > 0) {
            sb.append("  TTFF mean (sec): ");
            sb.append(this.timeToFirstFixSecStatistics.getMean());
            sb.append("\n");
            sb.append("  TTFF standard deviation (sec): ");
            sb.append(this.timeToFirstFixSecStatistics.getStandardDeviation());
            sb.append("\n");
        }
        sb.append("  Number of position accuracy reports: ");
        sb.append(this.positionAccuracyMeterStatistics.getCount());
        sb.append("\n");
        if (this.positionAccuracyMeterStatistics.getCount() > 0) {
            sb.append("  Position accuracy mean (m): ");
            sb.append(this.positionAccuracyMeterStatistics.getMean());
            sb.append("\n");
            sb.append("  Position accuracy standard deviation (m): ");
            sb.append(this.positionAccuracyMeterStatistics.getStandardDeviation());
            sb.append("\n");
        }
        sb.append("  Number of CN0 reports: ");
        sb.append(this.topFourAverageCn0Statistics.getCount());
        sb.append("\n");
        if (this.topFourAverageCn0Statistics.getCount() > 0) {
            sb.append("  Top 4 Avg CN0 mean (dB-Hz): ");
            sb.append(this.topFourAverageCn0Statistics.getMean());
            sb.append("\n");
            sb.append("  Top 4 Avg CN0 standard deviation (dB-Hz): ");
            sb.append(this.topFourAverageCn0Statistics.getStandardDeviation());
            sb.append("\n");
        }
        sb.append("GNSS_KPI_END");
        sb.append("\n");
        GpsBatteryStats gpsBatteryStats = this.mGnssPowerMetrics.getGpsBatteryStats();
        if (gpsBatteryStats != null) {
            sb.append("Power Metrics");
            sb.append("\n");
            sb.append("  Time on battery (min): " + (gpsBatteryStats.getLoggingDurationMs() / 60000.0d));
            sb.append("\n");
            long[] timeInGpsSignalQualityLevel = gpsBatteryStats.getTimeInGpsSignalQualityLevel();
            if (timeInGpsSignalQualityLevel != null && timeInGpsSignalQualityLevel.length == 2) {
                sb.append("  Amount of time (while on battery) Top 4 Avg CN0 > " + Double.toString(20.0d) + " dB-Hz (min): ");
                sb.append(((double) timeInGpsSignalQualityLevel[1]) / 60000.0d);
                sb.append("\n");
                sb.append("  Amount of time (while on battery) Top 4 Avg CN0 <= " + Double.toString(20.0d) + " dB-Hz (min): ");
                sb.append(((double) timeInGpsSignalQualityLevel[0]) / 60000.0d);
                sb.append("\n");
            }
            sb.append("  Energy consumed while on battery (mAh): ");
            sb.append(gpsBatteryStats.getEnergyConsumedMaMs() / 3600000.0d);
            sb.append("\n");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class Statistics {
        private int count;
        private double sum;
        private double sumSquare;

        private Statistics() {
        }

        public void reset() {
            this.count = 0;
            this.sum = 0.0d;
            this.sumSquare = 0.0d;
        }

        public void addItem(double d) {
            this.count++;
            this.sum += d;
            this.sumSquare += d * d;
        }

        public int getCount() {
            return this.count;
        }

        public double getMean() {
            return this.sum / this.count;
        }

        public double getStandardDeviation() {
            double d = this.sum / this.count;
            double d2 = d * d;
            double d3 = this.sumSquare / this.count;
            if (d3 > d2) {
                return Math.sqrt(d3 - d2);
            }
            return 0.0d;
        }
    }

    private void reset() {
        StringBuilder sb = new StringBuilder();
        TimeUtils.formatDuration(SystemClock.elapsedRealtimeNanos() / 1000000, sb);
        this.logStartInElapsedRealTime = sb.toString();
        this.locationFailureStatistics.reset();
        this.timeToFirstFixSecStatistics.reset();
        this.positionAccuracyMeterStatistics.reset();
        this.topFourAverageCn0Statistics.reset();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class GnssPowerMetrics {
        public static final double POOR_TOP_FOUR_AVG_CN0_THRESHOLD_DB_HZ = 20.0d;
        private static final double REPORTING_THRESHOLD_DB_HZ = 1.0d;
        private final IBatteryStats mBatteryStats;
        private double mLastAverageCn0 = -100.0d;

        private int getSignalLevel(double d) {
            return d > 20.0d ? 1 : 0;
        }

        public GnssPowerMetrics(IBatteryStats iBatteryStats) {
            this.mBatteryStats = iBatteryStats;
        }

        public GnssLogsProto.PowerMetrics buildProto() {
            GnssLogsProto.PowerMetrics powerMetrics = new GnssLogsProto.PowerMetrics();
            GpsBatteryStats gpsBatteryStats = GnssMetrics.this.mGnssPowerMetrics.getGpsBatteryStats();
            if (gpsBatteryStats != null) {
                powerMetrics.loggingDurationMs = gpsBatteryStats.getLoggingDurationMs();
                powerMetrics.energyConsumedMah = gpsBatteryStats.getEnergyConsumedMaMs() / 3600000.0d;
                long[] timeInGpsSignalQualityLevel = gpsBatteryStats.getTimeInGpsSignalQualityLevel();
                powerMetrics.timeInSignalQualityLevelMs = new long[timeInGpsSignalQualityLevel.length];
                for (int i = 0; i < timeInGpsSignalQualityLevel.length; i++) {
                    powerMetrics.timeInSignalQualityLevelMs[i] = timeInGpsSignalQualityLevel[i];
                }
            }
            return powerMetrics;
        }

        public GpsBatteryStats getGpsBatteryStats() {
            try {
                return this.mBatteryStats.getGpsBatteryStats();
            } catch (Exception e) {
                Log.w(GnssMetrics.TAG, "Exception", e);
                return null;
            }
        }

        public void reportSignalQuality(float[] fArr, int i) {
            double d = 0.0d;
            if (i > 0) {
                for (int max = Math.max(0, i - 4); max < i; max++) {
                    d += fArr[max];
                }
                d /= Math.min(i, 4);
            }
            if (Math.abs(d - this.mLastAverageCn0) < REPORTING_THRESHOLD_DB_HZ) {
                return;
            }
            try {
                this.mBatteryStats.noteGpsSignalQuality(getSignalLevel(d));
                this.mLastAverageCn0 = d;
            } catch (Exception e) {
                Log.w(GnssMetrics.TAG, "Exception", e);
            }
        }
    }
}
