package kotlin.annotations.jvm;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: /home/user/work/dex/classes4.dex */
public @interface UnderMigration {
    MigrationStatus status();
}
