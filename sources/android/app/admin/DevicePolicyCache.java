package android.app.admin;

import com.android.server.LocalServices;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class DevicePolicyCache {
    public abstract boolean getScreenCaptureDisabled(int i);

    protected DevicePolicyCache() {
    }

    public static DevicePolicyCache getInstance() {
        DevicePolicyManagerInternal devicePolicyManagerInternal = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        if (devicePolicyManagerInternal != null) {
            return devicePolicyManagerInternal.getDevicePolicyCache();
        }
        return EmptyDevicePolicyCache.INSTANCE;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class EmptyDevicePolicyCache extends DevicePolicyCache {
        private static final EmptyDevicePolicyCache INSTANCE = new EmptyDevicePolicyCache();

        @Override // android.app.admin.DevicePolicyCache
        public boolean getScreenCaptureDisabled(int i) {
            return false;
        }

        private EmptyDevicePolicyCache() {
        }
    }
}
