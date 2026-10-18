package android.security.net.config;

import android.content.Context;
import java.security.Provider;
import java.security.Security;
import libcore.net.NetworkSecurityPolicy;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class NetworkSecurityConfigProvider extends Provider {
    private static final String PREFIX = NetworkSecurityConfigProvider.class.getPackage().getName() + ".";

    public NetworkSecurityConfigProvider() {
        super("AndroidNSSP", 1.0d, "Android Network Security Policy Provider");
        put("TrustManagerFactory.PKIX", PREFIX + "RootTrustManagerFactorySpi");
        put("Alg.Alias.TrustManagerFactory.X509", "PKIX");
    }

    public static void install(Context context) {
        ApplicationConfig applicationConfig = new ApplicationConfig(new ManifestConfigSource(context));
        ApplicationConfig.setDefaultInstance(applicationConfig);
        int insertProviderAt = Security.insertProviderAt(new NetworkSecurityConfigProvider(), 1);
        if (insertProviderAt != 1) {
            throw new RuntimeException("Failed to install provider as highest priority provider. Provider was installed at position " + insertProviderAt);
        }
        NetworkSecurityPolicy.setInstance(new ConfigNetworkSecurityPolicy(applicationConfig));
    }
}
