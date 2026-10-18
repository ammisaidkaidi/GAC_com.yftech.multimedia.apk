package android.security.keystore;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface UserAuthArgs {
    long getBoundToSpecificSecureUserId();

    int getUserAuthenticationValidityDurationSeconds();

    boolean isInvalidatedByBiometricEnrollment();

    boolean isUnlockedDeviceRequired();

    boolean isUserAuthenticationRequired();

    boolean isUserAuthenticationValidWhileOnBody();

    boolean isUserConfirmationRequired();

    boolean isUserPresenceRequired();
}
