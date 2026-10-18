package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.view.autofill.AutofillId;
import android.view.autofill.Helper;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class FillEventHistory implements Parcelable {
    public static final Parcelable.Creator<FillEventHistory> CREATOR = new Parcelable.Creator<FillEventHistory>() { // from class: android.service.autofill.FillEventHistory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillEventHistory createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            int i = 0;
            FillEventHistory fillEventHistory = new FillEventHistory(0, parcel.readBundle());
            int readInt = parcel.readInt();
            int i2 = 0;
            while (i2 < readInt) {
                int readInt2 = parcel.readInt();
                String readString = parcel.readString();
                Bundle readBundle = parcel.readBundle();
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                ArraySet<? extends Object> readArraySet = parcel.readArraySet(null);
                ArrayList createTypedArrayList = parcel.createTypedArrayList(AutofillId.CREATOR);
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                ArrayList createTypedArrayList2 = parcel.createTypedArrayList(AutofillId.CREATOR);
                if (createTypedArrayList2 != null) {
                    int size = createTypedArrayList2.size();
                    ArrayList arrayList2 = new ArrayList(size);
                    while (i < size) {
                        arrayList2.add(parcel.createStringArrayList());
                        i++;
                    }
                    arrayList = arrayList2;
                } else {
                    arrayList = null;
                }
                AutofillId[] autofillIdArr = (AutofillId[]) parcel.readParcelableArray(null, AutofillId.class);
                fillEventHistory.addEvent(new Event(readInt2, readString, readBundle, createStringArrayList, readArraySet, createTypedArrayList, createStringArrayList2, createTypedArrayList2, arrayList, autofillIdArr, autofillIdArr != null ? FieldClassification.readArrayFromParcel(parcel) : null));
                i2++;
                i = 0;
            }
            return fillEventHistory;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FillEventHistory[] newArray(int i) {
            return new FillEventHistory[i];
        }
    };
    private static final String TAG = "FillEventHistory";
    private final Bundle mClientState;
    List<Event> mEvents;
    private final int mSessionId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSessionId() {
        return this.mSessionId;
    }

    @Deprecated
    public Bundle getClientState() {
        return this.mClientState;
    }

    public List<Event> getEvents() {
        return this.mEvents;
    }

    public void addEvent(Event event) {
        if (this.mEvents == null) {
            this.mEvents = new ArrayList(1);
        }
        this.mEvents.add(event);
    }

    public FillEventHistory(int i, Bundle bundle) {
        this.mClientState = bundle;
        this.mSessionId = i;
    }

    public String toString() {
        return this.mEvents == null ? "no events" : this.mEvents.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mClientState);
        if (this.mEvents == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(this.mEvents.size());
        int size = this.mEvents.size();
        for (int i2 = 0; i2 < size; i2++) {
            Event event = this.mEvents.get(i2);
            parcel.writeInt(event.mEventType);
            parcel.writeString(event.mDatasetId);
            parcel.writeBundle(event.mClientState);
            parcel.writeStringList(event.mSelectedDatasetIds);
            parcel.writeArraySet(event.mIgnoredDatasetIds);
            parcel.writeTypedList(event.mChangedFieldIds);
            parcel.writeStringList(event.mChangedDatasetIds);
            parcel.writeTypedList(event.mManuallyFilledFieldIds);
            if (event.mManuallyFilledFieldIds != null) {
                int size2 = event.mManuallyFilledFieldIds.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    parcel.writeStringList((List) event.mManuallyFilledDatasetIds.get(i3));
                }
            }
            AutofillId[] autofillIdArr = event.mDetectedFieldIds;
            parcel.writeParcelableArray(autofillIdArr, i);
            if (autofillIdArr != null) {
                FieldClassification.writeArrayToParcel(parcel, event.mDetectedFieldClassifications);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Event {
        public static final int TYPE_AUTHENTICATION_SELECTED = 2;
        public static final int TYPE_CONTEXT_COMMITTED = 4;
        public static final int TYPE_DATASET_AUTHENTICATION_SELECTED = 1;
        public static final int TYPE_DATASET_SELECTED = 0;
        public static final int TYPE_SAVE_SHOWN = 3;
        private final ArrayList<String> mChangedDatasetIds;
        private final ArrayList<AutofillId> mChangedFieldIds;
        private final Bundle mClientState;
        private final String mDatasetId;
        private final FieldClassification[] mDetectedFieldClassifications;
        private final AutofillId[] mDetectedFieldIds;
        private final int mEventType;
        private final ArraySet<String> mIgnoredDatasetIds;
        private final ArrayList<ArrayList<String>> mManuallyFilledDatasetIds;
        private final ArrayList<AutofillId> mManuallyFilledFieldIds;
        private final List<String> mSelectedDatasetIds;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes2.dex */
        @interface EventIds {
        }

        public int getType() {
            return this.mEventType;
        }

        public String getDatasetId() {
            return this.mDatasetId;
        }

        public Bundle getClientState() {
            return this.mClientState;
        }

        public Set<String> getSelectedDatasetIds() {
            return this.mSelectedDatasetIds == null ? Collections.emptySet() : new ArraySet(this.mSelectedDatasetIds);
        }

        public Set<String> getIgnoredDatasetIds() {
            return this.mIgnoredDatasetIds == null ? Collections.emptySet() : this.mIgnoredDatasetIds;
        }

        public Map<AutofillId, String> getChangedFields() {
            if (this.mChangedFieldIds == null || this.mChangedDatasetIds == null) {
                return Collections.emptyMap();
            }
            int size = this.mChangedFieldIds.size();
            ArrayMap arrayMap = new ArrayMap(size);
            for (int i = 0; i < size; i++) {
                arrayMap.put(this.mChangedFieldIds.get(i), this.mChangedDatasetIds.get(i));
            }
            return arrayMap;
        }

        public Map<AutofillId, FieldClassification> getFieldsClassification() {
            if (this.mDetectedFieldIds == null) {
                return Collections.emptyMap();
            }
            int length = this.mDetectedFieldIds.length;
            ArrayMap arrayMap = new ArrayMap(length);
            for (int i = 0; i < length; i++) {
                AutofillId autofillId = this.mDetectedFieldIds[i];
                FieldClassification fieldClassification = this.mDetectedFieldClassifications[i];
                if (Helper.sVerbose) {
                    Log.v(FillEventHistory.TAG, "getFieldsClassification[" + i + "]: id=" + autofillId + ", fc=" + fieldClassification);
                }
                arrayMap.put(autofillId, fieldClassification);
            }
            return arrayMap;
        }

        public Map<AutofillId, Set<String>> getManuallyEnteredField() {
            if (this.mManuallyFilledFieldIds == null || this.mManuallyFilledDatasetIds == null) {
                return Collections.emptyMap();
            }
            int size = this.mManuallyFilledFieldIds.size();
            ArrayMap arrayMap = new ArrayMap(size);
            for (int i = 0; i < size; i++) {
                arrayMap.put(this.mManuallyFilledFieldIds.get(i), new ArraySet(this.mManuallyFilledDatasetIds.get(i)));
            }
            return arrayMap;
        }

        public Event(int i, String str, Bundle bundle, List<String> list, ArraySet<String> arraySet, ArrayList<AutofillId> arrayList, ArrayList<String> arrayList2, ArrayList<AutofillId> arrayList3, ArrayList<ArrayList<String>> arrayList4, AutofillId[] autofillIdArr, FieldClassification[] fieldClassificationArr) {
            this.mEventType = Preconditions.checkArgumentInRange(i, 0, 4, "eventType");
            this.mDatasetId = str;
            this.mClientState = bundle;
            this.mSelectedDatasetIds = list;
            this.mIgnoredDatasetIds = arraySet;
            if (arrayList != null) {
                Preconditions.checkArgument((ArrayUtils.isEmpty(arrayList) || arrayList2 == null || arrayList.size() != arrayList2.size()) ? false : true, "changed ids must have same length and not be empty");
            }
            this.mChangedFieldIds = arrayList;
            this.mChangedDatasetIds = arrayList2;
            if (arrayList3 != null) {
                Preconditions.checkArgument((ArrayUtils.isEmpty(arrayList3) || arrayList4 == null || arrayList3.size() != arrayList4.size()) ? false : true, "manually filled ids must have same length and not be empty");
            }
            this.mManuallyFilledFieldIds = arrayList3;
            this.mManuallyFilledDatasetIds = arrayList4;
            this.mDetectedFieldIds = autofillIdArr;
            this.mDetectedFieldClassifications = fieldClassificationArr;
        }

        public String toString() {
            return "FillEvent [datasetId=" + this.mDatasetId + ", type=" + this.mEventType + ", selectedDatasets=" + this.mSelectedDatasetIds + ", ignoredDatasetIds=" + this.mIgnoredDatasetIds + ", changedFieldIds=" + this.mChangedFieldIds + ", changedDatasetsIds=" + this.mChangedDatasetIds + ", manuallyFilledFieldIds=" + this.mManuallyFilledFieldIds + ", manuallyFilledDatasetIds=" + this.mManuallyFilledDatasetIds + ", detectedFieldIds=" + Arrays.toString(this.mDetectedFieldIds) + ", detectedFieldClassifications =" + Arrays.toString(this.mDetectedFieldClassifications) + "]";
        }
    }
}
