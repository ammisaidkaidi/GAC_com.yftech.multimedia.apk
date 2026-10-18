package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedHashSet;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class BoundedLinkedHashSet<E> {
    private LinkedHashSet<E> mLinkedHashSet;
    private int mMaxSize;

    public BoundedLinkedHashSet(int i) {
        this.mLinkedHashSet = new LinkedHashSet<>(i);
        this.mMaxSize = i;
    }

    public synchronized boolean contains(E e) {
        return this.mLinkedHashSet.contains(e);
    }

    public synchronized boolean add(E e) {
        if (this.mLinkedHashSet.size() == this.mMaxSize) {
            this.mLinkedHashSet.remove(this.mLinkedHashSet.iterator().next());
        }
        this.mLinkedHashSet.remove(e);
        return this.mLinkedHashSet.add(e);
    }
}
