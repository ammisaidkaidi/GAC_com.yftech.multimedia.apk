package android.app.usage;

import android.annotation.SystemApi;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class UsageEvents implements Parcelable {
    public static final Parcelable.Creator<UsageEvents> CREATOR = new Parcelable.Creator<UsageEvents>() { // from class: android.app.usage.UsageEvents.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageEvents createFromParcel(Parcel parcel) {
            return new UsageEvents(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UsageEvents[] newArray(int i) {
            return new UsageEvents[i];
        }
    };
    public static final String INSTANT_APP_CLASS_NAME = "android.instant_class";
    public static final String INSTANT_APP_PACKAGE_NAME = "android.instant_app";
    private final int mEventCount;
    private List<Event> mEventsToWrite;
    private int mIndex;
    private Parcel mParcel;
    private String[] mStringPool;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Event {
        public static final int CHOOSER_ACTION = 9;
        public static final int CONFIGURATION_CHANGE = 5;
        public static final int CONTINUE_PREVIOUS_DAY = 4;
        public static final int END_OF_DAY = 3;
        public static final int FLAG_IS_PACKAGE_INSTANT_APP = 1;
        public static final int KEYGUARD_HIDDEN = 18;
        public static final int KEYGUARD_SHOWN = 17;
        public static final int MOVE_TO_BACKGROUND = 2;
        public static final int MOVE_TO_FOREGROUND = 1;
        public static final int NONE = 0;

        @SystemApi
        public static final int NOTIFICATION_INTERRUPTION = 12;

        @SystemApi
        public static final int NOTIFICATION_SEEN = 10;
        public static final int SCREEN_INTERACTIVE = 15;
        public static final int SCREEN_NON_INTERACTIVE = 16;
        public static final int SHORTCUT_INVOCATION = 8;

        @SystemApi
        public static final int SLICE_PINNED = 14;

        @SystemApi
        public static final int SLICE_PINNED_PRIV = 13;
        public static final int STANDBY_BUCKET_CHANGED = 11;

        @SystemApi
        public static final int SYSTEM_INTERACTION = 6;
        public static final int USER_INTERACTION = 7;
        public String mAction;
        public int mBucketAndReason;
        public String mClass;
        public Configuration mConfiguration;
        public String[] mContentAnnotations;
        public String mContentType;
        public int mEventType;
        public int mFlags;
        public String mNotificationChannelId;
        public String mPackage;
        public String mShortcutId;
        public long mTimeStamp;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface EventFlags {
        }

        public Event() {
        }

        public Event(Event event) {
            this.mPackage = event.mPackage;
            this.mClass = event.mClass;
            this.mTimeStamp = event.mTimeStamp;
            this.mEventType = event.mEventType;
            this.mConfiguration = event.mConfiguration;
            this.mShortcutId = event.mShortcutId;
            this.mAction = event.mAction;
            this.mContentType = event.mContentType;
            this.mContentAnnotations = event.mContentAnnotations;
            this.mFlags = event.mFlags;
            this.mBucketAndReason = event.mBucketAndReason;
            this.mNotificationChannelId = event.mNotificationChannelId;
        }

        public String getPackageName() {
            return this.mPackage;
        }

        public String getClassName() {
            return this.mClass;
        }

        public long getTimeStamp() {
            return this.mTimeStamp;
        }

        public int getEventType() {
            return this.mEventType;
        }

        public Configuration getConfiguration() {
            return this.mConfiguration;
        }

        public String getShortcutId() {
            return this.mShortcutId;
        }

        public int getStandbyBucket() {
            return (this.mBucketAndReason & Color.RED) >>> 16;
        }

        public int getAppStandbyBucket() {
            return (this.mBucketAndReason & Color.RED) >>> 16;
        }

        public int getStandbyReason() {
            return this.mBucketAndReason & 65535;
        }

        @SystemApi
        public String getNotificationChannelId() {
            return this.mNotificationChannelId;
        }

        public Event getObfuscatedIfInstantApp() {
            if ((this.mFlags & 1) == 0) {
                return this;
            }
            Event event = new Event(this);
            event.mPackage = UsageEvents.INSTANT_APP_PACKAGE_NAME;
            event.mClass = UsageEvents.INSTANT_APP_CLASS_NAME;
            return event;
        }
    }

    public UsageEvents(Parcel parcel) {
        this.mEventsToWrite = null;
        this.mParcel = null;
        this.mIndex = 0;
        byte[] readBlob = parcel.readBlob();
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(readBlob, 0, readBlob.length);
        obtain.setDataPosition(0);
        this.mEventCount = obtain.readInt();
        this.mIndex = obtain.readInt();
        if (this.mEventCount > 0) {
            this.mStringPool = obtain.createStringArray();
            int readInt = obtain.readInt();
            int readInt2 = obtain.readInt();
            this.mParcel = Parcel.obtain();
            this.mParcel.setDataPosition(0);
            this.mParcel.appendFrom(obtain, obtain.dataPosition(), readInt);
            this.mParcel.setDataSize(this.mParcel.dataPosition());
            this.mParcel.setDataPosition(readInt2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UsageEvents() {
        this.mEventsToWrite = null;
        this.mParcel = null;
        this.mIndex = 0;
        this.mEventCount = 0;
    }

    public UsageEvents(List<Event> list, String[] strArr) {
        this.mEventsToWrite = null;
        this.mParcel = null;
        this.mIndex = 0;
        this.mStringPool = strArr;
        this.mEventCount = list.size();
        this.mEventsToWrite = list;
    }

    public boolean hasNextEvent() {
        return this.mIndex < this.mEventCount;
    }

    public boolean getNextEvent(Event event) {
        if (this.mIndex >= this.mEventCount) {
            return false;
        }
        readEventFromParcel(this.mParcel, event);
        this.mIndex++;
        if (this.mIndex >= this.mEventCount) {
            this.mParcel.recycle();
            this.mParcel = null;
        }
        return true;
    }

    public void resetToStart() {
        this.mIndex = 0;
        if (this.mParcel != null) {
            this.mParcel.setDataPosition(0);
        }
    }

    private int findStringIndex(String str) {
        int binarySearch = Arrays.binarySearch(this.mStringPool, str);
        if (binarySearch >= 0) {
            return binarySearch;
        }
        throw new IllegalStateException("String '" + str + "' is not in the string pool");
    }

    private void writeEventToParcel(Event event, Parcel parcel, int i) {
        int findStringIndex = event.mPackage != null ? findStringIndex(event.mPackage) : -1;
        int findStringIndex2 = event.mClass != null ? findStringIndex(event.mClass) : -1;
        parcel.writeInt(findStringIndex);
        parcel.writeInt(findStringIndex2);
        parcel.writeInt(event.mEventType);
        parcel.writeLong(event.mTimeStamp);
        switch (event.mEventType) {
            case 5:
                event.mConfiguration.writeToParcel(parcel, i);
                return;
            case 6:
            case 7:
            case 10:
            default:
                return;
            case 8:
                parcel.writeString(event.mShortcutId);
                return;
            case 9:
                parcel.writeString(event.mAction);
                parcel.writeString(event.mContentType);
                parcel.writeStringArray(event.mContentAnnotations);
                return;
            case 11:
                parcel.writeInt(event.mBucketAndReason);
                return;
            case 12:
                parcel.writeString(event.mNotificationChannelId);
                return;
        }
    }

    private void readEventFromParcel(Parcel parcel, Event event) {
        int readInt = parcel.readInt();
        if (readInt >= 0) {
            event.mPackage = this.mStringPool[readInt];
        } else {
            event.mPackage = null;
        }
        int readInt2 = parcel.readInt();
        if (readInt2 >= 0) {
            event.mClass = this.mStringPool[readInt2];
        } else {
            event.mClass = null;
        }
        event.mEventType = parcel.readInt();
        event.mTimeStamp = parcel.readLong();
        event.mConfiguration = null;
        event.mShortcutId = null;
        event.mAction = null;
        event.mContentType = null;
        event.mContentAnnotations = null;
        event.mNotificationChannelId = null;
        switch (event.mEventType) {
            case 5:
                event.mConfiguration = Configuration.CREATOR.createFromParcel(parcel);
                return;
            case 6:
            case 7:
            case 10:
            default:
                return;
            case 8:
                event.mShortcutId = parcel.readString();
                return;
            case 9:
                event.mAction = parcel.readString();
                event.mContentType = parcel.readString();
                event.mContentAnnotations = parcel.createStringArray();
                return;
            case 11:
                event.mBucketAndReason = parcel.readInt();
                return;
            case 12:
                event.mNotificationChannelId = parcel.readString();
                return;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInt(this.mEventCount);
        obtain.writeInt(this.mIndex);
        if (this.mEventCount > 0) {
            obtain.writeStringArray(this.mStringPool);
            if (this.mEventsToWrite != null) {
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain2.setDataPosition(0);
                    for (int i2 = 0; i2 < this.mEventCount; i2++) {
                        writeEventToParcel(this.mEventsToWrite.get(i2), obtain2, i);
                    }
                    int dataPosition = obtain2.dataPosition();
                    obtain.writeInt(dataPosition);
                    obtain.writeInt(0);
                    obtain.appendFrom(obtain2, 0, dataPosition);
                } finally {
                    obtain2.recycle();
                }
            } else if (this.mParcel != null) {
                obtain.writeInt(this.mParcel.dataSize());
                obtain.writeInt(this.mParcel.dataPosition());
                obtain.appendFrom(this.mParcel, 0, this.mParcel.dataSize());
            } else {
                throw new IllegalStateException("Either mParcel or mEventsToWrite must not be null");
            }
        }
        parcel.writeBlob(obtain.marshall());
    }
}
