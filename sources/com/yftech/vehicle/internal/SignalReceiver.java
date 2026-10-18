package com.yftech.vehicle.internal;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: /home/user/work/dex/classes4.dex */
public @interface SignalReceiver {
    int signalId() default -1;

    int[] signalsIdArray() default {-1};

    boolean valueToEnabledState() default false;
}
