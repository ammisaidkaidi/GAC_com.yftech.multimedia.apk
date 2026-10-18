package android.metrics;

import android.annotation.SystemApi;
import android.content.ComponentName;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;

@SystemApi
/* loaded from: /home/user/work/dex/classes.dex */
public class LogMaker {

    @VisibleForTesting
    public static final int MAX_SERIALIZED_SIZE = 4000;
    private static final String TAG = "LogBuilder";
    private SparseArray<Object> entries = new SparseArray<>();

    public LogMaker(int i) {
        setCategory(i);
    }

    public LogMaker(Object[] objArr) {
        if (objArr != null) {
            deserialize(objArr);
        } else {
            setCategory(0);
        }
    }

    public LogMaker setCategory(int i) {
        this.entries.put(757, Integer.valueOf(i));
        return this;
    }

    public LogMaker clearCategory() {
        this.entries.remove(757);
        return this;
    }

    public LogMaker setType(int i) {
        this.entries.put(758, Integer.valueOf(i));
        return this;
    }

    public LogMaker clearType() {
        this.entries.remove(758);
        return this;
    }

    public LogMaker setSubtype(int i) {
        this.entries.put(759, Integer.valueOf(i));
        return this;
    }

    public LogMaker clearSubtype() {
        this.entries.remove(759);
        return this;
    }

    public LogMaker setLatency(long j) {
        this.entries.put(1359, Long.valueOf(j));
        return this;
    }

    public LogMaker setTimestamp(long j) {
        this.entries.put(805, Long.valueOf(j));
        return this;
    }

    public LogMaker clearTimestamp() {
        this.entries.remove(805);
        return this;
    }

    public LogMaker setPackageName(String str) {
        this.entries.put(806, str);
        return this;
    }

    public LogMaker setComponentName(ComponentName componentName) {
        this.entries.put(806, componentName.getPackageName());
        this.entries.put(871, componentName.getClassName());
        return this;
    }

    public LogMaker clearPackageName() {
        this.entries.remove(806);
        return this;
    }

    public LogMaker setProcessId(int i) {
        this.entries.put(865, Integer.valueOf(i));
        return this;
    }

    public LogMaker clearProcessId() {
        this.entries.remove(865);
        return this;
    }

    public LogMaker setUid(int i) {
        this.entries.put(943, Integer.valueOf(i));
        return this;
    }

    public LogMaker clearUid() {
        this.entries.remove(943);
        return this;
    }

    public LogMaker setCounterName(String str) {
        this.entries.put(799, str);
        return this;
    }

    public LogMaker setCounterBucket(int i) {
        this.entries.put(801, Integer.valueOf(i));
        return this;
    }

    public LogMaker setCounterBucket(long j) {
        this.entries.put(801, Long.valueOf(j));
        return this;
    }

    public LogMaker setCounterValue(int i) {
        this.entries.put(802, Integer.valueOf(i));
        return this;
    }

    public LogMaker addTaggedData(int i, Object obj) {
        if (obj == null) {
            return clearTaggedData(i);
        }
        if (!isValidValue(obj)) {
            throw new IllegalArgumentException("Value must be loggable type - int, long, float, String");
        }
        if (obj.toString().getBytes().length > 4000) {
            Log.i(TAG, "Log value too long, omitted: " + obj.toString());
        } else {
            this.entries.put(i, obj);
        }
        return this;
    }

    public LogMaker clearTaggedData(int i) {
        this.entries.delete(i);
        return this;
    }

    public boolean isValidValue(Object obj) {
        return (obj instanceof Integer) || (obj instanceof String) || (obj instanceof Long) || (obj instanceof Float);
    }

    public Object getTaggedData(int i) {
        return this.entries.get(i);
    }

    public int getCategory() {
        Object obj = this.entries.get(757);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public int getType() {
        Object obj = this.entries.get(758);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public int getSubtype() {
        Object obj = this.entries.get(759);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public long getTimestamp() {
        Object obj = this.entries.get(805);
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        return 0L;
    }

    public String getPackageName() {
        Object obj = this.entries.get(806);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public int getProcessId() {
        Object obj = this.entries.get(865);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return -1;
    }

    public int getUid() {
        Object obj = this.entries.get(943);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return -1;
    }

    public String getCounterName() {
        Object obj = this.entries.get(799);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public long getCounterBucket() {
        Object obj = this.entries.get(801);
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        return 0L;
    }

    public boolean isLongCounterBucket() {
        return this.entries.get(801) instanceof Long;
    }

    public int getCounterValue() {
        Object obj = this.entries.get(802);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public Object[] serialize() {
        Object[] objArr = new Object[this.entries.size() * 2];
        for (int i = 0; i < this.entries.size(); i++) {
            int i2 = i * 2;
            objArr[i2] = Integer.valueOf(this.entries.keyAt(i));
            objArr[i2 + 1] = this.entries.valueAt(i);
        }
        int length = objArr.toString().getBytes().length;
        if (length <= 4000) {
            return objArr;
        }
        Log.i(TAG, "Log line too long, did not emit: " + length + " bytes.");
        throw new RuntimeException();
    }

    public void deserialize(Object[] objArr) {
        int i;
        Object obj;
        for (int i2 = 0; objArr != null && i2 < objArr.length; i2 = i) {
            int i3 = i2 + 1;
            Object obj2 = objArr[i2];
            if (i3 < objArr.length) {
                i = i3 + 1;
                obj = objArr[i3];
            } else {
                i = i3;
                obj = null;
            }
            if (obj2 instanceof Integer) {
                this.entries.put(((Integer) obj2).intValue(), obj);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid key ");
                sb.append(obj2 == null ? "null" : obj2.toString());
                Log.i(TAG, sb.toString());
            }
        }
    }

    public boolean isSubsetOf(LogMaker logMaker) {
        if (logMaker == null) {
            return false;
        }
        for (int i = 0; i < this.entries.size(); i++) {
            int keyAt = this.entries.keyAt(i);
            Object valueAt = this.entries.valueAt(i);
            Object obj = logMaker.entries.get(keyAt);
            if ((valueAt == null && obj != null) || !valueAt.equals(obj)) {
                return false;
            }
        }
        return true;
    }
}
