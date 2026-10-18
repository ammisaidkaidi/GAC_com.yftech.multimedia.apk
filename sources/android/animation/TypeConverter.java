package android.animation;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class TypeConverter<T, V> {
    private Class<T> mFromClass;
    private Class<V> mToClass;

    public abstract V convert(T t);

    public TypeConverter(Class<T> cls, Class<V> cls2) {
        this.mFromClass = cls;
        this.mToClass = cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<V> getTargetType() {
        return this.mToClass;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<T> getSourceType() {
        return this.mFromClass;
    }
}
