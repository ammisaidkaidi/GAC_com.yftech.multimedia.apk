package android.hardware.camera2.marshal;

import android.hardware.camera2.utils.TypeReference;

/* loaded from: /home/user/work/dex/classes.dex */
public interface MarshalQueryable<T> {
    Marshaler<T> createMarshaler(TypeReference<T> typeReference, int i);

    boolean isTypeMappingSupported(TypeReference<T> typeReference, int i);
}
