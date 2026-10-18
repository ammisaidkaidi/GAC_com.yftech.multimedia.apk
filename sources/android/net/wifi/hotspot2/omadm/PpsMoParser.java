package android.net.wifi.hotspot2.omadm;

import android.net.wifi.hotspot2.PasspointConfiguration;
import android.net.wifi.hotspot2.pps.Credential;
import android.net.wifi.hotspot2.pps.HomeSp;
import android.net.wifi.hotspot2.pps.Policy;
import android.net.wifi.hotspot2.pps.UpdateParameter;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xml.sax.SAXException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class PpsMoParser {
    private static final String NODE_AAA_SERVER_TRUST_ROOT = "AAAServerTrustRoot";
    private static final String NODE_ABLE_TO_SHARE = "AbleToShare";
    private static final String NODE_CERTIFICATE_TYPE = "CertificateType";
    private static final String NODE_CERT_SHA256_FINGERPRINT = "CertSHA256Fingerprint";
    private static final String NODE_CERT_URL = "CertURL";
    private static final String NODE_CHECK_AAA_SERVER_CERT_STATUS = "CheckAAAServerCertStatus";
    private static final String NODE_COUNTRY = "Country";
    private static final String NODE_CREATION_DATE = "CreationDate";
    private static final String NODE_CREDENTIAL = "Credential";
    private static final String NODE_CREDENTIAL_PRIORITY = "CredentialPriority";
    private static final String NODE_DATA_LIMIT = "DataLimit";
    private static final String NODE_DIGITAL_CERTIFICATE = "DigitalCertificate";
    private static final String NODE_DOWNLINK_BANDWIDTH = "DLBandwidth";
    private static final String NODE_EAP_METHOD = "EAPMethod";
    private static final String NODE_EAP_TYPE = "EAPType";
    private static final String NODE_EXPIRATION_DATE = "ExpirationDate";
    private static final String NODE_EXTENSION = "Extension";
    private static final String NODE_FQDN = "FQDN";
    private static final String NODE_FQDN_MATCH = "FQDN_Match";
    private static final String NODE_FRIENDLY_NAME = "FriendlyName";
    private static final String NODE_HESSID = "HESSID";
    private static final String NODE_HOMESP = "HomeSP";
    private static final String NODE_HOME_OI = "HomeOI";
    private static final String NODE_HOME_OI_LIST = "HomeOIList";
    private static final String NODE_HOME_OI_REQUIRED = "HomeOIRequired";
    private static final String NODE_ICON_URL = "IconURL";
    private static final String NODE_INNER_EAP_TYPE = "InnerEAPType";
    private static final String NODE_INNER_METHOD = "InnerMethod";
    private static final String NODE_INNER_VENDOR_ID = "InnerVendorID";
    private static final String NODE_INNER_VENDOR_TYPE = "InnerVendorType";
    private static final String NODE_IP_PROTOCOL = "IPProtocol";
    private static final String NODE_MACHINE_MANAGED = "MachineManaged";
    private static final String NODE_MAXIMUM_BSS_LOAD_VALUE = "MaximumBSSLoadValue";
    private static final String NODE_MIN_BACKHAUL_THRESHOLD = "MinBackhaulThreshold";
    private static final String NODE_NETWORK_ID = "NetworkID";
    private static final String NODE_NETWORK_TYPE = "NetworkType";
    private static final String NODE_OTHER = "Other";
    private static final String NODE_OTHER_HOME_PARTNERS = "OtherHomePartners";
    private static final String NODE_PASSWORD = "Password";
    private static final String NODE_PER_PROVIDER_SUBSCRIPTION = "PerProviderSubscription";
    private static final String NODE_POLICY = "Policy";
    private static final String NODE_POLICY_UPDATE = "PolicyUpdate";
    private static final String NODE_PORT_NUMBER = "PortNumber";
    private static final String NODE_PREFERRED_ROAMING_PARTNER_LIST = "PreferredRoamingPartnerList";
    private static final String NODE_PRIORITY = "Priority";
    private static final String NODE_REALM = "Realm";
    private static final String NODE_REQUIRED_PROTO_PORT_TUPLE = "RequiredProtoPortTuple";
    private static final String NODE_RESTRICTION = "Restriction";
    private static final String NODE_ROAMING_CONSORTIUM_OI = "RoamingConsortiumOI";
    private static final String NODE_SIM = "SIM";
    private static final String NODE_SIM_IMSI = "IMSI";
    private static final String NODE_SOFT_TOKEN_APP = "SoftTokenApp";
    private static final String NODE_SP_EXCLUSION_LIST = "SPExclusionList";
    private static final String NODE_SSID = "SSID";
    private static final String NODE_START_DATE = "StartDate";
    private static final String NODE_SUBSCRIPTION_PARAMETER = "SubscriptionParameter";
    private static final String NODE_SUBSCRIPTION_UPDATE = "SubscriptionUpdate";
    private static final String NODE_TIME_LIMIT = "TimeLimit";
    private static final String NODE_TRUST_ROOT = "TrustRoot";
    private static final String NODE_TYPE_OF_SUBSCRIPTION = "TypeOfSubscription";
    private static final String NODE_UPDATE_IDENTIFIER = "UpdateIdentifier";
    private static final String NODE_UPDATE_INTERVAL = "UpdateInterval";
    private static final String NODE_UPDATE_METHOD = "UpdateMethod";
    private static final String NODE_UPLINK_BANDWIDTH = "ULBandwidth";
    private static final String NODE_URI = "URI";
    private static final String NODE_USAGE_LIMITS = "UsageLimits";
    private static final String NODE_USAGE_TIME_PERIOD = "UsageTimePeriod";
    private static final String NODE_USERNAME = "Username";
    private static final String NODE_USERNAME_PASSWORD = "UsernamePassword";
    private static final String NODE_VENDOR_ID = "VendorId";
    private static final String NODE_VENDOR_TYPE = "VendorType";
    private static final String PPS_MO_URN = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0";
    private static final String TAG = "PpsMoParser";
    private static final String TAG_DDF_NAME = "DDFName";
    private static final String TAG_MANAGEMENT_TREE = "MgmtTree";
    private static final String TAG_NODE = "Node";
    private static final String TAG_NODE_NAME = "NodeName";
    private static final String TAG_RT_PROPERTIES = "RTProperties";
    private static final String TAG_TYPE = "Type";
    private static final String TAG_VALUE = "Value";
    private static final String TAG_VER_DTD = "VerDTD";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ParsingException extends Exception {
        public ParsingException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class PPSNode {
        private final String mName;

        public abstract List<PPSNode> getChildren();

        public abstract String getValue();

        public abstract boolean isLeaf();

        public PPSNode(String str) {
            this.mName = str;
        }

        public String getName() {
            return this.mName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LeafNode extends PPSNode {
        private final String mValue;

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public List<PPSNode> getChildren() {
            return null;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public boolean isLeaf() {
            return true;
        }

        public LeafNode(String str, String str2) {
            super(str);
            this.mValue = str2;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public String getValue() {
            return this.mValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class InternalNode extends PPSNode {
        private final List<PPSNode> mChildren;

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public String getValue() {
            return null;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public boolean isLeaf() {
            return false;
        }

        public InternalNode(String str, List<PPSNode> list) {
            super(str);
            this.mChildren = list;
        }

        @Override // android.net.wifi.hotspot2.omadm.PpsMoParser.PPSNode
        public List<PPSNode> getChildren() {
            return this.mChildren;
        }
    }

    public static PasspointConfiguration parseMoText(String str) {
        try {
            XMLNode parse = new XMLParser().parse(str);
            if (parse == null) {
                return null;
            }
            if (parse.getTag() != TAG_MANAGEMENT_TREE) {
                Log.e(TAG, "Root is not a MgmtTree");
                return null;
            }
            PasspointConfiguration passpointConfiguration = null;
            String str2 = null;
            for (XMLNode xMLNode : parse.getChildren()) {
                String tag = xMLNode.getTag();
                char c = 65535;
                int hashCode = tag.hashCode();
                if (hashCode != -1736120495) {
                    if (hashCode == 2433570 && tag.equals(TAG_NODE)) {
                        c = 1;
                    }
                } else if (tag.equals(TAG_VER_DTD)) {
                    c = 0;
                }
                switch (c) {
                    case 0:
                        if (str2 != null) {
                            Log.e(TAG, "Duplicate VerDTD element");
                            return null;
                        }
                        str2 = xMLNode.getText();
                        break;
                    case 1:
                        if (passpointConfiguration != null) {
                            Log.e(TAG, "Unexpected multiple Node element under MgmtTree");
                            return null;
                        }
                        try {
                            passpointConfiguration = parsePpsNode(xMLNode);
                            break;
                        } catch (ParsingException e) {
                            Log.e(TAG, e.getMessage());
                            return null;
                        }
                    default:
                        Log.e(TAG, "Unknown node: " + xMLNode.getTag());
                        return null;
                }
            }
            return passpointConfiguration;
        } catch (IOException | SAXException unused) {
            return null;
        }
    }

    private static PasspointConfiguration parsePpsNode(XMLNode xMLNode) throws ParsingException {
        PasspointConfiguration passpointConfiguration = null;
        String str = null;
        int i = Integer.MIN_VALUE;
        for (XMLNode xMLNode2 : xMLNode.getChildren()) {
            String tag = xMLNode2.getTag();
            char c = 65535;
            int hashCode = tag.hashCode();
            if (hashCode != -1852765931) {
                if (hashCode != 2433570) {
                    if (hashCode == 1187524557 && tag.equals(TAG_NODE_NAME)) {
                        c = 0;
                    }
                } else if (tag.equals(TAG_NODE)) {
                    c = 1;
                }
            } else if (tag.equals(TAG_RT_PROPERTIES)) {
                c = 2;
            }
            switch (c) {
                case 0:
                    if (str != null) {
                        throw new ParsingException("Duplicate NodeName: " + xMLNode2.getText());
                    }
                    str = xMLNode2.getText();
                    if (!TextUtils.equals(str, NODE_PER_PROVIDER_SUBSCRIPTION)) {
                        throw new ParsingException("Unexpected NodeName: " + str);
                    }
                    break;
                case 1:
                    PPSNode buildPpsNode = buildPpsNode(xMLNode2);
                    if (TextUtils.equals(buildPpsNode.getName(), NODE_UPDATE_IDENTIFIER)) {
                        if (i != Integer.MIN_VALUE) {
                            throw new ParsingException("Multiple node for UpdateIdentifier");
                        }
                        i = parseInteger(getPpsNodeValue(buildPpsNode));
                        break;
                    } else {
                        if (passpointConfiguration != null) {
                            throw new ParsingException("Multiple PPS instance");
                        }
                        passpointConfiguration = parsePpsInstance(buildPpsNode);
                        break;
                    }
                case 2:
                    String parseUrn = parseUrn(xMLNode2);
                    if (!TextUtils.equals(parseUrn, PPS_MO_URN)) {
                        throw new ParsingException("Unknown URN: " + parseUrn);
                    }
                    break;
                default:
                    throw new ParsingException("Unknown tag under PPS node: " + xMLNode2.getTag());
            }
        }
        if (passpointConfiguration != null && i != Integer.MIN_VALUE) {
            passpointConfiguration.setUpdateIdentifier(i);
        }
        return passpointConfiguration;
    }

    private static String parseUrn(XMLNode xMLNode) throws ParsingException {
        if (xMLNode.getChildren().size() != 1) {
            throw new ParsingException("Expect RTPProperties node to only have one child");
        }
        XMLNode xMLNode2 = xMLNode.getChildren().get(0);
        if (xMLNode2.getChildren().size() != 1) {
            throw new ParsingException("Expect Type node to only have one child");
        }
        if (!TextUtils.equals(xMLNode2.getTag(), TAG_TYPE)) {
            throw new ParsingException("Unexpected tag for Type: " + xMLNode2.getTag());
        }
        XMLNode xMLNode3 = xMLNode2.getChildren().get(0);
        if (!xMLNode3.getChildren().isEmpty()) {
            throw new ParsingException("Expect DDFName node to have no child");
        }
        if (!TextUtils.equals(xMLNode3.getTag(), TAG_DDF_NAME)) {
            throw new ParsingException("Unexpected tag for DDFName: " + xMLNode3.getTag());
        }
        return xMLNode3.getText();
    }

    private static PPSNode buildPpsNode(XMLNode xMLNode) throws ParsingException {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        String str = null;
        String str2 = null;
        for (XMLNode xMLNode2 : xMLNode.getChildren()) {
            String tag = xMLNode2.getTag();
            if (TextUtils.equals(tag, TAG_NODE_NAME)) {
                if (str != null) {
                    throw new ParsingException("Duplicate NodeName node");
                }
                str = xMLNode2.getText();
            } else if (TextUtils.equals(tag, TAG_NODE)) {
                PPSNode buildPpsNode = buildPpsNode(xMLNode2);
                if (hashSet.contains(buildPpsNode.getName())) {
                    throw new ParsingException("Duplicate node: " + buildPpsNode.getName());
                }
                hashSet.add(buildPpsNode.getName());
                arrayList.add(buildPpsNode);
            } else {
                if (!TextUtils.equals(tag, TAG_VALUE)) {
                    throw new ParsingException("Unknown tag: " + tag);
                }
                if (str2 != null) {
                    throw new ParsingException("Duplicate Value node");
                }
                str2 = xMLNode2.getText();
            }
        }
        if (str == null) {
            throw new ParsingException("Invalid node: missing NodeName");
        }
        if (str2 == null && arrayList.size() == 0) {
            throw new ParsingException("Invalid node: " + str + " missing both value and children");
        }
        if (str2 == null || arrayList.size() <= 0) {
            if (str2 != null) {
                return new LeafNode(str, str2);
            }
            return new InternalNode(str, arrayList);
        }
        throw new ParsingException("Invalid node: " + str + " contained both value and children");
    }

    private static String getPpsNodeValue(PPSNode pPSNode) throws ParsingException {
        if (!pPSNode.isLeaf()) {
            throw new ParsingException("Cannot get value from a non-leaf node: " + pPSNode.getName());
        }
        return pPSNode.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0099 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static PasspointConfiguration parsePpsInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for PPS instance");
        }
        PasspointConfiguration passpointConfiguration = new PasspointConfiguration();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -2127810660:
                    if (name.equals("HomeSP")) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                            passpointConfiguration.setHomeSp(parseHomeSP(pPSNode2));
                            break;
                        case 1:
                            passpointConfiguration.setCredential(parseCredential(pPSNode2));
                            break;
                        case 2:
                            passpointConfiguration.setPolicy(parsePolicy(pPSNode2));
                            break;
                        case 3:
                            passpointConfiguration.setTrustRootCertList(parseAAAServerTrustRootList(pPSNode2));
                            break;
                        case 4:
                            passpointConfiguration.setSubscriptionUpdate(parseUpdateParameter(pPSNode2));
                            break;
                        case 5:
                            parseSubscriptionParameter(pPSNode2, passpointConfiguration);
                            break;
                        case 6:
                            passpointConfiguration.setCredentialPriority(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        case 7:
                            Log.d(TAG, "Ignore Extension node for vendor specific information");
                            break;
                        default:
                            throw new ParsingException("Unknown node: " + pPSNode2.getName());
                    }
                case -1898802862:
                    if (name.equals(NODE_POLICY)) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    break;
                case -102647060:
                    if (name.equals(NODE_SUBSCRIPTION_PARAMETER)) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    break;
                case 162345062:
                    if (name.equals(NODE_SUBSCRIPTION_UPDATE)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                case 314411254:
                    if (name.equals(NODE_AAA_SERVER_TRUST_ROOT)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case 1310049399:
                    if (name.equals(NODE_CREDENTIAL)) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    break;
                case 1391410207:
                    if (name.equals(NODE_EXTENSION)) {
                        c = 7;
                    }
                    switch (c) {
                    }
                    break;
                case 2017737531:
                    if (name.equals(NODE_CREDENTIAL_PRIORITY)) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
        return passpointConfiguration;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HomeSp parseHomeSP(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeSP");
        }
        HomeSp homeSp = new HomeSp();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -1560207529:
                    if (name.equals(NODE_HOME_OI_LIST)) {
                        c = 5;
                    }
                    switch (c) {
                        case 0:
                            homeSp.setFqdn(getPpsNodeValue(pPSNode2));
                            break;
                        case 1:
                            homeSp.setFriendlyName(getPpsNodeValue(pPSNode2));
                            break;
                        case 2:
                            homeSp.setRoamingConsortiumOis(parseRoamingConsortiumOI(getPpsNodeValue(pPSNode2)));
                            break;
                        case 3:
                            homeSp.setIconUrl(getPpsNodeValue(pPSNode2));
                            break;
                        case 4:
                            homeSp.setHomeNetworkIds(parseNetworkIds(pPSNode2));
                            break;
                        case 5:
                            Pair<List<Long>, List<Long>> parseHomeOIList = parseHomeOIList(pPSNode2);
                            homeSp.setMatchAllOis(convertFromLongList((List) parseHomeOIList.first));
                            homeSp.setMatchAnyOis(convertFromLongList((List) parseHomeOIList.second));
                            break;
                        case 6:
                            homeSp.setOtherHomePartners(parseOtherHomePartners(pPSNode2));
                            break;
                        default:
                            throw new ParsingException("Unknown node under HomeSP: " + pPSNode2.getName());
                    }
                case -991549930:
                    if (name.equals(NODE_ICON_URL)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case -228216919:
                    if (name.equals(NODE_NETWORK_ID)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                case 2165397:
                    if (name.equals(NODE_FQDN)) {
                        c = 0;
                    }
                    switch (c) {
                    }
                    break;
                case 542998228:
                    if (name.equals(NODE_ROAMING_CONSORTIUM_OI)) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    break;
                case 626253302:
                    if (name.equals(NODE_FRIENDLY_NAME)) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    break;
                case 1956561338:
                    if (name.equals(NODE_OTHER_HOME_PARTNERS)) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
        return homeSp;
    }

    private static long[] parseRoamingConsortiumOI(String str) throws ParsingException {
        String[] split = str.split(",");
        long[] jArr = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            jArr[i] = parseLong(split[i], 16);
        }
        return jArr;
    }

    private static Map<String, Long> parseNetworkIds(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for NetworkID");
        }
        HashMap hashMap = new HashMap();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<String, Long> parseNetworkIdInstance = parseNetworkIdInstance(it.next());
            hashMap.put((String) parseNetworkIdInstance.first, (Long) parseNetworkIdInstance.second);
        }
        return hashMap;
    }

    private static Pair<String, Long> parseNetworkIdInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for NetworkID instance");
        }
        String str = null;
        Long l = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != 2554747) {
                if (hashCode == 2127576568 && name.equals(NODE_HESSID)) {
                    c = 1;
                }
            } else if (name.equals(NODE_SSID)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    str = getPpsNodeValue(pPSNode2);
                    break;
                case 1:
                    l = Long.valueOf(parseLong(getPpsNodeValue(pPSNode2), 16));
                    break;
                default:
                    throw new ParsingException("Unknown node under NetworkID instance: " + pPSNode2.getName());
            }
        }
        if (str == null) {
            throw new ParsingException("NetworkID instance missing SSID");
        }
        return new Pair<>(str, l);
    }

    private static Pair<List<Long>, List<Long>> parseHomeOIList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeOIList");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<Long, Boolean> parseHomeOIInstance = parseHomeOIInstance(it.next());
            if (((Boolean) parseHomeOIInstance.second).booleanValue()) {
                arrayList.add((Long) parseHomeOIInstance.first);
            } else {
                arrayList2.add((Long) parseHomeOIInstance.first);
            }
        }
        return new Pair<>(arrayList, arrayList2);
    }

    private static Pair<Long, Boolean> parseHomeOIInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeOI instance");
        }
        Long l = null;
        Boolean bool = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -2127810791) {
                if (hashCode == -1935174184 && name.equals(NODE_HOME_OI_REQUIRED)) {
                    c = 1;
                }
            } else if (name.equals(NODE_HOME_OI)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    try {
                        l = Long.valueOf(getPpsNodeValue(pPSNode2), 16);
                        break;
                    } catch (NumberFormatException unused) {
                        throw new ParsingException("Invalid HomeOI: " + getPpsNodeValue(pPSNode2));
                    }
                case 1:
                    bool = Boolean.valueOf(getPpsNodeValue(pPSNode2));
                    break;
                default:
                    throw new ParsingException("Unknown node under NetworkID instance: " + pPSNode2.getName());
            }
        }
        if (l == null) {
            throw new ParsingException("HomeOI instance missing OI field");
        }
        if (bool == null) {
            throw new ParsingException("HomeOI instance missing required field");
        }
        return new Pair<>(l, bool);
    }

    private static String[] parseOtherHomePartners(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for OtherHomePartners");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(parseOtherHomePartnerInstance(it.next()));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String parseOtherHomePartnerInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for OtherHomePartner instance");
        }
        String str = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            if (name.hashCode() == 2165397 && name.equals(NODE_FQDN)) {
                c = 0;
            }
            if (c == 0) {
                str = getPpsNodeValue(pPSNode2);
            } else {
                throw new ParsingException("Unknown node under OtherHomePartner instance: " + pPSNode2.getName());
            }
        }
        if (str != null) {
            return str;
        }
        throw new ParsingException("OtherHomePartner instance missing FQDN field");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Credential parseCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for HomeSP");
        }
        Credential credential = new Credential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -1670804707:
                    if (name.equals(NODE_EXPIRATION_DATE)) {
                        c = 1;
                    }
                    switch (c) {
                        case 0:
                            credential.setCreationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                            break;
                        case 1:
                            credential.setExpirationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                            break;
                        case 2:
                            credential.setUserCredential(parseUserCredential(pPSNode2));
                            break;
                        case 3:
                            credential.setCertCredential(parseCertificateCredential(pPSNode2));
                            break;
                        case 4:
                            credential.setRealm(getPpsNodeValue(pPSNode2));
                            break;
                        case 5:
                            credential.setCheckAaaServerCertStatus(Boolean.parseBoolean(getPpsNodeValue(pPSNode2)));
                            break;
                        case 6:
                            credential.setSimCredential(parseSimCredential(pPSNode2));
                            break;
                        default:
                            throw new ParsingException("Unknown node under Credential: " + pPSNode2.getName());
                    }
                case -1208321921:
                    if (name.equals(NODE_DIGITAL_CERTIFICATE)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case 82103:
                    if (name.equals(NODE_SIM)) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    break;
                case 78834287:
                    if (name.equals(NODE_REALM)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                case 494843313:
                    if (name.equals(NODE_USERNAME_PASSWORD)) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    break;
                case 646045490:
                    if (name.equals(NODE_CHECK_AAA_SERVER_CERT_STATUS)) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    break;
                case 1749851981:
                    if (name.equals(NODE_CREATION_DATE)) {
                        c = 0;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
        return credential;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0085 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Credential.UserCredential parseUserCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for UsernamePassword");
        }
        Credential.UserCredential userCredential = new Credential.UserCredential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -201069322:
                    if (name.equals(NODE_USERNAME)) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                            userCredential.setUsername(getPpsNodeValue(pPSNode2));
                            break;
                        case 1:
                            userCredential.setPassword(getPpsNodeValue(pPSNode2));
                            break;
                        case 2:
                            userCredential.setMachineManaged(Boolean.parseBoolean(getPpsNodeValue(pPSNode2)));
                            break;
                        case 3:
                            userCredential.setSoftTokenApp(getPpsNodeValue(pPSNode2));
                            break;
                        case 4:
                            userCredential.setAbleToShare(Boolean.parseBoolean(getPpsNodeValue(pPSNode2)));
                            break;
                        case 5:
                            parseEAPMethod(pPSNode2, userCredential);
                            break;
                        default:
                            throw new ParsingException("Unknown node under UsernamPassword: " + pPSNode2.getName());
                    }
                case -123996342:
                    if (name.equals(NODE_ABLE_TO_SHARE)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                case 1045832056:
                    if (name.equals(NODE_MACHINE_MANAGED)) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    break;
                case 1281629883:
                    if (name.equals(NODE_PASSWORD)) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    break;
                case 1410776018:
                    if (name.equals(NODE_SOFT_TOKEN_APP)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case 1740345653:
                    if (name.equals(NODE_EAP_METHOD)) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
        return userCredential;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseEAPMethod(PPSNode pPSNode, Credential.UserCredential userCredential) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for EAPMethod");
        }
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -2048597853:
                    if (name.equals(NODE_VENDOR_ID)) {
                        c = 2;
                    }
                    switch (c) {
                        case 0:
                            userCredential.setEapType(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        case 1:
                            userCredential.setNonEapInnerMethod(getPpsNodeValue(pPSNode2));
                            break;
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            Log.d(TAG, "Ignore unsupported EAP method parameter: " + pPSNode2.getName());
                            break;
                        default:
                            throw new ParsingException("Unknown node under EAPMethod: " + pPSNode2.getName());
                    }
                case -1706447464:
                    if (name.equals(NODE_INNER_EAP_TYPE)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                case -1607163710:
                    if (name.equals(NODE_VENDOR_TYPE)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case -1249356658:
                    if (name.equals(NODE_EAP_TYPE)) {
                        c = 0;
                    }
                    switch (c) {
                    }
                    break;
                case 541930360:
                    if (name.equals(NODE_INNER_VENDOR_TYPE)) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    break;
                case 901061303:
                    if (name.equals(NODE_INNER_METHOD)) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    break;
                case 961456313:
                    if (name.equals(NODE_INNER_VENDOR_ID)) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
    }

    private static Credential.CertificateCredential parseCertificateCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for DigitalCertificate");
        }
        Credential.CertificateCredential certificateCredential = new Credential.CertificateCredential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -1914611375) {
                if (hashCode == -285451687 && name.equals(NODE_CERT_SHA256_FINGERPRINT)) {
                    c = 1;
                }
            } else if (name.equals(NODE_CERTIFICATE_TYPE)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    certificateCredential.setCertType(getPpsNodeValue(pPSNode2));
                    break;
                case 1:
                    certificateCredential.setCertSha256Fingerprint(parseHexString(getPpsNodeValue(pPSNode2)));
                    break;
                default:
                    throw new ParsingException("Unknown node under DigitalCertificate: " + pPSNode2.getName());
            }
        }
        return certificateCredential;
    }

    private static Credential.SimCredential parseSimCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SIM");
        }
        Credential.SimCredential simCredential = new Credential.SimCredential();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -1249356658) {
                if (hashCode == 2251386 && name.equals(NODE_SIM_IMSI)) {
                    c = 0;
                }
            } else if (name.equals(NODE_EAP_TYPE)) {
                c = 1;
            }
            switch (c) {
                case 0:
                    simCredential.setImsi(getPpsNodeValue(pPSNode2));
                    break;
                case 1:
                    simCredential.setEapType(parseInteger(getPpsNodeValue(pPSNode2)));
                    break;
                default:
                    throw new ParsingException("Unknown node under SIM: " + pPSNode2.getName());
            }
        }
        return simCredential;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0085 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Policy parsePolicy(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for Policy");
        }
        Policy policy = new Policy();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -1710886725:
                    if (name.equals(NODE_POLICY_UPDATE)) {
                        c = 2;
                    }
                    switch (c) {
                        case 0:
                            policy.setPreferredRoamingPartnerList(parsePreferredRoamingPartnerList(pPSNode2));
                            break;
                        case 1:
                            parseMinBackhaulThreshold(pPSNode2, policy);
                            break;
                        case 2:
                            policy.setPolicyUpdate(parseUpdateParameter(pPSNode2));
                            break;
                        case 3:
                            policy.setExcludedSsidList(parseSpExclusionList(pPSNode2));
                            break;
                        case 4:
                            policy.setRequiredProtoPortMap(parseRequiredProtoPortTuple(pPSNode2));
                            break;
                        case 5:
                            policy.setMaximumBssLoadValue(parseInteger(getPpsNodeValue(pPSNode2)));
                            break;
                        default:
                            throw new ParsingException("Unknown node under Policy: " + pPSNode2.getName());
                    }
                case -281271454:
                    if (name.equals(NODE_MIN_BACKHAUL_THRESHOLD)) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    break;
                case -166875607:
                    if (name.equals(NODE_MAXIMUM_BSS_LOAD_VALUE)) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    break;
                case 586018863:
                    if (name.equals(NODE_SP_EXCLUSION_LIST)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case 783647838:
                    if (name.equals(NODE_REQUIRED_PROTO_PORT_TUPLE)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                case 1337803246:
                    if (name.equals(NODE_PREFERRED_ROAMING_PARTNER_LIST)) {
                        c = 0;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
        return policy;
    }

    private static List<Policy.RoamingPartner> parsePreferredRoamingPartnerList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for PreferredRoamingPartnerList");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(parsePreferredRoamingPartner(it.next()));
        }
        return arrayList;
    }

    private static Policy.RoamingPartner parsePreferredRoamingPartner(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for PreferredRoamingPartner instance");
        }
        Policy.RoamingPartner roamingPartner = new Policy.RoamingPartner();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -1672482954) {
                if (hashCode != -1100816956) {
                    if (hashCode == 305746811 && name.equals(NODE_FQDN_MATCH)) {
                        c = 0;
                    }
                } else if (name.equals(NODE_PRIORITY)) {
                    c = 1;
                }
            } else if (name.equals(NODE_COUNTRY)) {
                c = 2;
            }
            switch (c) {
                case 0:
                    String ppsNodeValue = getPpsNodeValue(pPSNode2);
                    String[] split = ppsNodeValue.split(",");
                    if (split.length != 2) {
                        throw new ParsingException("Invalid FQDN_Match: " + ppsNodeValue);
                    }
                    roamingPartner.setFqdn(split[0]);
                    if (TextUtils.equals(split[1], "exactMatch")) {
                        roamingPartner.setFqdnExactMatch(true);
                        break;
                    } else if (TextUtils.equals(split[1], "includeSubdomains")) {
                        roamingPartner.setFqdnExactMatch(false);
                        break;
                    } else {
                        throw new ParsingException("Invalid FQDN_Match: " + ppsNodeValue);
                    }
                case 1:
                    roamingPartner.setPriority(parseInteger(getPpsNodeValue(pPSNode2)));
                    break;
                case 2:
                    roamingPartner.setCountries(getPpsNodeValue(pPSNode2));
                    break;
                default:
                    throw new ParsingException("Unknown node under PreferredRoamingPartnerList instance " + pPSNode2.getName());
            }
        }
        return roamingPartner;
    }

    private static void parseMinBackhaulThreshold(PPSNode pPSNode, Policy policy) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for MinBackhaulThreshold");
        }
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            parseMinBackhaulThresholdInstance(it.next(), policy);
        }
    }

    private static void parseMinBackhaulThresholdInstance(PPSNode pPSNode, Policy policy) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for MinBackhaulThreshold instance");
        }
        String str = null;
        long j = Long.MIN_VALUE;
        long j2 = Long.MIN_VALUE;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -272744856) {
                if (hashCode != -133967910) {
                    if (hashCode == 349434121 && name.equals(NODE_DOWNLINK_BANDWIDTH)) {
                        c = 1;
                    }
                } else if (name.equals(NODE_UPLINK_BANDWIDTH)) {
                    c = 2;
                }
            } else if (name.equals(NODE_NETWORK_TYPE)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    str = getPpsNodeValue(pPSNode2);
                    break;
                case 1:
                    j = parseLong(getPpsNodeValue(pPSNode2), 10);
                    break;
                case 2:
                    j2 = parseLong(getPpsNodeValue(pPSNode2), 10);
                    break;
                default:
                    throw new ParsingException("Unknown node under MinBackhaulThreshold instance " + pPSNode2.getName());
            }
        }
        if (str == null) {
            throw new ParsingException("Missing NetworkType field");
        }
        if (TextUtils.equals(str, "home")) {
            policy.setMinHomeDownlinkBandwidth(j);
            policy.setMinHomeUplinkBandwidth(j2);
        } else if (TextUtils.equals(str, "roaming")) {
            policy.setMinRoamingDownlinkBandwidth(j);
            policy.setMinRoamingUplinkBandwidth(j2);
        } else {
            throw new ParsingException("Invalid network type: " + str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x008f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static UpdateParameter parseUpdateParameter(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for Update Parameters");
        }
        UpdateParameter updateParameter = new UpdateParameter();
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            switch (name.hashCode()) {
                case -961491158:
                    if (name.equals(NODE_UPDATE_METHOD)) {
                        c = 1;
                    }
                    switch (c) {
                        case 0:
                            updateParameter.setUpdateIntervalInMinutes(parseLong(getPpsNodeValue(pPSNode2), 10));
                            break;
                        case 1:
                            updateParameter.setUpdateMethod(getPpsNodeValue(pPSNode2));
                            break;
                        case 2:
                            updateParameter.setRestriction(getPpsNodeValue(pPSNode2));
                            break;
                        case 3:
                            updateParameter.setServerUri(getPpsNodeValue(pPSNode2));
                            break;
                        case 4:
                            Pair<String, String> parseUpdateUserCredential = parseUpdateUserCredential(pPSNode2);
                            updateParameter.setUsername((String) parseUpdateUserCredential.first);
                            updateParameter.setBase64EncodedPassword((String) parseUpdateUserCredential.second);
                            break;
                        case 5:
                            Pair<String, byte[]> parseTrustRoot = parseTrustRoot(pPSNode2);
                            updateParameter.setTrustRootCertUrl((String) parseTrustRoot.first);
                            updateParameter.setTrustRootCertSha256Fingerprint((byte[]) parseTrustRoot.second);
                            break;
                        case 6:
                            Log.d(TAG, "Ignore unsupported paramter: " + pPSNode2.getName());
                            break;
                        default:
                            throw new ParsingException("Unknown node under Update Parameters: " + pPSNode2.getName());
                    }
                case -524654790:
                    if (name.equals(NODE_TRUST_ROOT)) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    break;
                case 84300:
                    if (name.equals(NODE_URI)) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    break;
                case 76517104:
                    if (name.equals(NODE_OTHER)) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    break;
                case 106806188:
                    if (name.equals(NODE_RESTRICTION)) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    break;
                case 438596814:
                    if (name.equals(NODE_UPDATE_INTERVAL)) {
                        c = 0;
                    }
                    switch (c) {
                    }
                    break;
                case 494843313:
                    if (name.equals(NODE_USERNAME_PASSWORD)) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    break;
                default:
                    switch (c) {
                    }
                    break;
            }
        }
        return updateParameter;
    }

    private static Pair<String, String> parseUpdateUserCredential(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for UsernamePassword");
        }
        String str = null;
        String str2 = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -201069322) {
                if (hashCode == 1281629883 && name.equals(NODE_PASSWORD)) {
                    c = 1;
                }
            } else if (name.equals(NODE_USERNAME)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    str = getPpsNodeValue(pPSNode2);
                    break;
                case 1:
                    str2 = getPpsNodeValue(pPSNode2);
                    break;
                default:
                    throw new ParsingException("Unknown node under UsernamePassword: " + pPSNode2.getName());
            }
        }
        return Pair.create(str, str2);
    }

    private static Pair<String, byte[]> parseTrustRoot(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for TrustRoot");
        }
        String str = null;
        byte[] bArr = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -1961397109) {
                if (hashCode == -285451687 && name.equals(NODE_CERT_SHA256_FINGERPRINT)) {
                    c = 1;
                }
            } else if (name.equals(NODE_CERT_URL)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    str = getPpsNodeValue(pPSNode2);
                    break;
                case 1:
                    bArr = parseHexString(getPpsNodeValue(pPSNode2));
                    break;
                default:
                    throw new ParsingException("Unknown node under TrustRoot: " + pPSNode2.getName());
            }
        }
        return Pair.create(str, bArr);
    }

    private static String[] parseSpExclusionList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SPExclusionList");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            arrayList.add(parseSpExclusionInstance(it.next()));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String parseSpExclusionInstance(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SPExclusion instance");
        }
        String str = null;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            if (name.hashCode() == 2554747 && name.equals(NODE_SSID)) {
                c = 0;
            }
            if (c == 0) {
                str = getPpsNodeValue(pPSNode2);
            } else {
                throw new ParsingException("Unknown node under SPExclusion instance");
            }
        }
        return str;
    }

    private static Map<Integer, String> parseRequiredProtoPortTuple(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for RequiredProtoPortTuple");
        }
        HashMap hashMap = new HashMap();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<Integer, String> parseProtoPortTuple = parseProtoPortTuple(it.next());
            hashMap.put((Integer) parseProtoPortTuple.first, (String) parseProtoPortTuple.second);
        }
        return hashMap;
    }

    private static Pair<Integer, String> parseProtoPortTuple(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for RequiredProtoPortTuple instance");
        }
        String str = null;
        int i = Integer.MIN_VALUE;
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -952572705) {
                if (hashCode == 1727403850 && name.equals(NODE_PORT_NUMBER)) {
                    c = 1;
                }
            } else if (name.equals(NODE_IP_PROTOCOL)) {
                c = 0;
            }
            switch (c) {
                case 0:
                    i = parseInteger(getPpsNodeValue(pPSNode2));
                    break;
                case 1:
                    str = getPpsNodeValue(pPSNode2);
                    break;
                default:
                    throw new ParsingException("Unknown node under RequiredProtoPortTuple instance" + pPSNode2.getName());
            }
        }
        if (i == Integer.MIN_VALUE) {
            throw new ParsingException("Missing IPProtocol field");
        }
        if (str == null) {
            throw new ParsingException("Missing PortNumber field");
        }
        return Pair.create(Integer.valueOf(i), str);
    }

    private static Map<String, byte[]> parseAAAServerTrustRootList(PPSNode pPSNode) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for AAAServerTrustRoot");
        }
        HashMap hashMap = new HashMap();
        Iterator<PPSNode> it = pPSNode.getChildren().iterator();
        while (it.hasNext()) {
            Pair<String, byte[]> parseTrustRoot = parseTrustRoot(it.next());
            hashMap.put((String) parseTrustRoot.first, (byte[]) parseTrustRoot.second);
        }
        return hashMap;
    }

    private static void parseSubscriptionParameter(PPSNode pPSNode, PasspointConfiguration passpointConfiguration) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for SubscriptionParameter");
        }
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -1930116871) {
                if (hashCode != -1670804707) {
                    if (hashCode != -1655596402) {
                        if (hashCode == 1749851981 && name.equals(NODE_CREATION_DATE)) {
                            c = 0;
                        }
                    } else if (name.equals(NODE_TYPE_OF_SUBSCRIPTION)) {
                        c = 2;
                    }
                } else if (name.equals(NODE_EXPIRATION_DATE)) {
                    c = 1;
                }
            } else if (name.equals(NODE_USAGE_LIMITS)) {
                c = 3;
            }
            switch (c) {
                case 0:
                    passpointConfiguration.setSubscriptionCreationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                    break;
                case 1:
                    passpointConfiguration.setSubscriptionExpirationTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                    break;
                case 2:
                    passpointConfiguration.setSubscriptionType(getPpsNodeValue(pPSNode2));
                    break;
                case 3:
                    parseUsageLimits(pPSNode2, passpointConfiguration);
                    break;
                default:
                    throw new ParsingException("Unknown node under SubscriptionParameter" + pPSNode2.getName());
            }
        }
    }

    private static void parseUsageLimits(PPSNode pPSNode, PasspointConfiguration passpointConfiguration) throws ParsingException {
        if (pPSNode.isLeaf()) {
            throw new ParsingException("Leaf node not expected for UsageLimits");
        }
        for (PPSNode pPSNode2 : pPSNode.getChildren()) {
            String name = pPSNode2.getName();
            char c = 65535;
            int hashCode = name.hashCode();
            if (hashCode != -125810928) {
                if (hashCode != 587064143) {
                    if (hashCode != 1622722065) {
                        if (hashCode == 2022760654 && name.equals(NODE_TIME_LIMIT)) {
                            c = 2;
                        }
                    } else if (name.equals(NODE_DATA_LIMIT)) {
                        c = 0;
                    }
                } else if (name.equals(NODE_USAGE_TIME_PERIOD)) {
                    c = 3;
                }
            } else if (name.equals(NODE_START_DATE)) {
                c = 1;
            }
            switch (c) {
                case 0:
                    passpointConfiguration.setUsageLimitDataLimit(parseLong(getPpsNodeValue(pPSNode2), 10));
                    break;
                case 1:
                    passpointConfiguration.setUsageLimitStartTimeInMillis(parseDate(getPpsNodeValue(pPSNode2)));
                    break;
                case 2:
                    passpointConfiguration.setUsageLimitTimeLimitInMinutes(parseLong(getPpsNodeValue(pPSNode2), 10));
                    break;
                case 3:
                    passpointConfiguration.setUsageLimitUsageTimePeriodInMinutes(parseLong(getPpsNodeValue(pPSNode2), 10));
                    break;
                default:
                    throw new ParsingException("Unknown node under UsageLimits" + pPSNode2.getName());
            }
        }
    }

    private static byte[] parseHexString(String str) throws ParsingException {
        if ((str.length() & 1) == 1) {
            throw new ParsingException("Odd length hex string: " + str.length());
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            try {
                bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
            } catch (NumberFormatException unused) {
                throw new ParsingException("Invalid hex string: " + str);
            }
        }
        return bArr;
    }

    private static long parseDate(String str) throws ParsingException {
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").parse(str).getTime();
        } catch (ParseException unused) {
            throw new ParsingException("Badly formatted time: " + str);
        }
    }

    private static int parseInteger(String str) throws ParsingException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new ParsingException("Invalid integer value: " + str);
        }
    }

    private static long parseLong(String str, int i) throws ParsingException {
        try {
            return Long.parseLong(str, i);
        } catch (NumberFormatException unused) {
            throw new ParsingException("Invalid long integer value: " + str);
        }
    }

    private static long[] convertFromLongList(List<Long> list) {
        Long[] lArr = (Long[]) list.toArray(new Long[list.size()]);
        long[] jArr = new long[lArr.length];
        for (int i = 0; i < lArr.length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }
}
