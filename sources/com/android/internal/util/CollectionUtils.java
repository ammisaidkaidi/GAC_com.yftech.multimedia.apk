package com.android.internal.util;

import android.R;
import android.util.ArraySet;
import android.util.ExceptionUtils;
import com.android.internal.util.FunctionalUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: /home/user/work/dex/classes3.dex */
public class CollectionUtils {
    private CollectionUtils() {
    }

    public static <T> List<T> filter(List<T> list, Predicate<? super T> predicate) {
        ArrayList arrayList = null;
        for (int i = 0; i < size(list); i++) {
            T t = list.get(i);
            if (predicate.test(t)) {
                arrayList = ArrayUtils.add(arrayList, t);
            }
        }
        return emptyIfNull(arrayList);
    }

    public static <T> Set<T> filter(Set<T> set, Predicate<? super T> predicate) {
        if (set == null || set.size() == 0) {
            return Collections.emptySet();
        }
        ArraySet arraySet = null;
        if (set instanceof ArraySet) {
            ArraySet arraySet2 = (ArraySet) set;
            int size = arraySet2.size();
            for (int i = 0; i < size; i++) {
                R.bool boolVar = (Object) arraySet2.valueAt(i);
                if (predicate.test(boolVar)) {
                    arraySet = ArrayUtils.add((ArraySet<R.bool>) arraySet, boolVar);
                }
            }
        } else {
            for (Object obj : set) {
                if (predicate.test(obj)) {
                    arraySet = ArrayUtils.add((ArraySet<Object>) arraySet, obj);
                }
            }
        }
        return emptyIfNull(arraySet);
    }

    public static <T> void addIf(List<T> list, Collection<? super T> collection, Predicate<? super T> predicate) {
        for (int i = 0; i < size(list); i++) {
            T t = list.get(i);
            if (predicate.test(t)) {
                collection.add(t);
            }
        }
    }

    public static <I, O> List<O> map(List<I> list, Function<? super I, ? extends O> function) {
        if (isEmpty(list)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(function.apply(list.get(i)));
        }
        return arrayList;
    }

    public static <I, O> Set<O> map(Set<I> set, Function<? super I, ? extends O> function) {
        if (isEmpty(set)) {
            return Collections.emptySet();
        }
        ArraySet arraySet = new ArraySet();
        if (set instanceof ArraySet) {
            ArraySet arraySet2 = (ArraySet) set;
            int size = arraySet2.size();
            for (int i = 0; i < size; i++) {
                arraySet.add(function.apply((Object) arraySet2.valueAt(i)));
            }
        } else {
            Iterator<I> it = set.iterator();
            while (it.hasNext()) {
                arraySet.add(function.apply(it.next()));
            }
        }
        return arraySet;
    }

    public static <I, O> List<O> mapNotNull(List<I> list, Function<? super I, ? extends O> function) {
        if (isEmpty(list)) {
            return Collections.emptyList();
        }
        List list2 = null;
        for (int i = 0; i < list.size(); i++) {
            O apply = function.apply(list.get(i));
            if (apply != null) {
                list2 = add((List<O>) list2, apply);
            }
        }
        return emptyIfNull(list2);
    }

    public static <T> List<T> emptyIfNull(List<T> list) {
        return list == null ? Collections.emptyList() : list;
    }

    public static <T> Set<T> emptyIfNull(Set<T> set) {
        return set == null ? Collections.emptySet() : set;
    }

    public static int size(Collection<?> collection) {
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    public static boolean isEmpty(Collection<?> collection) {
        return size(collection) == 0;
    }

    public static <T> List<T> filter(List<?> list, Class<T> cls) {
        if (isEmpty(list)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = null;
        for (int i = 0; i < list.size(); i++) {
            Object obj = list.get(i);
            if (cls.isInstance(obj)) {
                arrayList = ArrayUtils.add((ArrayList<Object>) arrayList, obj);
            }
        }
        return emptyIfNull(arrayList);
    }

    public static <T> boolean any(List<T> list, Predicate<T> predicate) {
        return find(list, predicate) != null;
    }

    public static <T> T find(List<T> list, Predicate<T> predicate) {
        if (isEmpty(list)) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            T t = list.get(i);
            if (predicate.test(t)) {
                return t;
            }
        }
        return null;
    }

    public static <T> List<T> add(List<T> list, T t) {
        if (list == null || list == Collections.emptyList()) {
            list = new ArrayList<>();
        }
        list.add(t);
        return list;
    }

    public static <T> Set<T> add(Set<T> set, T t) {
        if (set == null || set == Collections.emptySet()) {
            set = new ArraySet<>();
        }
        set.add(t);
        return set;
    }

    public static <T> List<T> remove(List<T> list, T t) {
        if (isEmpty(list)) {
            return emptyIfNull(list);
        }
        list.remove(t);
        return list;
    }

    public static <T> Set<T> remove(Set<T> set, T t) {
        if (isEmpty(set)) {
            return emptyIfNull(set);
        }
        set.remove(t);
        return set;
    }

    public static <T> List<T> copyOf(List<T> list) {
        return isEmpty(list) ? Collections.emptyList() : new ArrayList(list);
    }

    public static <T> Set<T> copyOf(Set<T> set) {
        return isEmpty(set) ? Collections.emptySet() : new ArraySet(set);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void forEach(Set<T> set, FunctionalUtils.ThrowingConsumer<T> throwingConsumer) {
        int size;
        if (set == null || throwingConsumer == 0 || (size = set.size()) == 0) {
            return;
        }
        try {
            if (set instanceof ArraySet) {
                ArraySet arraySet = (ArraySet) set;
                for (int i = 0; i < size; i++) {
                    throwingConsumer.acceptOrThrow(arraySet.valueAt(i));
                }
                return;
            }
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                throwingConsumer.acceptOrThrow(it.next());
            }
        } catch (Exception e) {
            throw ExceptionUtils.propagate(e);
        }
    }
}
