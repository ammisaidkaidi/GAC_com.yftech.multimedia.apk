package android.widget;

import android.app.ActivityThread;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.icu.util.Calendar;
import android.os.Handler;
import android.telephony.SubscriptionPlan;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RemoteViews;
import com.android.internal.R;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;
import libcore.icu.DateUtilsBridge;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes2.dex */
public class DateTimeView extends TextView {
    private static final int SHOW_MONTH_DAY_YEAR = 1;
    private static final int SHOW_TIME = 0;
    private static final ThreadLocal<ReceiverInfo> sReceiverInfo = new ThreadLocal<>();
    int mLastDisplay;
    DateFormat mLastFormat;
    private String mNowText;
    private boolean mShowRelativeTime;
    Date mTime;
    long mTimeMillis;
    private long mUpdateTimeMillis;

    public DateTimeView(Context context) {
        this(context, null);
    }

    public DateTimeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastDisplay = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DateTimeView, 0, 0);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            if (obtainStyledAttributes.getIndex(i) == 0) {
                setShowRelativeTime(obtainStyledAttributes.getBoolean(i, false));
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ReceiverInfo receiverInfo = sReceiverInfo.get();
        if (receiverInfo == null) {
            receiverInfo = new ReceiverInfo();
            sReceiverInfo.set(receiverInfo);
        }
        receiverInfo.addView(this);
        if (this.mShowRelativeTime) {
            update();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ReceiverInfo receiverInfo = sReceiverInfo.get();
        if (receiverInfo != null) {
            receiverInfo.removeView(this);
        }
    }

    @RemotableViewMethod
    public void setTime(long j) {
        Time time = new Time();
        time.set(j);
        this.mTimeMillis = time.toMillis(false);
        this.mTime = new Date(time.year - 1900, time.month, time.monthDay, time.hour, time.minute, 0);
        update();
    }

    @RemotableViewMethod
    public void setShowRelativeTime(boolean z) {
        this.mShowRelativeTime = z;
        updateNowText();
        update();
    }

    @Override // android.view.View
    @RemotableViewMethod
    public void setVisibility(int i) {
        boolean z = i != 8 && getVisibility() == 8;
        super.setVisibility(i);
        if (z) {
            update();
        }
    }

    void update() {
        DateFormat timeFormat;
        if (this.mTime == null || getVisibility() == 8) {
            return;
        }
        if (this.mShowRelativeTime) {
            updateRelativeTime();
            return;
        }
        Date date = this.mTime;
        Time time = new Time();
        time.set(this.mTimeMillis);
        int i = 0;
        time.second = 0;
        time.hour -= 12;
        long millis = time.toMillis(false);
        time.hour += 12;
        long millis2 = time.toMillis(false);
        time.hour = 0;
        time.minute = 0;
        long millis3 = time.toMillis(false);
        time.monthDay++;
        long millis4 = time.toMillis(false);
        time.set(System.currentTimeMillis());
        time.second = 0;
        long normalize = time.normalize(false);
        if ((normalize < millis3 || normalize >= millis4) && (normalize < millis || normalize >= millis2)) {
            i = 1;
        }
        if (i == this.mLastDisplay && this.mLastFormat != null) {
            timeFormat = this.mLastFormat;
        } else {
            switch (i) {
                case 0:
                    timeFormat = getTimeFormat();
                    break;
                case 1:
                    timeFormat = DateFormat.getDateInstance(3);
                    break;
                default:
                    throw new RuntimeException("unknown display value: " + i);
            }
            this.mLastFormat = timeFormat;
        }
        setText(timeFormat.format(this.mTime));
        if (i == 0) {
            if (millis2 <= millis4) {
                millis2 = millis4;
            }
            this.mUpdateTimeMillis = millis2;
        } else {
            if (this.mTimeMillis < normalize) {
                this.mUpdateTimeMillis = 0L;
                return;
            }
            if (millis >= millis3) {
                millis = millis3;
            }
            this.mUpdateTimeMillis = millis;
        }
    }

    private void updateRelativeTime() {
        int i;
        String format;
        long currentTimeMillis = System.currentTimeMillis();
        long abs = Math.abs(currentTimeMillis - this.mTimeMillis);
        boolean z = currentTimeMillis >= this.mTimeMillis;
        long j = DateUtils.MINUTE_IN_MILLIS;
        if (abs < DateUtils.MINUTE_IN_MILLIS) {
            setText(this.mNowText);
            this.mUpdateTimeMillis = this.mTimeMillis + DateUtils.MINUTE_IN_MILLIS + 1;
            return;
        }
        if (abs < DateUtils.HOUR_IN_MILLIS) {
            i = (int) (abs / DateUtils.MINUTE_IN_MILLIS);
            format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_minutes_shortest : android.R.plurals.duration_minutes_shortest_future, i), Integer.valueOf(i));
        } else {
            j = DateUtils.DAY_IN_MILLIS;
            if (abs < DateUtils.DAY_IN_MILLIS) {
                i = (int) (abs / DateUtils.HOUR_IN_MILLIS);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_hours_shortest : android.R.plurals.duration_hours_shortest_future, i), Integer.valueOf(i));
                j = 3600000;
            } else if (abs < DateUtils.YEAR_IN_MILLIS) {
                TimeZone timeZone = TimeZone.getDefault();
                i = Math.max(Math.abs(dayDistance(timeZone, this.mTimeMillis, currentTimeMillis)), 1);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_days_shortest : android.R.plurals.duration_days_shortest_future, i), Integer.valueOf(i));
                if (z || i != 1) {
                    this.mUpdateTimeMillis = computeNextMidnight(timeZone);
                    j = -1;
                }
            } else {
                i = (int) (abs / DateUtils.YEAR_IN_MILLIS);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_years_shortest : android.R.plurals.duration_years_shortest_future, i), Integer.valueOf(i));
                j = 31449600000L;
            }
        }
        if (j != -1) {
            if (z) {
                this.mUpdateTimeMillis = this.mTimeMillis + (j * (i + 1)) + 1;
            } else {
                this.mUpdateTimeMillis = (this.mTimeMillis - (j * i)) + 1;
            }
        }
        setText(format);
    }

    private long computeNextMidnight(TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(DateUtilsBridge.icuTimeZone(timeZone));
        calendar.add(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateNowText();
        update();
    }

    private void updateNowText() {
        if (this.mShowRelativeTime) {
            this.mNowText = getContext().getResources().getString(android.R.string.kg_invalid_sim_pin_hint);
        }
    }

    private static int dayDistance(TimeZone timeZone, long j, long j2) {
        return Time.getJulianDay(j2, timeZone.getOffset(j2) / 1000) - Time.getJulianDay(j, timeZone.getOffset(j) / 1000);
    }

    private DateFormat getTimeFormat() {
        return android.text.format.DateFormat.getTimeFormat(getContext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearFormatAndUpdate() {
        this.mLastFormat = null;
        update();
    }

    @Override // android.widget.TextView, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        String format;
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (this.mShowRelativeTime) {
            long currentTimeMillis = System.currentTimeMillis();
            long abs = Math.abs(currentTimeMillis - this.mTimeMillis);
            boolean z = currentTimeMillis >= this.mTimeMillis;
            if (abs < DateUtils.MINUTE_IN_MILLIS) {
                format = this.mNowText;
            } else if (abs < DateUtils.HOUR_IN_MILLIS) {
                int i = (int) (abs / DateUtils.MINUTE_IN_MILLIS);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_minutes_relative : android.R.plurals.duration_minutes_relative_future, i), Integer.valueOf(i));
            } else if (abs < DateUtils.DAY_IN_MILLIS) {
                int i2 = (int) (abs / DateUtils.HOUR_IN_MILLIS);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_hours_relative : android.R.plurals.duration_hours_relative_future, i2), Integer.valueOf(i2));
            } else if (abs < DateUtils.YEAR_IN_MILLIS) {
                int max = Math.max(Math.abs(dayDistance(TimeZone.getDefault(), this.mTimeMillis, currentTimeMillis)), 1);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_days_relative : android.R.plurals.duration_days_relative_future, max), Integer.valueOf(max));
            } else {
                int i3 = (int) (abs / DateUtils.YEAR_IN_MILLIS);
                format = String.format(getContext().getResources().getQuantityString(z ? android.R.plurals.duration_years_relative : android.R.plurals.duration_years_relative_future, i3), Integer.valueOf(i3));
            }
            accessibilityNodeInfo.setText(format);
        }
    }

    public static void setReceiverHandler(Handler handler) {
        ReceiverInfo receiverInfo = sReceiverInfo.get();
        if (receiverInfo == null) {
            receiverInfo = new ReceiverInfo();
            sReceiverInfo.set(receiverInfo);
        }
        receiverInfo.setHandler(handler);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class ReceiverInfo {
        private final ArrayList<DateTimeView> mAttachedViews;
        private Handler mHandler;
        private final ContentObserver mObserver;
        private final BroadcastReceiver mReceiver;

        private ReceiverInfo() {
            this.mAttachedViews = new ArrayList<>();
            this.mReceiver = new BroadcastReceiver() { // from class: android.widget.DateTimeView.ReceiverInfo.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (!"android.intent.action.TIME_TICK".equals(intent.getAction()) || System.currentTimeMillis() >= ReceiverInfo.this.getSoonestUpdateTime()) {
                        ReceiverInfo.this.updateAll();
                    }
                }
            };
            this.mObserver = new ContentObserver(new Handler()) { // from class: android.widget.DateTimeView.ReceiverInfo.2
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    ReceiverInfo.this.updateAll();
                }
            };
            this.mHandler = new Handler();
        }

        public void addView(DateTimeView dateTimeView) {
            synchronized (this.mAttachedViews) {
                boolean isEmpty = this.mAttachedViews.isEmpty();
                this.mAttachedViews.add(dateTimeView);
                if (isEmpty) {
                    register(getApplicationContextIfAvailable(dateTimeView.getContext()));
                }
            }
        }

        public void removeView(DateTimeView dateTimeView) {
            synchronized (this.mAttachedViews) {
                if (this.mAttachedViews.remove(dateTimeView) && this.mAttachedViews.isEmpty()) {
                    unregister(getApplicationContextIfAvailable(dateTimeView.getContext()));
                }
            }
        }

        void updateAll() {
            synchronized (this.mAttachedViews) {
                int size = this.mAttachedViews.size();
                for (int i = 0; i < size; i++) {
                    final DateTimeView dateTimeView = this.mAttachedViews.get(i);
                    dateTimeView.post(new Runnable() { // from class: android.widget.-$$Lambda$DateTimeView$ReceiverInfo$AVLnX7U5lTcE9jLnlKKNAT1GUeI
                        @Override // java.lang.Runnable
                        public final void run() {
                            DateTimeView.this.clearFormatAndUpdate();
                        }
                    });
                }
            }
        }

        long getSoonestUpdateTime() {
            long j;
            synchronized (this.mAttachedViews) {
                int size = this.mAttachedViews.size();
                j = SubscriptionPlan.BYTES_UNLIMITED;
                for (int i = 0; i < size; i++) {
                    long j2 = this.mAttachedViews.get(i).mUpdateTimeMillis;
                    if (j2 < j) {
                        j = j2;
                    }
                }
            }
            return j;
        }

        static final Context getApplicationContextIfAvailable(Context context) {
            Context applicationContext = context.getApplicationContext();
            return applicationContext != null ? applicationContext : ActivityThread.currentApplication().getApplicationContext();
        }

        void register(Context context) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            context.registerReceiver(this.mReceiver, intentFilter, null, this.mHandler);
        }

        void unregister(Context context) {
            context.unregisterReceiver(this.mReceiver);
        }

        public void setHandler(Handler handler) {
            this.mHandler = handler;
            synchronized (this.mAttachedViews) {
                if (!this.mAttachedViews.isEmpty()) {
                    unregister(this.mAttachedViews.get(0).getContext());
                    register(this.mAttachedViews.get(0).getContext());
                }
            }
        }
    }
}
