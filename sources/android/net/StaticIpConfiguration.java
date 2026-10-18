package android.net;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public class StaticIpConfiguration implements Parcelable {
    public static Parcelable.Creator<StaticIpConfiguration> CREATOR = new Parcelable.Creator<StaticIpConfiguration>() { // from class: android.net.StaticIpConfiguration.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StaticIpConfiguration createFromParcel(Parcel parcel) {
            StaticIpConfiguration staticIpConfiguration = new StaticIpConfiguration();
            StaticIpConfiguration.readFromParcel(staticIpConfiguration, parcel);
            return staticIpConfiguration;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StaticIpConfiguration[] newArray(int i) {
            return new StaticIpConfiguration[i];
        }
    };
    public final ArrayList<InetAddress> dnsServers;
    public String domains;
    public InetAddress gateway;
    public LinkAddress ipAddress;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public StaticIpConfiguration() {
        this.dnsServers = new ArrayList<>();
    }

    public StaticIpConfiguration(StaticIpConfiguration staticIpConfiguration) {
        this();
        if (staticIpConfiguration != null) {
            this.ipAddress = staticIpConfiguration.ipAddress;
            this.gateway = staticIpConfiguration.gateway;
            this.dnsServers.addAll(staticIpConfiguration.dnsServers);
            this.domains = staticIpConfiguration.domains;
        }
    }

    public void clear() {
        this.ipAddress = null;
        this.gateway = null;
        this.dnsServers.clear();
        this.domains = null;
    }

    public List<RouteInfo> getRoutes(String str) {
        ArrayList arrayList = new ArrayList(3);
        if (this.ipAddress != null) {
            RouteInfo routeInfo = new RouteInfo(this.ipAddress, (InetAddress) null, str);
            arrayList.add(routeInfo);
            if (this.gateway != null && !routeInfo.matches(this.gateway)) {
                arrayList.add(RouteInfo.makeHostRoute(this.gateway, str));
            }
        }
        if (this.gateway != null) {
            arrayList.add(new RouteInfo((IpPrefix) null, this.gateway, str));
        }
        return arrayList;
    }

    public LinkProperties toLinkProperties(String str) {
        LinkProperties linkProperties = new LinkProperties();
        linkProperties.setInterfaceName(str);
        if (this.ipAddress != null) {
            linkProperties.addLinkAddress(this.ipAddress);
        }
        Iterator<RouteInfo> it = getRoutes(str).iterator();
        while (it.hasNext()) {
            linkProperties.addRoute(it.next());
        }
        Iterator<InetAddress> it2 = this.dnsServers.iterator();
        while (it2.hasNext()) {
            linkProperties.addDnsServer(it2.next());
        }
        linkProperties.setDomains(this.domains);
        return linkProperties;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("IP address ");
        if (this.ipAddress != null) {
            stringBuffer.append(this.ipAddress);
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        stringBuffer.append("Gateway ");
        if (this.gateway != null) {
            stringBuffer.append(this.gateway.getHostAddress());
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        }
        stringBuffer.append(" DNS servers: [");
        Iterator<InetAddress> it = this.dnsServers.iterator();
        while (it.hasNext()) {
            InetAddress next = it.next();
            stringBuffer.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            stringBuffer.append(next.getHostAddress());
        }
        stringBuffer.append(" ] Domains ");
        if (this.domains != null) {
            stringBuffer.append(this.domains);
        }
        return stringBuffer.toString();
    }

    public int hashCode() {
        return ((((((611 + (this.ipAddress == null ? 0 : this.ipAddress.hashCode())) * 47) + (this.gateway == null ? 0 : this.gateway.hashCode())) * 47) + (this.domains != null ? this.domains.hashCode() : 0)) * 47) + this.dnsServers.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StaticIpConfiguration)) {
            return false;
        }
        StaticIpConfiguration staticIpConfiguration = (StaticIpConfiguration) obj;
        return staticIpConfiguration != null && Objects.equals(this.ipAddress, staticIpConfiguration.ipAddress) && Objects.equals(this.gateway, staticIpConfiguration.gateway) && this.dnsServers.equals(staticIpConfiguration.dnsServers) && Objects.equals(this.domains, staticIpConfiguration.domains);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.ipAddress, i);
        NetworkUtils.parcelInetAddress(parcel, this.gateway, i);
        parcel.writeInt(this.dnsServers.size());
        Iterator<InetAddress> it = this.dnsServers.iterator();
        while (it.hasNext()) {
            NetworkUtils.parcelInetAddress(parcel, it.next(), i);
        }
        parcel.writeString(this.domains);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void readFromParcel(StaticIpConfiguration staticIpConfiguration, Parcel parcel) {
        staticIpConfiguration.ipAddress = (LinkAddress) parcel.readParcelable(null);
        staticIpConfiguration.gateway = NetworkUtils.unparcelInetAddress(parcel);
        staticIpConfiguration.dnsServers.clear();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            staticIpConfiguration.dnsServers.add(NetworkUtils.unparcelInetAddress(parcel));
        }
        staticIpConfiguration.domains = parcel.readString();
    }
}
