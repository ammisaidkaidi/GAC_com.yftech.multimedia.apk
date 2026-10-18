package com.android.internal.util.function.pooled;

import android.os.Message;
import android.text.TextUtils;
import android.util.Pools;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.BitUtils;
import com.android.internal.util.function.HexConsumer;
import com.android.internal.util.function.HexFunction;
import com.android.internal.util.function.HexPredicate;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.QuadFunction;
import com.android.internal.util.function.QuadPredicate;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.QuintFunction;
import com.android.internal.util.function.QuintPredicate;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.TriFunction;
import com.android.internal.util.function.TriPredicate;
import java.util.Arrays;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes3.dex */
public final class PooledLambdaImpl<R> extends OmniFunction<Object, Object, Object, Object, Object, Object, R> {
    private static final boolean DEBUG = false;
    private static final int FLAG_ACQUIRED_FROM_MESSAGE_CALLBACKS_POOL = 128;
    private static final int FLAG_RECYCLED = 32;
    private static final int FLAG_RECYCLE_ON_USE = 64;
    private static final String LOG_TAG = "PooledLambdaImpl";
    static final int MASK_EXPOSED_AS = 16128;
    static final int MASK_FUNC_TYPE = 1032192;
    private static final int MAX_ARGS = 5;
    private static final int MAX_POOL_SIZE = 50;
    long mConstValue;
    Object mFunc;
    static final Pool sPool = new Pool(new Object());
    static final Pool sMessageCallbacksPool = new Pool(Message.sPoolSync);
    Object[] mArgs = null;
    int mFlags = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Pool extends Pools.SynchronizedPool<PooledLambdaImpl> {
        public Pool(Object obj) {
            super(50, obj);
        }
    }

    private PooledLambdaImpl() {
    }

    @Override // com.android.internal.util.function.pooled.PooledLambda
    public void recycle() {
        if (isRecycled()) {
            return;
        }
        doRecycle();
    }

    private void doRecycle() {
        Pool pool;
        if ((this.mFlags & 128) != 0) {
            pool = sMessageCallbacksPool;
        } else {
            pool = sPool;
        }
        this.mFunc = null;
        if (this.mArgs != null) {
            Arrays.fill(this.mArgs, (Object) null);
        }
        this.mFlags = 32;
        this.mConstValue = 0L;
        pool.release(this);
    }

    @Override // com.android.internal.util.function.pooled.OmniFunction
    R invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        checkNotRecycled();
        if (fillInArg(obj) && fillInArg(obj2) && fillInArg(obj3) && fillInArg(obj4) && fillInArg(obj5)) {
            fillInArg(obj6);
        }
        int decodeArgCount = LambdaType.decodeArgCount(getFlags(MASK_FUNC_TYPE));
        int i = 0;
        if (decodeArgCount != 7) {
            for (int i2 = 0; i2 < decodeArgCount; i2++) {
                if (this.mArgs[i2] == ArgumentPlaceholder.INSTANCE) {
                    throw new IllegalStateException("Missing argument #" + i2 + " among " + Arrays.toString(this.mArgs));
                }
            }
        }
        try {
            return doInvoke();
        } finally {
            if (isRecycleOnUse()) {
                doRecycle();
            }
            if (!isRecycled()) {
                int size = ArrayUtils.size(this.mArgs);
                while (i < size) {
                    popArg(i);
                    i++;
                }
            }
        }
    }

    private boolean fillInArg(Object obj) {
        int size = ArrayUtils.size(this.mArgs);
        for (int i = 0; i < size; i++) {
            if (this.mArgs[i] == ArgumentPlaceholder.INSTANCE) {
                this.mArgs[i] = obj;
                this.mFlags = (int) (this.mFlags | BitUtils.bitAt(i));
                return true;
            }
        }
        if (obj == null || obj == ArgumentPlaceholder.INSTANCE) {
            return false;
        }
        throw new IllegalStateException("No more arguments expected for provided arg " + obj + " among " + Arrays.toString(this.mArgs));
    }

    private void checkNotRecycled() {
        if (isRecycled()) {
            throw new IllegalStateException("Instance is recycled: " + this);
        }
    }

    private R doInvoke() {
        int flags = getFlags(MASK_FUNC_TYPE);
        int decodeArgCount = LambdaType.decodeArgCount(flags);
        int decodeReturnType = LambdaType.decodeReturnType(flags);
        switch (decodeArgCount) {
            case 0:
                switch (decodeReturnType) {
                    case 1:
                        ((Runnable) this.mFunc).run();
                        return null;
                    case 2:
                    case 3:
                        return (R) ((Supplier) this.mFunc).get();
                }
            case 1:
                switch (decodeReturnType) {
                    case 1:
                        ((Consumer) this.mFunc).accept(popArg(0));
                        return null;
                    case 2:
                        return (R) Boolean.valueOf(((Predicate) this.mFunc).test(popArg(0)));
                    case 3:
                        return (R) ((Function) this.mFunc).apply(popArg(0));
                }
            case 2:
                switch (decodeReturnType) {
                    case 1:
                        ((BiConsumer) this.mFunc).accept(popArg(0), popArg(1));
                        return null;
                    case 2:
                        return (R) Boolean.valueOf(((BiPredicate) this.mFunc).test(popArg(0), popArg(1)));
                    case 3:
                        return (R) ((BiFunction) this.mFunc).apply(popArg(0), popArg(1));
                }
            case 3:
                switch (decodeReturnType) {
                    case 1:
                        ((TriConsumer) this.mFunc).accept(popArg(0), popArg(1), popArg(2));
                        return null;
                    case 2:
                        return (R) Boolean.valueOf(((TriPredicate) this.mFunc).test(popArg(0), popArg(1), popArg(2)));
                    case 3:
                        return (R) ((TriFunction) this.mFunc).apply(popArg(0), popArg(1), popArg(2));
                }
            case 4:
                switch (decodeReturnType) {
                    case 1:
                        ((QuadConsumer) this.mFunc).accept(popArg(0), popArg(1), popArg(2), popArg(3));
                        return null;
                    case 2:
                        return (R) Boolean.valueOf(((QuadPredicate) this.mFunc).test(popArg(0), popArg(1), popArg(2), popArg(3)));
                    case 3:
                        return (R) ((QuadFunction) this.mFunc).apply(popArg(0), popArg(1), popArg(2), popArg(3));
                }
            case 5:
                switch (decodeReturnType) {
                    case 1:
                        ((QuintConsumer) this.mFunc).accept(popArg(0), popArg(1), popArg(2), popArg(3), popArg(4));
                        return null;
                    case 2:
                        return (R) Boolean.valueOf(((QuintPredicate) this.mFunc).test(popArg(0), popArg(1), popArg(2), popArg(3), popArg(4)));
                    case 3:
                        return (R) ((QuintFunction) this.mFunc).apply(popArg(0), popArg(1), popArg(2), popArg(3), popArg(4));
                }
            case 6:
                switch (decodeReturnType) {
                    case 1:
                        ((HexConsumer) this.mFunc).accept(popArg(0), popArg(1), popArg(2), popArg(3), popArg(4), popArg(5));
                        return null;
                    case 2:
                        return (R) Boolean.valueOf(((HexPredicate) this.mFunc).test(popArg(0), popArg(1), popArg(2), popArg(3), popArg(4), popArg(5)));
                    case 3:
                        return (R) ((HexFunction) this.mFunc).apply(popArg(0), popArg(1), popArg(2), popArg(3), popArg(4), popArg(5));
                }
            case 7:
                switch (decodeReturnType) {
                    case 4:
                        return (R) Integer.valueOf(getAsInt());
                    case 5:
                        return (R) Long.valueOf(getAsLong());
                    case 6:
                        return (R) Double.valueOf(getAsDouble());
                    default:
                        return (R) this.mFunc;
                }
        }
        throw new IllegalStateException("Unknown function type: " + LambdaType.toString(flags));
    }

    private boolean isConstSupplier() {
        return LambdaType.decodeArgCount(getFlags(MASK_FUNC_TYPE)) == 7;
    }

    private Object popArg(int i) {
        Object obj = this.mArgs[i];
        if (isInvocationArgAtIndex(i)) {
            this.mArgs[i] = ArgumentPlaceholder.INSTANCE;
            this.mFlags = (int) (this.mFlags & (~BitUtils.bitAt(i)));
        }
        return obj;
    }

    public String toString() {
        if (isRecycled()) {
            return "<recycled PooledLambda@" + hashCodeHex(this) + ">";
        }
        StringBuilder sb = new StringBuilder();
        if (isConstSupplier()) {
            sb.append(getFuncTypeAsString());
            sb.append("(");
            sb.append(doInvoke());
            sb.append(")");
        } else {
            if (this.mFunc instanceof PooledLambdaImpl) {
                sb.append(this.mFunc);
            } else {
                sb.append(getFuncTypeAsString());
                sb.append("@");
                sb.append(hashCodeHex(this.mFunc));
            }
            sb.append("(");
            sb.append(commaSeparateFirstN(this.mArgs, LambdaType.decodeArgCount(getFlags(MASK_FUNC_TYPE))));
            sb.append(")");
        }
        return sb.toString();
    }

    private String commaSeparateFirstN(Object[] objArr, int i) {
        return objArr == null ? "" : TextUtils.join(",", Arrays.copyOf(objArr, i));
    }

    private static String hashCodeHex(Object obj) {
        return Integer.toHexString(obj.hashCode());
    }

    private String getFuncTypeAsString() {
        if (isRecycled()) {
            throw new IllegalStateException();
        }
        if (isConstSupplier()) {
            return "supplier";
        }
        String lambdaType = LambdaType.toString(getFlags(MASK_EXPOSED_AS));
        if (lambdaType.endsWith("Consumer")) {
            return "consumer";
        }
        if (lambdaType.endsWith("Function")) {
            return "function";
        }
        if (lambdaType.endsWith("Predicate")) {
            return "predicate";
        }
        if (lambdaType.endsWith("Supplier")) {
            return "supplier";
        }
        if (lambdaType.endsWith("Runnable")) {
            return "runnable";
        }
        throw new IllegalStateException("Don't know the string representation of " + lambdaType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E extends PooledLambda> E acquire(Pool pool, Object obj, int i, int i2, int i3, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        PooledLambdaImpl acquire = acquire(pool);
        acquire.mFunc = obj;
        acquire.setFlags(MASK_FUNC_TYPE, LambdaType.encode(i, i3));
        acquire.setFlags(MASK_EXPOSED_AS, LambdaType.encode(i2, i3));
        if (ArrayUtils.size(acquire.mArgs) < i) {
            acquire.mArgs = new Object[i];
        }
        setIfInBounds(acquire.mArgs, 0, obj2);
        setIfInBounds(acquire.mArgs, 1, obj3);
        setIfInBounds(acquire.mArgs, 2, obj4);
        setIfInBounds(acquire.mArgs, 3, obj5);
        setIfInBounds(acquire.mArgs, 4, obj6);
        setIfInBounds(acquire.mArgs, 5, obj7);
        return acquire;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledLambdaImpl acquireConstSupplier(int i) {
        PooledLambdaImpl acquire = acquire(sPool);
        int encode = LambdaType.encode(7, i);
        acquire.setFlags(MASK_FUNC_TYPE, encode);
        acquire.setFlags(MASK_EXPOSED_AS, encode);
        return acquire;
    }

    static PooledLambdaImpl acquire(Pool pool) {
        PooledLambdaImpl pooledLambdaImpl = (PooledLambdaImpl) pool.acquire();
        if (pooledLambdaImpl == null) {
            pooledLambdaImpl = new PooledLambdaImpl();
        }
        pooledLambdaImpl.mFlags &= -33;
        pooledLambdaImpl.setFlags(128, pool == sMessageCallbacksPool ? 1 : 0);
        return pooledLambdaImpl;
    }

    private static void setIfInBounds(Object[] objArr, int i, Object obj) {
        if (i < ArrayUtils.size(objArr)) {
            objArr[i] = obj;
        }
    }

    @Override // com.android.internal.util.function.pooled.OmniFunction, java.util.function.Predicate, java.util.function.BiPredicate
    public OmniFunction<Object, Object, Object, Object, Object, Object, R> negate() {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.internal.util.function.pooled.OmniFunction, java.util.function.Function, java.util.function.BiFunction
    public <V> OmniFunction<Object, Object, Object, Object, Object, Object, V> andThen(Function<? super R, ? extends V> function) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.function.DoubleSupplier
    public double getAsDouble() {
        return Double.longBitsToDouble(this.mConstValue);
    }

    @Override // java.util.function.IntSupplier
    public int getAsInt() {
        return (int) this.mConstValue;
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return this.mConstValue;
    }

    @Override // com.android.internal.util.function.pooled.OmniFunction, com.android.internal.util.function.pooled.PooledFunction, com.android.internal.util.function.pooled.PooledLambda, com.android.internal.util.function.pooled.PooledConsumer, com.android.internal.util.function.pooled.PooledPredicate, com.android.internal.util.function.pooled.PooledSupplier, com.android.internal.util.function.pooled.PooledRunnable, com.android.internal.util.function.pooled.PooledSupplier.OfInt, com.android.internal.util.function.pooled.PooledSupplier.OfLong, com.android.internal.util.function.pooled.PooledSupplier.OfDouble
    public OmniFunction<Object, Object, Object, Object, Object, Object, R> recycleOnUse() {
        this.mFlags |= 64;
        return this;
    }

    private boolean isRecycled() {
        return (this.mFlags & 32) != 0;
    }

    private boolean isRecycleOnUse() {
        return (this.mFlags & 64) != 0;
    }

    private boolean isInvocationArgAtIndex(int i) {
        return (this.mFlags & (1 << i)) != 0;
    }

    int getFlags(int i) {
        return unmask(i, this.mFlags);
    }

    void setFlags(int i, int i2) {
        this.mFlags &= ~i;
        this.mFlags = mask(i, i2) | this.mFlags;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int mask(int i, int i2) {
        return i & (i2 << Integer.numberOfTrailingZeros(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int unmask(int i, int i2) {
        return (i2 & i) / (1 << Integer.numberOfTrailingZeros(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LambdaType {
        public static final int MASK = 63;
        public static final int MASK_ARG_COUNT = 7;
        public static final int MASK_BIT_COUNT = 6;
        public static final int MASK_RETURN_TYPE = 56;

        static int decodeArgCount(int i) {
            return i & 7;
        }

        LambdaType() {
        }

        static int encode(int i, int i2) {
            return PooledLambdaImpl.mask(7, i) | PooledLambdaImpl.mask(56, i2);
        }

        static int decodeReturnType(int i) {
            return PooledLambdaImpl.unmask(56, i);
        }

        static String toString(int i) {
            int decodeArgCount = decodeArgCount(i);
            int decodeReturnType = decodeReturnType(i);
            if (decodeArgCount == 0) {
                if (decodeReturnType == 1) {
                    return "Runnable";
                }
                if (decodeReturnType == 3 || decodeReturnType == 2) {
                    return "Supplier";
                }
            }
            return argCountPrefix(decodeArgCount) + ReturnType.lambdaSuffix(decodeReturnType);
        }

        private static String argCountPrefix(int i) {
            switch (i) {
                case 1:
                    return "";
                case 2:
                    return "Bi";
                case 3:
                    return "Tri";
                case 4:
                    return "Quad";
                case 5:
                    return "Quint";
                case 6:
                    return "Hex";
                case 7:
                    return "";
                default:
                    throw new IllegalArgumentException("" + i);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: /home/user/work/dex/classes3.dex */
        public static class ReturnType {
            public static final int BOOLEAN = 2;
            public static final int DOUBLE = 6;
            public static final int INT = 4;
            public static final int LONG = 5;
            public static final int OBJECT = 3;
            public static final int VOID = 1;

            private static String prefix(int i) {
                switch (i) {
                    case 4:
                        return "Int";
                    case 5:
                        return "Long";
                    case 6:
                        return "Double";
                    default:
                        return "";
                }
            }

            private static String suffix(int i) {
                switch (i) {
                    case 1:
                        return "Consumer";
                    case 2:
                        return "Predicate";
                    case 3:
                        return "Function";
                    default:
                        return "Supplier";
                }
            }

            ReturnType() {
            }

            static String toString(int i) {
                switch (i) {
                    case 1:
                        return "VOID";
                    case 2:
                        return "BOOLEAN";
                    case 3:
                        return "OBJECT";
                    case 4:
                        return "INT";
                    case 5:
                        return "LONG";
                    case 6:
                        return "DOUBLE";
                    default:
                        return "" + i;
                }
            }

            static String lambdaSuffix(int i) {
                return prefix(i) + suffix(i);
            }
        }
    }
}
