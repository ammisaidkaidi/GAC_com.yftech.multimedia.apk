package android.app.usage;

import android.annotation.SystemApi;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class UsageStats implements Parcelable {
    public static final Parcelable.Creator<UsageStats> CREATOR = new Parcelable.Creator<UsageStats>() { // from class: android.app.usage.UsageStats.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageStats createFromParcel(Parcel parcel) {
            UsageStats usageStats = new UsageStats();
            usageStats.mPackageName = parcel.readString();
            usageStats.mBeginTimeStamp = parcel.readLong();
            usageStats.mEndTimeStamp = parcel.readLong();
            usageStats.mLastTimeUsed = parcel.readLong();
            usageStats.mTotalTimeInForeground = parcel.readLong();
            usageStats.mLaunchCount = parcel.readInt();
            usageStats.mAppLaunchCount = parcel.readInt();
            usageStats.mLastEvent = parcel.readInt();
            Bundle readBundle = parcel.readBundle();
            if (readBundle != null) {
                usageStats.mChooserCounts = new ArrayMap<>();
                for (String str : readBundle.keySet()) {
                    if (!usageStats.mChooserCounts.containsKey(str)) {
                        usageStats.mChooserCounts.put(str, new ArrayMap<>());
                    }
                    Bundle bundle = readBundle.getBundle(str);
                    if (bundle != null) {
                        for (String str2 : bundle.keySet()) {
                            int i = bundle.getInt(str2);
                            if (i > 0) {
                                usageStats.mChooserCounts.get(str).put(str2, Integer.valueOf(i));
                            }
                        }
                    }
                }
            }
            return usageStats;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageStats[] newArray(int i) {
            return new UsageStats[i];
        }
    };
    public int mAppLaunchCount;
    public long mBeginTimeStamp;
    public ArrayMap<String, ArrayMap<String, Integer>> mChooserCounts;
    public long mEndTimeStamp;
    public int mLastEvent;
    public long mLastTimeUsed;
    public int mLaunchCount;
    public String mPackageName;
    public long mTotalTimeInForeground;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UsageStats() {
    }

    public UsageStats(UsageStats usageStats) {
        this.mPackageName = usageStats.mPackageName;
        this.mBeginTimeStamp = usageStats.mBeginTimeStamp;
        this.mEndTimeStamp = usageStats.mEndTimeStamp;
        this.mLastTimeUsed = usageStats.mLastTimeUsed;
        this.mTotalTimeInForeground = usageStats.mTotalTimeInForeground;
        this.mLaunchCount = usageStats.mLaunchCount;
        this.mAppLaunchCount = usageStats.mAppLaunchCount;
        this.mLastEvent = usageStats.mLastEvent;
        this.mChooserCounts = usageStats.mChooserCounts;
    }

    public UsageStats getObfuscatedForInstantApp() {
        UsageStats usageStats = new UsageStats(this);
        usageStats.mPackageName = UsageEvents.INSTANT_APP_PACKAGE_NAME;
        return usageStats;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public long getFirstTimeStamp() {
        return this.mBeginTimeStamp;
    }

    public long getLastTimeStamp() {
        return this.mEndTimeStamp;
    }

    public long getLastTimeUsed() {
        return this.mLastTimeUsed;
    }

    public long getTotalTimeInForeground() {
        return this.mTotalTimeInForeground;
    }

    @SystemApi
    public int getAppLaunchCount() {
        return this.mAppLaunchCount;
    }

    public void add(UsageStats usageStats) {
        if (!this.mPackageName.equals(usageStats.mPackageName)) {
            throw new IllegalArgumentException("Can't merge UsageStats for package '" + this.mPackageName + "' with UsageStats for package '" + usageStats.mPackageName + "'.");
        }
        if (usageStats.mBeginTimeStamp > this.mBeginTimeStamp) {
            this.mLastEvent = Math.max(this.mLastEvent, usageStats.mLastEvent);
            this.mLastTimeUsed = Math.max(this.mLastTimeUsed, usageStats.mLastTimeUsed);
        }
        this.mBeginTimeStamp = Math.min(this.mBeginTimeStamp, usageStats.mBeginTimeStamp);
        this.mEndTimeStamp = Math.max(this.mEndTimeStamp, usageStats.mEndTimeStamp);
        this.mTotalTimeInForeground += usageStats.mTotalTimeInForeground;
        this.mLaunchCount += usageStats.mLaunchCount;
        this.mAppLaunchCount += usageStats.mAppLaunchCount;
        if (this.mChooserCounts == null) {
            this.mChooserCounts = usageStats.mChooserCounts;
            return;
        }
        if (usageStats.mChooserCounts != null) {
            int size = usageStats.mChooserCounts.size();
            for (int i = 0; i < size; i++) {
                String keyAt = usageStats.mChooserCounts.keyAt(i);
                ArrayMap<String, Integer> valueAt = usageStats.mChooserCounts.valueAt(i);
                if (!this.mChooserCounts.containsKey(keyAt) || this.mChooserCounts.get(keyAt) == null) {
                    this.mChooserCounts.put(keyAt, valueAt);
                } else {
                    int size2 = valueAt.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        String keyAt2 = valueAt.keyAt(i2);
                        this.mChooserCounts.get(keyAt).put(keyAt2, Integer.valueOf(this.mChooserCounts.get(keyAt).getOrDefault(keyAt2, 0).intValue() + valueAt.valueAt(i2).intValue()));
                    }
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPackageName);
        parcel.writeLong(this.mBeginTimeStamp);
        parcel.writeLong(this.mEndTimeStamp);
        parcel.writeLong(this.mLastTimeUsed);
        parcel.writeLong(this.mTotalTimeInForeground);
        parcel.writeInt(this.mLaunchCount);
        parcel.writeInt(this.mAppLaunchCount);
        parcel.writeInt(this.mLastEvent);
        Bundle bundle = new Bundle();
        if (this.mChooserCounts != null) {
            int size = this.mChooserCounts.size();
            for (int i2 = 0; i2 < size; i2++) {
                String keyAt = this.mChooserCounts.keyAt(i2);
                ArrayMap<String, Integer> valueAt = this.mChooserCounts.valueAt(i2);
                Bundle bundle2 = new Bundle();
                int size2 = valueAt.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    bundle2.putInt(valueAt.keyAt(i3), valueAt.valueAt(i3).intValue());
                }
                bundle.putBundle(keyAt, bundle2);
            }
        }
        parcel.writeBundle(bundle);
    }
}
