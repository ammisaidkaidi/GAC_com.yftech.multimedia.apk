package com.android.server.wifi.nano;

import com.android.framework.protobuf.nano.CodedInputByteBufferNano;
import com.android.framework.protobuf.nano.CodedOutputByteBufferNano;
import com.android.framework.protobuf.nano.InternalNano;
import com.android.framework.protobuf.nano.InvalidProtocolBufferNanoException;
import com.android.framework.protobuf.nano.MessageNano;
import com.android.framework.protobuf.nano.WireFormatNano;
import com.android.internal.logging.nano.MetricsProto;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface WifiMetricsProto {

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WifiLog extends MessageNano {
        public static final int FAILURE_WIFI_DISABLED = 4;
        public static final int SCAN_FAILURE_INTERRUPTED = 2;
        public static final int SCAN_FAILURE_INVALID_CONFIGURATION = 3;
        public static final int SCAN_SUCCESS = 1;
        public static final int SCAN_UNKNOWN = 0;
        public static final int WIFI_ASSOCIATED = 3;
        public static final int WIFI_DISABLED = 1;
        public static final int WIFI_DISCONNECTED = 2;
        public static final int WIFI_UNKNOWN = 0;
        private static volatile WifiLog[] _emptyArray;
        public AlertReasonCount[] alertReasonCount;
        public NumConnectableNetworksBucket[] availableOpenBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableOpenOrSavedBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableOpenOrSavedSsidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableOpenSsidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedPasspointProviderBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedPasspointProviderProfilesInScanHistogram;
        public NumConnectableNetworksBucket[] availableSavedSsidsInScanHistogram;
        public WifiSystemStateEntry[] backgroundScanRequestState;
        public ScanReturnEntry[] backgroundScanReturnEntries;
        public ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationActionCount;
        public ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationCount;
        public ConnectionEvent[] connectionEvent;
        public int fullBandAllSingleScanListenerResults;
        public boolean isLocationEnabled;
        public boolean isMacRandomizationOn;
        public boolean isScanningAlwaysEnabled;
        public boolean isWifiNetworksAvailableNotificationOn;
        public int numBackgroundScans;
        public int numClientInterfaceDown;
        public int numConnectivityOneshotScans;
        public int numConnectivityWatchdogBackgroundBad;
        public int numConnectivityWatchdogBackgroundGood;
        public int numConnectivityWatchdogPnoBad;
        public int numConnectivityWatchdogPnoGood;
        public int numEmptyScanResults;
        public int numEnterpriseNetworkScanResults;
        public int numEnterpriseNetworks;
        public int numExternalAppOneshotScanRequests;
        public int numExternalBackgroundAppOneshotScanRequestsThrottled;
        public int numExternalForegroundAppOneshotScanRequestsThrottled;
        public int numHalCrashes;
        public int numHiddenNetworkScanResults;
        public int numHiddenNetworks;
        public int numHostapdCrashes;
        public int numHotspot2R1NetworkScanResults;
        public int numHotspot2R2NetworkScanResults;
        public int numLastResortWatchdogAvailableNetworksTotal;
        public int numLastResortWatchdogBadAssociationNetworksTotal;
        public int numLastResortWatchdogBadAuthenticationNetworksTotal;
        public int numLastResortWatchdogBadDhcpNetworksTotal;
        public int numLastResortWatchdogBadOtherNetworksTotal;
        public int numLastResortWatchdogSuccesses;
        public int numLastResortWatchdogTriggers;
        public int numLastResortWatchdogTriggersWithBadAssociation;
        public int numLastResortWatchdogTriggersWithBadAuthentication;
        public int numLastResortWatchdogTriggersWithBadDhcp;
        public int numLastResortWatchdogTriggersWithBadOther;
        public int numNetworksAddedByApps;
        public int numNetworksAddedByUser;
        public int numNonEmptyScanResults;
        public int numOneshotHasDfsChannelScans;
        public int numOneshotScans;
        public int numOpenNetworkConnectMessageFailedToSend;
        public int numOpenNetworkRecommendationUpdates;
        public int numOpenNetworkScanResults;
        public int numOpenNetworks;
        public int numPasspointNetworks;
        public int numPasspointProviderInstallSuccess;
        public int numPasspointProviderInstallation;
        public int numPasspointProviderUninstallSuccess;
        public int numPasspointProviderUninstallation;
        public int numPasspointProviders;
        public int numPasspointProvidersSuccessfullyConnected;
        public int numPersonalNetworkScanResults;
        public int numPersonalNetworks;
        public int numRadioModeChangeToDbs;
        public int numRadioModeChangeToMcc;
        public int numRadioModeChangeToSbs;
        public int numRadioModeChangeToScc;
        public int numSavedNetworks;
        public int numScans;
        public int numSetupClientInterfaceFailureDueToHal;
        public int numSetupClientInterfaceFailureDueToSupplicant;
        public int numSetupClientInterfaceFailureDueToWificond;
        public int numSetupSoftApInterfaceFailureDueToHal;
        public int numSetupSoftApInterfaceFailureDueToHostapd;
        public int numSetupSoftApInterfaceFailureDueToWificond;
        public int numSoftApInterfaceDown;
        public int numSoftApUserBandPreferenceUnsatisfied;
        public int numSupplicantCrashes;
        public int numTotalScanResults;
        public int numWifiToggledViaAirplane;
        public int numWifiToggledViaSettings;
        public int numWificondCrashes;
        public NumConnectableNetworksBucket[] observed80211McSupportingApsInScanHistogram;
        public NumConnectableNetworksBucket[] observedHotspotR1ApsInScanHistogram;
        public NumConnectableNetworksBucket[] observedHotspotR1ApsPerEssInScanHistogram;
        public NumConnectableNetworksBucket[] observedHotspotR1EssInScanHistogram;
        public NumConnectableNetworksBucket[] observedHotspotR2ApsInScanHistogram;
        public NumConnectableNetworksBucket[] observedHotspotR2ApsPerEssInScanHistogram;
        public NumConnectableNetworksBucket[] observedHotspotR2EssInScanHistogram;
        public int openNetworkRecommenderBlacklistSize;
        public int partialAllSingleScanListenerResults;
        public PnoScanMetrics pnoScanMetrics;
        public int recordDurationSec;
        public RssiPollCount[] rssiPollDeltaCount;
        public RssiPollCount[] rssiPollRssiCount;
        public ScanReturnEntry[] scanReturnEntries;
        public String scoreExperimentId;
        public SoftApConnectedClientsEvent[] softApConnectedClientsEventsLocalOnly;
        public SoftApConnectedClientsEvent[] softApConnectedClientsEventsTethered;
        public SoftApDurationBucket[] softApDuration;
        public SoftApReturnCodeCount[] softApReturnCode;
        public StaEvent[] staEventList;
        public NumConnectableNetworksBucket[] totalBssidsInScanHistogram;
        public NumConnectableNetworksBucket[] totalSsidsInScanHistogram;
        public long watchdogTotalConnectionFailureCountAfterTrigger;
        public long watchdogTriggerToConnectionSuccessDurationMs;
        public WifiAwareLog wifiAwareLog;
        public WifiPowerStats wifiPowerStats;
        public WifiRttLog wifiRttLog;
        public WifiScoreCount[] wifiScoreCount;
        public WifiSystemStateEntry[] wifiSystemStateEntries;
        public WifiWakeStats wifiWakeStats;
        public WpsMetrics wpsMetrics;

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class ScanReturnEntry extends MessageNano {
            private static volatile ScanReturnEntry[] _emptyArray;
            public int scanResultsCount;
            public int scanReturnCode;

            public static ScanReturnEntry[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new ScanReturnEntry[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public ScanReturnEntry() {
                clear();
            }

            public ScanReturnEntry clear() {
                this.scanReturnCode = 0;
                this.scanResultsCount = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.scanReturnCode != 0) {
                    codedOutputByteBufferNano.writeInt32(1, this.scanReturnCode);
                }
                if (this.scanResultsCount != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.scanResultsCount);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.scanReturnCode != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.scanReturnCode);
                }
                return this.scanResultsCount != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.scanResultsCount) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public ScanReturnEntry mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.scanReturnCode = readInt32;
                                break;
                        }
                    } else if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.scanResultsCount = codedInputByteBufferNano.readInt32();
                    }
                }
            }

            public static ScanReturnEntry parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (ScanReturnEntry) MessageNano.mergeFrom(new ScanReturnEntry(), bArr);
            }

            public static ScanReturnEntry parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new ScanReturnEntry().mergeFrom(codedInputByteBufferNano);
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class WifiSystemStateEntry extends MessageNano {
            private static volatile WifiSystemStateEntry[] _emptyArray;
            public boolean isScreenOn;
            public int wifiState;
            public int wifiStateCount;

            public static WifiSystemStateEntry[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new WifiSystemStateEntry[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public WifiSystemStateEntry() {
                clear();
            }

            public WifiSystemStateEntry clear() {
                this.wifiState = 0;
                this.wifiStateCount = 0;
                this.isScreenOn = false;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.wifiState != 0) {
                    codedOutputByteBufferNano.writeInt32(1, this.wifiState);
                }
                if (this.wifiStateCount != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.wifiStateCount);
                }
                if (this.isScreenOn) {
                    codedOutputByteBufferNano.writeBool(3, this.isScreenOn);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.wifiState != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.wifiState);
                }
                if (this.wifiStateCount != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.wifiStateCount);
                }
                return this.isScreenOn ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(3, this.isScreenOn) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public WifiSystemStateEntry mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.wifiState = readInt32;
                                break;
                        }
                    } else if (readTag == 16) {
                        this.wifiStateCount = codedInputByteBufferNano.readInt32();
                    } else if (readTag != 24) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.isScreenOn = codedInputByteBufferNano.readBool();
                    }
                }
            }

            public static WifiSystemStateEntry parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (WifiSystemStateEntry) MessageNano.mergeFrom(new WifiSystemStateEntry(), bArr);
            }

            public static WifiSystemStateEntry parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new WifiSystemStateEntry().mergeFrom(codedInputByteBufferNano);
            }
        }

        public static WifiLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WifiLog() {
            clear();
        }

        public WifiLog clear() {
            this.connectionEvent = ConnectionEvent.emptyArray();
            this.numSavedNetworks = 0;
            this.numOpenNetworks = 0;
            this.numPersonalNetworks = 0;
            this.numEnterpriseNetworks = 0;
            this.isLocationEnabled = false;
            this.isScanningAlwaysEnabled = false;
            this.numWifiToggledViaSettings = 0;
            this.numWifiToggledViaAirplane = 0;
            this.numNetworksAddedByUser = 0;
            this.numNetworksAddedByApps = 0;
            this.numEmptyScanResults = 0;
            this.numNonEmptyScanResults = 0;
            this.numOneshotScans = 0;
            this.numBackgroundScans = 0;
            this.scanReturnEntries = ScanReturnEntry.emptyArray();
            this.wifiSystemStateEntries = WifiSystemStateEntry.emptyArray();
            this.backgroundScanReturnEntries = ScanReturnEntry.emptyArray();
            this.backgroundScanRequestState = WifiSystemStateEntry.emptyArray();
            this.numLastResortWatchdogTriggers = 0;
            this.numLastResortWatchdogBadAssociationNetworksTotal = 0;
            this.numLastResortWatchdogBadAuthenticationNetworksTotal = 0;
            this.numLastResortWatchdogBadDhcpNetworksTotal = 0;
            this.numLastResortWatchdogBadOtherNetworksTotal = 0;
            this.numLastResortWatchdogAvailableNetworksTotal = 0;
            this.numLastResortWatchdogTriggersWithBadAssociation = 0;
            this.numLastResortWatchdogTriggersWithBadAuthentication = 0;
            this.numLastResortWatchdogTriggersWithBadDhcp = 0;
            this.numLastResortWatchdogTriggersWithBadOther = 0;
            this.numConnectivityWatchdogPnoGood = 0;
            this.numConnectivityWatchdogPnoBad = 0;
            this.numConnectivityWatchdogBackgroundGood = 0;
            this.numConnectivityWatchdogBackgroundBad = 0;
            this.recordDurationSec = 0;
            this.rssiPollRssiCount = RssiPollCount.emptyArray();
            this.numLastResortWatchdogSuccesses = 0;
            this.numHiddenNetworks = 0;
            this.numPasspointNetworks = 0;
            this.numTotalScanResults = 0;
            this.numOpenNetworkScanResults = 0;
            this.numPersonalNetworkScanResults = 0;
            this.numEnterpriseNetworkScanResults = 0;
            this.numHiddenNetworkScanResults = 0;
            this.numHotspot2R1NetworkScanResults = 0;
            this.numHotspot2R2NetworkScanResults = 0;
            this.numScans = 0;
            this.alertReasonCount = AlertReasonCount.emptyArray();
            this.wifiScoreCount = WifiScoreCount.emptyArray();
            this.softApDuration = SoftApDurationBucket.emptyArray();
            this.softApReturnCode = SoftApReturnCodeCount.emptyArray();
            this.rssiPollDeltaCount = RssiPollCount.emptyArray();
            this.staEventList = StaEvent.emptyArray();
            this.numHalCrashes = 0;
            this.numWificondCrashes = 0;
            this.numSetupClientInterfaceFailureDueToHal = 0;
            this.numSetupClientInterfaceFailureDueToWificond = 0;
            this.wifiAwareLog = null;
            this.numPasspointProviders = 0;
            this.numPasspointProviderInstallation = 0;
            this.numPasspointProviderInstallSuccess = 0;
            this.numPasspointProviderUninstallation = 0;
            this.numPasspointProviderUninstallSuccess = 0;
            this.numPasspointProvidersSuccessfullyConnected = 0;
            this.totalSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.totalBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenOrSavedSsidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableOpenOrSavedBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedPasspointProviderProfilesInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.availableSavedPasspointProviderBssidsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.fullBandAllSingleScanListenerResults = 0;
            this.partialAllSingleScanListenerResults = 0;
            this.pnoScanMetrics = null;
            this.connectToNetworkNotificationCount = ConnectToNetworkNotificationAndActionCount.emptyArray();
            this.connectToNetworkNotificationActionCount = ConnectToNetworkNotificationAndActionCount.emptyArray();
            this.openNetworkRecommenderBlacklistSize = 0;
            this.isWifiNetworksAvailableNotificationOn = false;
            this.numOpenNetworkRecommendationUpdates = 0;
            this.numOpenNetworkConnectMessageFailedToSend = 0;
            this.observedHotspotR1ApsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.observedHotspotR2ApsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.observedHotspotR1EssInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.observedHotspotR2EssInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.observedHotspotR1ApsPerEssInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.observedHotspotR2ApsPerEssInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.softApConnectedClientsEventsTethered = SoftApConnectedClientsEvent.emptyArray();
            this.softApConnectedClientsEventsLocalOnly = SoftApConnectedClientsEvent.emptyArray();
            this.wpsMetrics = null;
            this.wifiPowerStats = null;
            this.numConnectivityOneshotScans = 0;
            this.wifiWakeStats = null;
            this.observed80211McSupportingApsInScanHistogram = NumConnectableNetworksBucket.emptyArray();
            this.numSupplicantCrashes = 0;
            this.numHostapdCrashes = 0;
            this.numSetupClientInterfaceFailureDueToSupplicant = 0;
            this.numSetupSoftApInterfaceFailureDueToHal = 0;
            this.numSetupSoftApInterfaceFailureDueToWificond = 0;
            this.numSetupSoftApInterfaceFailureDueToHostapd = 0;
            this.numClientInterfaceDown = 0;
            this.numSoftApInterfaceDown = 0;
            this.numExternalAppOneshotScanRequests = 0;
            this.numExternalForegroundAppOneshotScanRequestsThrottled = 0;
            this.numExternalBackgroundAppOneshotScanRequestsThrottled = 0;
            this.watchdogTriggerToConnectionSuccessDurationMs = -1L;
            this.watchdogTotalConnectionFailureCountAfterTrigger = 0L;
            this.numOneshotHasDfsChannelScans = 0;
            this.wifiRttLog = null;
            this.isMacRandomizationOn = false;
            this.numRadioModeChangeToMcc = 0;
            this.numRadioModeChangeToScc = 0;
            this.numRadioModeChangeToSbs = 0;
            this.numRadioModeChangeToDbs = 0;
            this.numSoftApUserBandPreferenceUnsatisfied = 0;
            this.scoreExperimentId = "";
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.connectionEvent != null && this.connectionEvent.length > 0) {
                for (int i = 0; i < this.connectionEvent.length; i++) {
                    ConnectionEvent connectionEvent = this.connectionEvent[i];
                    if (connectionEvent != null) {
                        codedOutputByteBufferNano.writeMessage(1, connectionEvent);
                    }
                }
            }
            if (this.numSavedNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.numSavedNetworks);
            }
            if (this.numOpenNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.numOpenNetworks);
            }
            if (this.numPersonalNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.numPersonalNetworks);
            }
            if (this.numEnterpriseNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.numEnterpriseNetworks);
            }
            if (this.isLocationEnabled) {
                codedOutputByteBufferNano.writeBool(6, this.isLocationEnabled);
            }
            if (this.isScanningAlwaysEnabled) {
                codedOutputByteBufferNano.writeBool(7, this.isScanningAlwaysEnabled);
            }
            if (this.numWifiToggledViaSettings != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.numWifiToggledViaSettings);
            }
            if (this.numWifiToggledViaAirplane != 0) {
                codedOutputByteBufferNano.writeInt32(9, this.numWifiToggledViaAirplane);
            }
            if (this.numNetworksAddedByUser != 0) {
                codedOutputByteBufferNano.writeInt32(10, this.numNetworksAddedByUser);
            }
            if (this.numNetworksAddedByApps != 0) {
                codedOutputByteBufferNano.writeInt32(11, this.numNetworksAddedByApps);
            }
            if (this.numEmptyScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(12, this.numEmptyScanResults);
            }
            if (this.numNonEmptyScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(13, this.numNonEmptyScanResults);
            }
            if (this.numOneshotScans != 0) {
                codedOutputByteBufferNano.writeInt32(14, this.numOneshotScans);
            }
            if (this.numBackgroundScans != 0) {
                codedOutputByteBufferNano.writeInt32(15, this.numBackgroundScans);
            }
            if (this.scanReturnEntries != null && this.scanReturnEntries.length > 0) {
                for (int i2 = 0; i2 < this.scanReturnEntries.length; i2++) {
                    ScanReturnEntry scanReturnEntry = this.scanReturnEntries[i2];
                    if (scanReturnEntry != null) {
                        codedOutputByteBufferNano.writeMessage(16, scanReturnEntry);
                    }
                }
            }
            if (this.wifiSystemStateEntries != null && this.wifiSystemStateEntries.length > 0) {
                for (int i3 = 0; i3 < this.wifiSystemStateEntries.length; i3++) {
                    WifiSystemStateEntry wifiSystemStateEntry = this.wifiSystemStateEntries[i3];
                    if (wifiSystemStateEntry != null) {
                        codedOutputByteBufferNano.writeMessage(17, wifiSystemStateEntry);
                    }
                }
            }
            if (this.backgroundScanReturnEntries != null && this.backgroundScanReturnEntries.length > 0) {
                for (int i4 = 0; i4 < this.backgroundScanReturnEntries.length; i4++) {
                    ScanReturnEntry scanReturnEntry2 = this.backgroundScanReturnEntries[i4];
                    if (scanReturnEntry2 != null) {
                        codedOutputByteBufferNano.writeMessage(18, scanReturnEntry2);
                    }
                }
            }
            if (this.backgroundScanRequestState != null && this.backgroundScanRequestState.length > 0) {
                for (int i5 = 0; i5 < this.backgroundScanRequestState.length; i5++) {
                    WifiSystemStateEntry wifiSystemStateEntry2 = this.backgroundScanRequestState[i5];
                    if (wifiSystemStateEntry2 != null) {
                        codedOutputByteBufferNano.writeMessage(19, wifiSystemStateEntry2);
                    }
                }
            }
            if (this.numLastResortWatchdogTriggers != 0) {
                codedOutputByteBufferNano.writeInt32(20, this.numLastResortWatchdogTriggers);
            }
            if (this.numLastResortWatchdogBadAssociationNetworksTotal != 0) {
                codedOutputByteBufferNano.writeInt32(21, this.numLastResortWatchdogBadAssociationNetworksTotal);
            }
            if (this.numLastResortWatchdogBadAuthenticationNetworksTotal != 0) {
                codedOutputByteBufferNano.writeInt32(22, this.numLastResortWatchdogBadAuthenticationNetworksTotal);
            }
            if (this.numLastResortWatchdogBadDhcpNetworksTotal != 0) {
                codedOutputByteBufferNano.writeInt32(23, this.numLastResortWatchdogBadDhcpNetworksTotal);
            }
            if (this.numLastResortWatchdogBadOtherNetworksTotal != 0) {
                codedOutputByteBufferNano.writeInt32(24, this.numLastResortWatchdogBadOtherNetworksTotal);
            }
            if (this.numLastResortWatchdogAvailableNetworksTotal != 0) {
                codedOutputByteBufferNano.writeInt32(25, this.numLastResortWatchdogAvailableNetworksTotal);
            }
            if (this.numLastResortWatchdogTriggersWithBadAssociation != 0) {
                codedOutputByteBufferNano.writeInt32(26, this.numLastResortWatchdogTriggersWithBadAssociation);
            }
            if (this.numLastResortWatchdogTriggersWithBadAuthentication != 0) {
                codedOutputByteBufferNano.writeInt32(27, this.numLastResortWatchdogTriggersWithBadAuthentication);
            }
            if (this.numLastResortWatchdogTriggersWithBadDhcp != 0) {
                codedOutputByteBufferNano.writeInt32(28, this.numLastResortWatchdogTriggersWithBadDhcp);
            }
            if (this.numLastResortWatchdogTriggersWithBadOther != 0) {
                codedOutputByteBufferNano.writeInt32(29, this.numLastResortWatchdogTriggersWithBadOther);
            }
            if (this.numConnectivityWatchdogPnoGood != 0) {
                codedOutputByteBufferNano.writeInt32(30, this.numConnectivityWatchdogPnoGood);
            }
            if (this.numConnectivityWatchdogPnoBad != 0) {
                codedOutputByteBufferNano.writeInt32(31, this.numConnectivityWatchdogPnoBad);
            }
            if (this.numConnectivityWatchdogBackgroundGood != 0) {
                codedOutputByteBufferNano.writeInt32(32, this.numConnectivityWatchdogBackgroundGood);
            }
            if (this.numConnectivityWatchdogBackgroundBad != 0) {
                codedOutputByteBufferNano.writeInt32(33, this.numConnectivityWatchdogBackgroundBad);
            }
            if (this.recordDurationSec != 0) {
                codedOutputByteBufferNano.writeInt32(34, this.recordDurationSec);
            }
            if (this.rssiPollRssiCount != null && this.rssiPollRssiCount.length > 0) {
                for (int i6 = 0; i6 < this.rssiPollRssiCount.length; i6++) {
                    RssiPollCount rssiPollCount = this.rssiPollRssiCount[i6];
                    if (rssiPollCount != null) {
                        codedOutputByteBufferNano.writeMessage(35, rssiPollCount);
                    }
                }
            }
            if (this.numLastResortWatchdogSuccesses != 0) {
                codedOutputByteBufferNano.writeInt32(36, this.numLastResortWatchdogSuccesses);
            }
            if (this.numHiddenNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(37, this.numHiddenNetworks);
            }
            if (this.numPasspointNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(38, this.numPasspointNetworks);
            }
            if (this.numTotalScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(39, this.numTotalScanResults);
            }
            if (this.numOpenNetworkScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(40, this.numOpenNetworkScanResults);
            }
            if (this.numPersonalNetworkScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(41, this.numPersonalNetworkScanResults);
            }
            if (this.numEnterpriseNetworkScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(42, this.numEnterpriseNetworkScanResults);
            }
            if (this.numHiddenNetworkScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(43, this.numHiddenNetworkScanResults);
            }
            if (this.numHotspot2R1NetworkScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(44, this.numHotspot2R1NetworkScanResults);
            }
            if (this.numHotspot2R2NetworkScanResults != 0) {
                codedOutputByteBufferNano.writeInt32(45, this.numHotspot2R2NetworkScanResults);
            }
            if (this.numScans != 0) {
                codedOutputByteBufferNano.writeInt32(46, this.numScans);
            }
            if (this.alertReasonCount != null && this.alertReasonCount.length > 0) {
                for (int i7 = 0; i7 < this.alertReasonCount.length; i7++) {
                    AlertReasonCount alertReasonCount = this.alertReasonCount[i7];
                    if (alertReasonCount != null) {
                        codedOutputByteBufferNano.writeMessage(47, alertReasonCount);
                    }
                }
            }
            if (this.wifiScoreCount != null && this.wifiScoreCount.length > 0) {
                for (int i8 = 0; i8 < this.wifiScoreCount.length; i8++) {
                    WifiScoreCount wifiScoreCount = this.wifiScoreCount[i8];
                    if (wifiScoreCount != null) {
                        codedOutputByteBufferNano.writeMessage(48, wifiScoreCount);
                    }
                }
            }
            if (this.softApDuration != null && this.softApDuration.length > 0) {
                for (int i9 = 0; i9 < this.softApDuration.length; i9++) {
                    SoftApDurationBucket softApDurationBucket = this.softApDuration[i9];
                    if (softApDurationBucket != null) {
                        codedOutputByteBufferNano.writeMessage(49, softApDurationBucket);
                    }
                }
            }
            if (this.softApReturnCode != null && this.softApReturnCode.length > 0) {
                for (int i10 = 0; i10 < this.softApReturnCode.length; i10++) {
                    SoftApReturnCodeCount softApReturnCodeCount = this.softApReturnCode[i10];
                    if (softApReturnCodeCount != null) {
                        codedOutputByteBufferNano.writeMessage(50, softApReturnCodeCount);
                    }
                }
            }
            if (this.rssiPollDeltaCount != null && this.rssiPollDeltaCount.length > 0) {
                for (int i11 = 0; i11 < this.rssiPollDeltaCount.length; i11++) {
                    RssiPollCount rssiPollCount2 = this.rssiPollDeltaCount[i11];
                    if (rssiPollCount2 != null) {
                        codedOutputByteBufferNano.writeMessage(51, rssiPollCount2);
                    }
                }
            }
            if (this.staEventList != null && this.staEventList.length > 0) {
                for (int i12 = 0; i12 < this.staEventList.length; i12++) {
                    StaEvent staEvent = this.staEventList[i12];
                    if (staEvent != null) {
                        codedOutputByteBufferNano.writeMessage(52, staEvent);
                    }
                }
            }
            if (this.numHalCrashes != 0) {
                codedOutputByteBufferNano.writeInt32(53, this.numHalCrashes);
            }
            if (this.numWificondCrashes != 0) {
                codedOutputByteBufferNano.writeInt32(54, this.numWificondCrashes);
            }
            if (this.numSetupClientInterfaceFailureDueToHal != 0) {
                codedOutputByteBufferNano.writeInt32(55, this.numSetupClientInterfaceFailureDueToHal);
            }
            if (this.numSetupClientInterfaceFailureDueToWificond != 0) {
                codedOutputByteBufferNano.writeInt32(56, this.numSetupClientInterfaceFailureDueToWificond);
            }
            if (this.wifiAwareLog != null) {
                codedOutputByteBufferNano.writeMessage(57, this.wifiAwareLog);
            }
            if (this.numPasspointProviders != 0) {
                codedOutputByteBufferNano.writeInt32(58, this.numPasspointProviders);
            }
            if (this.numPasspointProviderInstallation != 0) {
                codedOutputByteBufferNano.writeInt32(59, this.numPasspointProviderInstallation);
            }
            if (this.numPasspointProviderInstallSuccess != 0) {
                codedOutputByteBufferNano.writeInt32(60, this.numPasspointProviderInstallSuccess);
            }
            if (this.numPasspointProviderUninstallation != 0) {
                codedOutputByteBufferNano.writeInt32(61, this.numPasspointProviderUninstallation);
            }
            if (this.numPasspointProviderUninstallSuccess != 0) {
                codedOutputByteBufferNano.writeInt32(62, this.numPasspointProviderUninstallSuccess);
            }
            if (this.numPasspointProvidersSuccessfullyConnected != 0) {
                codedOutputByteBufferNano.writeInt32(63, this.numPasspointProvidersSuccessfullyConnected);
            }
            if (this.totalSsidsInScanHistogram != null && this.totalSsidsInScanHistogram.length > 0) {
                for (int i13 = 0; i13 < this.totalSsidsInScanHistogram.length; i13++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket = this.totalSsidsInScanHistogram[i13];
                    if (numConnectableNetworksBucket != null) {
                        codedOutputByteBufferNano.writeMessage(64, numConnectableNetworksBucket);
                    }
                }
            }
            if (this.totalBssidsInScanHistogram != null && this.totalBssidsInScanHistogram.length > 0) {
                for (int i14 = 0; i14 < this.totalBssidsInScanHistogram.length; i14++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket2 = this.totalBssidsInScanHistogram[i14];
                    if (numConnectableNetworksBucket2 != null) {
                        codedOutputByteBufferNano.writeMessage(65, numConnectableNetworksBucket2);
                    }
                }
            }
            if (this.availableOpenSsidsInScanHistogram != null && this.availableOpenSsidsInScanHistogram.length > 0) {
                for (int i15 = 0; i15 < this.availableOpenSsidsInScanHistogram.length; i15++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket3 = this.availableOpenSsidsInScanHistogram[i15];
                    if (numConnectableNetworksBucket3 != null) {
                        codedOutputByteBufferNano.writeMessage(66, numConnectableNetworksBucket3);
                    }
                }
            }
            if (this.availableOpenBssidsInScanHistogram != null && this.availableOpenBssidsInScanHistogram.length > 0) {
                for (int i16 = 0; i16 < this.availableOpenBssidsInScanHistogram.length; i16++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket4 = this.availableOpenBssidsInScanHistogram[i16];
                    if (numConnectableNetworksBucket4 != null) {
                        codedOutputByteBufferNano.writeMessage(67, numConnectableNetworksBucket4);
                    }
                }
            }
            if (this.availableSavedSsidsInScanHistogram != null && this.availableSavedSsidsInScanHistogram.length > 0) {
                for (int i17 = 0; i17 < this.availableSavedSsidsInScanHistogram.length; i17++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket5 = this.availableSavedSsidsInScanHistogram[i17];
                    if (numConnectableNetworksBucket5 != null) {
                        codedOutputByteBufferNano.writeMessage(68, numConnectableNetworksBucket5);
                    }
                }
            }
            if (this.availableSavedBssidsInScanHistogram != null && this.availableSavedBssidsInScanHistogram.length > 0) {
                for (int i18 = 0; i18 < this.availableSavedBssidsInScanHistogram.length; i18++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket6 = this.availableSavedBssidsInScanHistogram[i18];
                    if (numConnectableNetworksBucket6 != null) {
                        codedOutputByteBufferNano.writeMessage(69, numConnectableNetworksBucket6);
                    }
                }
            }
            if (this.availableOpenOrSavedSsidsInScanHistogram != null && this.availableOpenOrSavedSsidsInScanHistogram.length > 0) {
                for (int i19 = 0; i19 < this.availableOpenOrSavedSsidsInScanHistogram.length; i19++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket7 = this.availableOpenOrSavedSsidsInScanHistogram[i19];
                    if (numConnectableNetworksBucket7 != null) {
                        codedOutputByteBufferNano.writeMessage(70, numConnectableNetworksBucket7);
                    }
                }
            }
            if (this.availableOpenOrSavedBssidsInScanHistogram != null && this.availableOpenOrSavedBssidsInScanHistogram.length > 0) {
                for (int i20 = 0; i20 < this.availableOpenOrSavedBssidsInScanHistogram.length; i20++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket8 = this.availableOpenOrSavedBssidsInScanHistogram[i20];
                    if (numConnectableNetworksBucket8 != null) {
                        codedOutputByteBufferNano.writeMessage(71, numConnectableNetworksBucket8);
                    }
                }
            }
            if (this.availableSavedPasspointProviderProfilesInScanHistogram != null && this.availableSavedPasspointProviderProfilesInScanHistogram.length > 0) {
                for (int i21 = 0; i21 < this.availableSavedPasspointProviderProfilesInScanHistogram.length; i21++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket9 = this.availableSavedPasspointProviderProfilesInScanHistogram[i21];
                    if (numConnectableNetworksBucket9 != null) {
                        codedOutputByteBufferNano.writeMessage(72, numConnectableNetworksBucket9);
                    }
                }
            }
            if (this.availableSavedPasspointProviderBssidsInScanHistogram != null && this.availableSavedPasspointProviderBssidsInScanHistogram.length > 0) {
                for (int i22 = 0; i22 < this.availableSavedPasspointProviderBssidsInScanHistogram.length; i22++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket10 = this.availableSavedPasspointProviderBssidsInScanHistogram[i22];
                    if (numConnectableNetworksBucket10 != null) {
                        codedOutputByteBufferNano.writeMessage(73, numConnectableNetworksBucket10);
                    }
                }
            }
            if (this.fullBandAllSingleScanListenerResults != 0) {
                codedOutputByteBufferNano.writeInt32(74, this.fullBandAllSingleScanListenerResults);
            }
            if (this.partialAllSingleScanListenerResults != 0) {
                codedOutputByteBufferNano.writeInt32(75, this.partialAllSingleScanListenerResults);
            }
            if (this.pnoScanMetrics != null) {
                codedOutputByteBufferNano.writeMessage(76, this.pnoScanMetrics);
            }
            if (this.connectToNetworkNotificationCount != null && this.connectToNetworkNotificationCount.length > 0) {
                for (int i23 = 0; i23 < this.connectToNetworkNotificationCount.length; i23++) {
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount = this.connectToNetworkNotificationCount[i23];
                    if (connectToNetworkNotificationAndActionCount != null) {
                        codedOutputByteBufferNano.writeMessage(77, connectToNetworkNotificationAndActionCount);
                    }
                }
            }
            if (this.connectToNetworkNotificationActionCount != null && this.connectToNetworkNotificationActionCount.length > 0) {
                for (int i24 = 0; i24 < this.connectToNetworkNotificationActionCount.length; i24++) {
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount2 = this.connectToNetworkNotificationActionCount[i24];
                    if (connectToNetworkNotificationAndActionCount2 != null) {
                        codedOutputByteBufferNano.writeMessage(78, connectToNetworkNotificationAndActionCount2);
                    }
                }
            }
            if (this.openNetworkRecommenderBlacklistSize != 0) {
                codedOutputByteBufferNano.writeInt32(79, this.openNetworkRecommenderBlacklistSize);
            }
            if (this.isWifiNetworksAvailableNotificationOn) {
                codedOutputByteBufferNano.writeBool(80, this.isWifiNetworksAvailableNotificationOn);
            }
            if (this.numOpenNetworkRecommendationUpdates != 0) {
                codedOutputByteBufferNano.writeInt32(81, this.numOpenNetworkRecommendationUpdates);
            }
            if (this.numOpenNetworkConnectMessageFailedToSend != 0) {
                codedOutputByteBufferNano.writeInt32(82, this.numOpenNetworkConnectMessageFailedToSend);
            }
            if (this.observedHotspotR1ApsInScanHistogram != null && this.observedHotspotR1ApsInScanHistogram.length > 0) {
                for (int i25 = 0; i25 < this.observedHotspotR1ApsInScanHistogram.length; i25++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket11 = this.observedHotspotR1ApsInScanHistogram[i25];
                    if (numConnectableNetworksBucket11 != null) {
                        codedOutputByteBufferNano.writeMessage(83, numConnectableNetworksBucket11);
                    }
                }
            }
            if (this.observedHotspotR2ApsInScanHistogram != null && this.observedHotspotR2ApsInScanHistogram.length > 0) {
                for (int i26 = 0; i26 < this.observedHotspotR2ApsInScanHistogram.length; i26++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket12 = this.observedHotspotR2ApsInScanHistogram[i26];
                    if (numConnectableNetworksBucket12 != null) {
                        codedOutputByteBufferNano.writeMessage(84, numConnectableNetworksBucket12);
                    }
                }
            }
            if (this.observedHotspotR1EssInScanHistogram != null && this.observedHotspotR1EssInScanHistogram.length > 0) {
                for (int i27 = 0; i27 < this.observedHotspotR1EssInScanHistogram.length; i27++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket13 = this.observedHotspotR1EssInScanHistogram[i27];
                    if (numConnectableNetworksBucket13 != null) {
                        codedOutputByteBufferNano.writeMessage(85, numConnectableNetworksBucket13);
                    }
                }
            }
            if (this.observedHotspotR2EssInScanHistogram != null && this.observedHotspotR2EssInScanHistogram.length > 0) {
                for (int i28 = 0; i28 < this.observedHotspotR2EssInScanHistogram.length; i28++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket14 = this.observedHotspotR2EssInScanHistogram[i28];
                    if (numConnectableNetworksBucket14 != null) {
                        codedOutputByteBufferNano.writeMessage(86, numConnectableNetworksBucket14);
                    }
                }
            }
            if (this.observedHotspotR1ApsPerEssInScanHistogram != null && this.observedHotspotR1ApsPerEssInScanHistogram.length > 0) {
                for (int i29 = 0; i29 < this.observedHotspotR1ApsPerEssInScanHistogram.length; i29++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket15 = this.observedHotspotR1ApsPerEssInScanHistogram[i29];
                    if (numConnectableNetworksBucket15 != null) {
                        codedOutputByteBufferNano.writeMessage(87, numConnectableNetworksBucket15);
                    }
                }
            }
            if (this.observedHotspotR2ApsPerEssInScanHistogram != null && this.observedHotspotR2ApsPerEssInScanHistogram.length > 0) {
                for (int i30 = 0; i30 < this.observedHotspotR2ApsPerEssInScanHistogram.length; i30++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket16 = this.observedHotspotR2ApsPerEssInScanHistogram[i30];
                    if (numConnectableNetworksBucket16 != null) {
                        codedOutputByteBufferNano.writeMessage(88, numConnectableNetworksBucket16);
                    }
                }
            }
            if (this.softApConnectedClientsEventsTethered != null && this.softApConnectedClientsEventsTethered.length > 0) {
                for (int i31 = 0; i31 < this.softApConnectedClientsEventsTethered.length; i31++) {
                    SoftApConnectedClientsEvent softApConnectedClientsEvent = this.softApConnectedClientsEventsTethered[i31];
                    if (softApConnectedClientsEvent != null) {
                        codedOutputByteBufferNano.writeMessage(89, softApConnectedClientsEvent);
                    }
                }
            }
            if (this.softApConnectedClientsEventsLocalOnly != null && this.softApConnectedClientsEventsLocalOnly.length > 0) {
                for (int i32 = 0; i32 < this.softApConnectedClientsEventsLocalOnly.length; i32++) {
                    SoftApConnectedClientsEvent softApConnectedClientsEvent2 = this.softApConnectedClientsEventsLocalOnly[i32];
                    if (softApConnectedClientsEvent2 != null) {
                        codedOutputByteBufferNano.writeMessage(90, softApConnectedClientsEvent2);
                    }
                }
            }
            if (this.wpsMetrics != null) {
                codedOutputByteBufferNano.writeMessage(91, this.wpsMetrics);
            }
            if (this.wifiPowerStats != null) {
                codedOutputByteBufferNano.writeMessage(92, this.wifiPowerStats);
            }
            if (this.numConnectivityOneshotScans != 0) {
                codedOutputByteBufferNano.writeInt32(93, this.numConnectivityOneshotScans);
            }
            if (this.wifiWakeStats != null) {
                codedOutputByteBufferNano.writeMessage(94, this.wifiWakeStats);
            }
            if (this.observed80211McSupportingApsInScanHistogram != null && this.observed80211McSupportingApsInScanHistogram.length > 0) {
                for (int i33 = 0; i33 < this.observed80211McSupportingApsInScanHistogram.length; i33++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket17 = this.observed80211McSupportingApsInScanHistogram[i33];
                    if (numConnectableNetworksBucket17 != null) {
                        codedOutputByteBufferNano.writeMessage(95, numConnectableNetworksBucket17);
                    }
                }
            }
            if (this.numSupplicantCrashes != 0) {
                codedOutputByteBufferNano.writeInt32(96, this.numSupplicantCrashes);
            }
            if (this.numHostapdCrashes != 0) {
                codedOutputByteBufferNano.writeInt32(97, this.numHostapdCrashes);
            }
            if (this.numSetupClientInterfaceFailureDueToSupplicant != 0) {
                codedOutputByteBufferNano.writeInt32(98, this.numSetupClientInterfaceFailureDueToSupplicant);
            }
            if (this.numSetupSoftApInterfaceFailureDueToHal != 0) {
                codedOutputByteBufferNano.writeInt32(99, this.numSetupSoftApInterfaceFailureDueToHal);
            }
            if (this.numSetupSoftApInterfaceFailureDueToWificond != 0) {
                codedOutputByteBufferNano.writeInt32(100, this.numSetupSoftApInterfaceFailureDueToWificond);
            }
            if (this.numSetupSoftApInterfaceFailureDueToHostapd != 0) {
                codedOutputByteBufferNano.writeInt32(101, this.numSetupSoftApInterfaceFailureDueToHostapd);
            }
            if (this.numClientInterfaceDown != 0) {
                codedOutputByteBufferNano.writeInt32(102, this.numClientInterfaceDown);
            }
            if (this.numSoftApInterfaceDown != 0) {
                codedOutputByteBufferNano.writeInt32(103, this.numSoftApInterfaceDown);
            }
            if (this.numExternalAppOneshotScanRequests != 0) {
                codedOutputByteBufferNano.writeInt32(104, this.numExternalAppOneshotScanRequests);
            }
            if (this.numExternalForegroundAppOneshotScanRequestsThrottled != 0) {
                codedOutputByteBufferNano.writeInt32(105, this.numExternalForegroundAppOneshotScanRequestsThrottled);
            }
            if (this.numExternalBackgroundAppOneshotScanRequestsThrottled != 0) {
                codedOutputByteBufferNano.writeInt32(106, this.numExternalBackgroundAppOneshotScanRequestsThrottled);
            }
            if (this.watchdogTriggerToConnectionSuccessDurationMs != -1) {
                codedOutputByteBufferNano.writeInt64(107, this.watchdogTriggerToConnectionSuccessDurationMs);
            }
            if (this.watchdogTotalConnectionFailureCountAfterTrigger != 0) {
                codedOutputByteBufferNano.writeInt64(108, this.watchdogTotalConnectionFailureCountAfterTrigger);
            }
            if (this.numOneshotHasDfsChannelScans != 0) {
                codedOutputByteBufferNano.writeInt32(109, this.numOneshotHasDfsChannelScans);
            }
            if (this.wifiRttLog != null) {
                codedOutputByteBufferNano.writeMessage(110, this.wifiRttLog);
            }
            if (this.isMacRandomizationOn) {
                codedOutputByteBufferNano.writeBool(111, this.isMacRandomizationOn);
            }
            if (this.numRadioModeChangeToMcc != 0) {
                codedOutputByteBufferNano.writeInt32(112, this.numRadioModeChangeToMcc);
            }
            if (this.numRadioModeChangeToScc != 0) {
                codedOutputByteBufferNano.writeInt32(113, this.numRadioModeChangeToScc);
            }
            if (this.numRadioModeChangeToSbs != 0) {
                codedOutputByteBufferNano.writeInt32(114, this.numRadioModeChangeToSbs);
            }
            if (this.numRadioModeChangeToDbs != 0) {
                codedOutputByteBufferNano.writeInt32(115, this.numRadioModeChangeToDbs);
            }
            if (this.numSoftApUserBandPreferenceUnsatisfied != 0) {
                codedOutputByteBufferNano.writeInt32(116, this.numSoftApUserBandPreferenceUnsatisfied);
            }
            if (!this.scoreExperimentId.equals("")) {
                codedOutputByteBufferNano.writeString(117, this.scoreExperimentId);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.connectionEvent != null && this.connectionEvent.length > 0) {
                int i = computeSerializedSize;
                for (int i2 = 0; i2 < this.connectionEvent.length; i2++) {
                    ConnectionEvent connectionEvent = this.connectionEvent[i2];
                    if (connectionEvent != null) {
                        i += CodedOutputByteBufferNano.computeMessageSize(1, connectionEvent);
                    }
                }
                computeSerializedSize = i;
            }
            if (this.numSavedNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.numSavedNetworks);
            }
            if (this.numOpenNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numOpenNetworks);
            }
            if (this.numPersonalNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.numPersonalNetworks);
            }
            if (this.numEnterpriseNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.numEnterpriseNetworks);
            }
            if (this.isLocationEnabled) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, this.isLocationEnabled);
            }
            if (this.isScanningAlwaysEnabled) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, this.isScanningAlwaysEnabled);
            }
            if (this.numWifiToggledViaSettings != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.numWifiToggledViaSettings);
            }
            if (this.numWifiToggledViaAirplane != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.numWifiToggledViaAirplane);
            }
            if (this.numNetworksAddedByUser != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, this.numNetworksAddedByUser);
            }
            if (this.numNetworksAddedByApps != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, this.numNetworksAddedByApps);
            }
            if (this.numEmptyScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(12, this.numEmptyScanResults);
            }
            if (this.numNonEmptyScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, this.numNonEmptyScanResults);
            }
            if (this.numOneshotScans != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(14, this.numOneshotScans);
            }
            if (this.numBackgroundScans != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, this.numBackgroundScans);
            }
            if (this.scanReturnEntries != null && this.scanReturnEntries.length > 0) {
                int i3 = computeSerializedSize;
                for (int i4 = 0; i4 < this.scanReturnEntries.length; i4++) {
                    ScanReturnEntry scanReturnEntry = this.scanReturnEntries[i4];
                    if (scanReturnEntry != null) {
                        i3 += CodedOutputByteBufferNano.computeMessageSize(16, scanReturnEntry);
                    }
                }
                computeSerializedSize = i3;
            }
            if (this.wifiSystemStateEntries != null && this.wifiSystemStateEntries.length > 0) {
                int i5 = computeSerializedSize;
                for (int i6 = 0; i6 < this.wifiSystemStateEntries.length; i6++) {
                    WifiSystemStateEntry wifiSystemStateEntry = this.wifiSystemStateEntries[i6];
                    if (wifiSystemStateEntry != null) {
                        i5 += CodedOutputByteBufferNano.computeMessageSize(17, wifiSystemStateEntry);
                    }
                }
                computeSerializedSize = i5;
            }
            if (this.backgroundScanReturnEntries != null && this.backgroundScanReturnEntries.length > 0) {
                int i7 = computeSerializedSize;
                for (int i8 = 0; i8 < this.backgroundScanReturnEntries.length; i8++) {
                    ScanReturnEntry scanReturnEntry2 = this.backgroundScanReturnEntries[i8];
                    if (scanReturnEntry2 != null) {
                        i7 += CodedOutputByteBufferNano.computeMessageSize(18, scanReturnEntry2);
                    }
                }
                computeSerializedSize = i7;
            }
            if (this.backgroundScanRequestState != null && this.backgroundScanRequestState.length > 0) {
                int i9 = computeSerializedSize;
                for (int i10 = 0; i10 < this.backgroundScanRequestState.length; i10++) {
                    WifiSystemStateEntry wifiSystemStateEntry2 = this.backgroundScanRequestState[i10];
                    if (wifiSystemStateEntry2 != null) {
                        i9 += CodedOutputByteBufferNano.computeMessageSize(19, wifiSystemStateEntry2);
                    }
                }
                computeSerializedSize = i9;
            }
            if (this.numLastResortWatchdogTriggers != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(20, this.numLastResortWatchdogTriggers);
            }
            if (this.numLastResortWatchdogBadAssociationNetworksTotal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(21, this.numLastResortWatchdogBadAssociationNetworksTotal);
            }
            if (this.numLastResortWatchdogBadAuthenticationNetworksTotal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(22, this.numLastResortWatchdogBadAuthenticationNetworksTotal);
            }
            if (this.numLastResortWatchdogBadDhcpNetworksTotal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(23, this.numLastResortWatchdogBadDhcpNetworksTotal);
            }
            if (this.numLastResortWatchdogBadOtherNetworksTotal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(24, this.numLastResortWatchdogBadOtherNetworksTotal);
            }
            if (this.numLastResortWatchdogAvailableNetworksTotal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(25, this.numLastResortWatchdogAvailableNetworksTotal);
            }
            if (this.numLastResortWatchdogTriggersWithBadAssociation != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(26, this.numLastResortWatchdogTriggersWithBadAssociation);
            }
            if (this.numLastResortWatchdogTriggersWithBadAuthentication != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(27, this.numLastResortWatchdogTriggersWithBadAuthentication);
            }
            if (this.numLastResortWatchdogTriggersWithBadDhcp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(28, this.numLastResortWatchdogTriggersWithBadDhcp);
            }
            if (this.numLastResortWatchdogTriggersWithBadOther != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(29, this.numLastResortWatchdogTriggersWithBadOther);
            }
            if (this.numConnectivityWatchdogPnoGood != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(30, this.numConnectivityWatchdogPnoGood);
            }
            if (this.numConnectivityWatchdogPnoBad != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(31, this.numConnectivityWatchdogPnoBad);
            }
            if (this.numConnectivityWatchdogBackgroundGood != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(32, this.numConnectivityWatchdogBackgroundGood);
            }
            if (this.numConnectivityWatchdogBackgroundBad != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(33, this.numConnectivityWatchdogBackgroundBad);
            }
            if (this.recordDurationSec != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(34, this.recordDurationSec);
            }
            if (this.rssiPollRssiCount != null && this.rssiPollRssiCount.length > 0) {
                int i11 = computeSerializedSize;
                for (int i12 = 0; i12 < this.rssiPollRssiCount.length; i12++) {
                    RssiPollCount rssiPollCount = this.rssiPollRssiCount[i12];
                    if (rssiPollCount != null) {
                        i11 += CodedOutputByteBufferNano.computeMessageSize(35, rssiPollCount);
                    }
                }
                computeSerializedSize = i11;
            }
            if (this.numLastResortWatchdogSuccesses != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(36, this.numLastResortWatchdogSuccesses);
            }
            if (this.numHiddenNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(37, this.numHiddenNetworks);
            }
            if (this.numPasspointNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(38, this.numPasspointNetworks);
            }
            if (this.numTotalScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(39, this.numTotalScanResults);
            }
            if (this.numOpenNetworkScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(40, this.numOpenNetworkScanResults);
            }
            if (this.numPersonalNetworkScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(41, this.numPersonalNetworkScanResults);
            }
            if (this.numEnterpriseNetworkScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(42, this.numEnterpriseNetworkScanResults);
            }
            if (this.numHiddenNetworkScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(43, this.numHiddenNetworkScanResults);
            }
            if (this.numHotspot2R1NetworkScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(44, this.numHotspot2R1NetworkScanResults);
            }
            if (this.numHotspot2R2NetworkScanResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(45, this.numHotspot2R2NetworkScanResults);
            }
            if (this.numScans != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(46, this.numScans);
            }
            if (this.alertReasonCount != null && this.alertReasonCount.length > 0) {
                int i13 = computeSerializedSize;
                for (int i14 = 0; i14 < this.alertReasonCount.length; i14++) {
                    AlertReasonCount alertReasonCount = this.alertReasonCount[i14];
                    if (alertReasonCount != null) {
                        i13 += CodedOutputByteBufferNano.computeMessageSize(47, alertReasonCount);
                    }
                }
                computeSerializedSize = i13;
            }
            if (this.wifiScoreCount != null && this.wifiScoreCount.length > 0) {
                int i15 = computeSerializedSize;
                for (int i16 = 0; i16 < this.wifiScoreCount.length; i16++) {
                    WifiScoreCount wifiScoreCount = this.wifiScoreCount[i16];
                    if (wifiScoreCount != null) {
                        i15 += CodedOutputByteBufferNano.computeMessageSize(48, wifiScoreCount);
                    }
                }
                computeSerializedSize = i15;
            }
            if (this.softApDuration != null && this.softApDuration.length > 0) {
                int i17 = computeSerializedSize;
                for (int i18 = 0; i18 < this.softApDuration.length; i18++) {
                    SoftApDurationBucket softApDurationBucket = this.softApDuration[i18];
                    if (softApDurationBucket != null) {
                        i17 += CodedOutputByteBufferNano.computeMessageSize(49, softApDurationBucket);
                    }
                }
                computeSerializedSize = i17;
            }
            if (this.softApReturnCode != null && this.softApReturnCode.length > 0) {
                int i19 = computeSerializedSize;
                for (int i20 = 0; i20 < this.softApReturnCode.length; i20++) {
                    SoftApReturnCodeCount softApReturnCodeCount = this.softApReturnCode[i20];
                    if (softApReturnCodeCount != null) {
                        i19 += CodedOutputByteBufferNano.computeMessageSize(50, softApReturnCodeCount);
                    }
                }
                computeSerializedSize = i19;
            }
            if (this.rssiPollDeltaCount != null && this.rssiPollDeltaCount.length > 0) {
                int i21 = computeSerializedSize;
                for (int i22 = 0; i22 < this.rssiPollDeltaCount.length; i22++) {
                    RssiPollCount rssiPollCount2 = this.rssiPollDeltaCount[i22];
                    if (rssiPollCount2 != null) {
                        i21 += CodedOutputByteBufferNano.computeMessageSize(51, rssiPollCount2);
                    }
                }
                computeSerializedSize = i21;
            }
            if (this.staEventList != null && this.staEventList.length > 0) {
                int i23 = computeSerializedSize;
                for (int i24 = 0; i24 < this.staEventList.length; i24++) {
                    StaEvent staEvent = this.staEventList[i24];
                    if (staEvent != null) {
                        i23 += CodedOutputByteBufferNano.computeMessageSize(52, staEvent);
                    }
                }
                computeSerializedSize = i23;
            }
            if (this.numHalCrashes != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(53, this.numHalCrashes);
            }
            if (this.numWificondCrashes != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(54, this.numWificondCrashes);
            }
            if (this.numSetupClientInterfaceFailureDueToHal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(55, this.numSetupClientInterfaceFailureDueToHal);
            }
            if (this.numSetupClientInterfaceFailureDueToWificond != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(56, this.numSetupClientInterfaceFailureDueToWificond);
            }
            if (this.wifiAwareLog != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(57, this.wifiAwareLog);
            }
            if (this.numPasspointProviders != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(58, this.numPasspointProviders);
            }
            if (this.numPasspointProviderInstallation != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(59, this.numPasspointProviderInstallation);
            }
            if (this.numPasspointProviderInstallSuccess != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(60, this.numPasspointProviderInstallSuccess);
            }
            if (this.numPasspointProviderUninstallation != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(61, this.numPasspointProviderUninstallation);
            }
            if (this.numPasspointProviderUninstallSuccess != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(62, this.numPasspointProviderUninstallSuccess);
            }
            if (this.numPasspointProvidersSuccessfullyConnected != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(63, this.numPasspointProvidersSuccessfullyConnected);
            }
            if (this.totalSsidsInScanHistogram != null && this.totalSsidsInScanHistogram.length > 0) {
                int i25 = computeSerializedSize;
                for (int i26 = 0; i26 < this.totalSsidsInScanHistogram.length; i26++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket = this.totalSsidsInScanHistogram[i26];
                    if (numConnectableNetworksBucket != null) {
                        i25 += CodedOutputByteBufferNano.computeMessageSize(64, numConnectableNetworksBucket);
                    }
                }
                computeSerializedSize = i25;
            }
            if (this.totalBssidsInScanHistogram != null && this.totalBssidsInScanHistogram.length > 0) {
                int i27 = computeSerializedSize;
                for (int i28 = 0; i28 < this.totalBssidsInScanHistogram.length; i28++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket2 = this.totalBssidsInScanHistogram[i28];
                    if (numConnectableNetworksBucket2 != null) {
                        i27 += CodedOutputByteBufferNano.computeMessageSize(65, numConnectableNetworksBucket2);
                    }
                }
                computeSerializedSize = i27;
            }
            if (this.availableOpenSsidsInScanHistogram != null && this.availableOpenSsidsInScanHistogram.length > 0) {
                int i29 = computeSerializedSize;
                for (int i30 = 0; i30 < this.availableOpenSsidsInScanHistogram.length; i30++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket3 = this.availableOpenSsidsInScanHistogram[i30];
                    if (numConnectableNetworksBucket3 != null) {
                        i29 += CodedOutputByteBufferNano.computeMessageSize(66, numConnectableNetworksBucket3);
                    }
                }
                computeSerializedSize = i29;
            }
            if (this.availableOpenBssidsInScanHistogram != null && this.availableOpenBssidsInScanHistogram.length > 0) {
                int i31 = computeSerializedSize;
                for (int i32 = 0; i32 < this.availableOpenBssidsInScanHistogram.length; i32++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket4 = this.availableOpenBssidsInScanHistogram[i32];
                    if (numConnectableNetworksBucket4 != null) {
                        i31 += CodedOutputByteBufferNano.computeMessageSize(67, numConnectableNetworksBucket4);
                    }
                }
                computeSerializedSize = i31;
            }
            if (this.availableSavedSsidsInScanHistogram != null && this.availableSavedSsidsInScanHistogram.length > 0) {
                int i33 = computeSerializedSize;
                for (int i34 = 0; i34 < this.availableSavedSsidsInScanHistogram.length; i34++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket5 = this.availableSavedSsidsInScanHistogram[i34];
                    if (numConnectableNetworksBucket5 != null) {
                        i33 += CodedOutputByteBufferNano.computeMessageSize(68, numConnectableNetworksBucket5);
                    }
                }
                computeSerializedSize = i33;
            }
            if (this.availableSavedBssidsInScanHistogram != null && this.availableSavedBssidsInScanHistogram.length > 0) {
                int i35 = computeSerializedSize;
                for (int i36 = 0; i36 < this.availableSavedBssidsInScanHistogram.length; i36++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket6 = this.availableSavedBssidsInScanHistogram[i36];
                    if (numConnectableNetworksBucket6 != null) {
                        i35 += CodedOutputByteBufferNano.computeMessageSize(69, numConnectableNetworksBucket6);
                    }
                }
                computeSerializedSize = i35;
            }
            if (this.availableOpenOrSavedSsidsInScanHistogram != null && this.availableOpenOrSavedSsidsInScanHistogram.length > 0) {
                int i37 = computeSerializedSize;
                for (int i38 = 0; i38 < this.availableOpenOrSavedSsidsInScanHistogram.length; i38++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket7 = this.availableOpenOrSavedSsidsInScanHistogram[i38];
                    if (numConnectableNetworksBucket7 != null) {
                        i37 += CodedOutputByteBufferNano.computeMessageSize(70, numConnectableNetworksBucket7);
                    }
                }
                computeSerializedSize = i37;
            }
            if (this.availableOpenOrSavedBssidsInScanHistogram != null && this.availableOpenOrSavedBssidsInScanHistogram.length > 0) {
                int i39 = computeSerializedSize;
                for (int i40 = 0; i40 < this.availableOpenOrSavedBssidsInScanHistogram.length; i40++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket8 = this.availableOpenOrSavedBssidsInScanHistogram[i40];
                    if (numConnectableNetworksBucket8 != null) {
                        i39 += CodedOutputByteBufferNano.computeMessageSize(71, numConnectableNetworksBucket8);
                    }
                }
                computeSerializedSize = i39;
            }
            if (this.availableSavedPasspointProviderProfilesInScanHistogram != null && this.availableSavedPasspointProviderProfilesInScanHistogram.length > 0) {
                int i41 = computeSerializedSize;
                for (int i42 = 0; i42 < this.availableSavedPasspointProviderProfilesInScanHistogram.length; i42++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket9 = this.availableSavedPasspointProviderProfilesInScanHistogram[i42];
                    if (numConnectableNetworksBucket9 != null) {
                        i41 += CodedOutputByteBufferNano.computeMessageSize(72, numConnectableNetworksBucket9);
                    }
                }
                computeSerializedSize = i41;
            }
            if (this.availableSavedPasspointProviderBssidsInScanHistogram != null && this.availableSavedPasspointProviderBssidsInScanHistogram.length > 0) {
                int i43 = computeSerializedSize;
                for (int i44 = 0; i44 < this.availableSavedPasspointProviderBssidsInScanHistogram.length; i44++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket10 = this.availableSavedPasspointProviderBssidsInScanHistogram[i44];
                    if (numConnectableNetworksBucket10 != null) {
                        i43 += CodedOutputByteBufferNano.computeMessageSize(73, numConnectableNetworksBucket10);
                    }
                }
                computeSerializedSize = i43;
            }
            if (this.fullBandAllSingleScanListenerResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(74, this.fullBandAllSingleScanListenerResults);
            }
            if (this.partialAllSingleScanListenerResults != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(75, this.partialAllSingleScanListenerResults);
            }
            if (this.pnoScanMetrics != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(76, this.pnoScanMetrics);
            }
            if (this.connectToNetworkNotificationCount != null && this.connectToNetworkNotificationCount.length > 0) {
                int i45 = computeSerializedSize;
                for (int i46 = 0; i46 < this.connectToNetworkNotificationCount.length; i46++) {
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount = this.connectToNetworkNotificationCount[i46];
                    if (connectToNetworkNotificationAndActionCount != null) {
                        i45 += CodedOutputByteBufferNano.computeMessageSize(77, connectToNetworkNotificationAndActionCount);
                    }
                }
                computeSerializedSize = i45;
            }
            if (this.connectToNetworkNotificationActionCount != null && this.connectToNetworkNotificationActionCount.length > 0) {
                int i47 = computeSerializedSize;
                for (int i48 = 0; i48 < this.connectToNetworkNotificationActionCount.length; i48++) {
                    ConnectToNetworkNotificationAndActionCount connectToNetworkNotificationAndActionCount2 = this.connectToNetworkNotificationActionCount[i48];
                    if (connectToNetworkNotificationAndActionCount2 != null) {
                        i47 += CodedOutputByteBufferNano.computeMessageSize(78, connectToNetworkNotificationAndActionCount2);
                    }
                }
                computeSerializedSize = i47;
            }
            if (this.openNetworkRecommenderBlacklistSize != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(79, this.openNetworkRecommenderBlacklistSize);
            }
            if (this.isWifiNetworksAvailableNotificationOn) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(80, this.isWifiNetworksAvailableNotificationOn);
            }
            if (this.numOpenNetworkRecommendationUpdates != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(81, this.numOpenNetworkRecommendationUpdates);
            }
            if (this.numOpenNetworkConnectMessageFailedToSend != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(82, this.numOpenNetworkConnectMessageFailedToSend);
            }
            if (this.observedHotspotR1ApsInScanHistogram != null && this.observedHotspotR1ApsInScanHistogram.length > 0) {
                int i49 = computeSerializedSize;
                for (int i50 = 0; i50 < this.observedHotspotR1ApsInScanHistogram.length; i50++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket11 = this.observedHotspotR1ApsInScanHistogram[i50];
                    if (numConnectableNetworksBucket11 != null) {
                        i49 += CodedOutputByteBufferNano.computeMessageSize(83, numConnectableNetworksBucket11);
                    }
                }
                computeSerializedSize = i49;
            }
            if (this.observedHotspotR2ApsInScanHistogram != null && this.observedHotspotR2ApsInScanHistogram.length > 0) {
                int i51 = computeSerializedSize;
                for (int i52 = 0; i52 < this.observedHotspotR2ApsInScanHistogram.length; i52++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket12 = this.observedHotspotR2ApsInScanHistogram[i52];
                    if (numConnectableNetworksBucket12 != null) {
                        i51 += CodedOutputByteBufferNano.computeMessageSize(84, numConnectableNetworksBucket12);
                    }
                }
                computeSerializedSize = i51;
            }
            if (this.observedHotspotR1EssInScanHistogram != null && this.observedHotspotR1EssInScanHistogram.length > 0) {
                int i53 = computeSerializedSize;
                for (int i54 = 0; i54 < this.observedHotspotR1EssInScanHistogram.length; i54++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket13 = this.observedHotspotR1EssInScanHistogram[i54];
                    if (numConnectableNetworksBucket13 != null) {
                        i53 += CodedOutputByteBufferNano.computeMessageSize(85, numConnectableNetworksBucket13);
                    }
                }
                computeSerializedSize = i53;
            }
            if (this.observedHotspotR2EssInScanHistogram != null && this.observedHotspotR2EssInScanHistogram.length > 0) {
                int i55 = computeSerializedSize;
                for (int i56 = 0; i56 < this.observedHotspotR2EssInScanHistogram.length; i56++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket14 = this.observedHotspotR2EssInScanHistogram[i56];
                    if (numConnectableNetworksBucket14 != null) {
                        i55 += CodedOutputByteBufferNano.computeMessageSize(86, numConnectableNetworksBucket14);
                    }
                }
                computeSerializedSize = i55;
            }
            if (this.observedHotspotR1ApsPerEssInScanHistogram != null && this.observedHotspotR1ApsPerEssInScanHistogram.length > 0) {
                int i57 = computeSerializedSize;
                for (int i58 = 0; i58 < this.observedHotspotR1ApsPerEssInScanHistogram.length; i58++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket15 = this.observedHotspotR1ApsPerEssInScanHistogram[i58];
                    if (numConnectableNetworksBucket15 != null) {
                        i57 += CodedOutputByteBufferNano.computeMessageSize(87, numConnectableNetworksBucket15);
                    }
                }
                computeSerializedSize = i57;
            }
            if (this.observedHotspotR2ApsPerEssInScanHistogram != null && this.observedHotspotR2ApsPerEssInScanHistogram.length > 0) {
                int i59 = computeSerializedSize;
                for (int i60 = 0; i60 < this.observedHotspotR2ApsPerEssInScanHistogram.length; i60++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket16 = this.observedHotspotR2ApsPerEssInScanHistogram[i60];
                    if (numConnectableNetworksBucket16 != null) {
                        i59 += CodedOutputByteBufferNano.computeMessageSize(88, numConnectableNetworksBucket16);
                    }
                }
                computeSerializedSize = i59;
            }
            if (this.softApConnectedClientsEventsTethered != null && this.softApConnectedClientsEventsTethered.length > 0) {
                int i61 = computeSerializedSize;
                for (int i62 = 0; i62 < this.softApConnectedClientsEventsTethered.length; i62++) {
                    SoftApConnectedClientsEvent softApConnectedClientsEvent = this.softApConnectedClientsEventsTethered[i62];
                    if (softApConnectedClientsEvent != null) {
                        i61 += CodedOutputByteBufferNano.computeMessageSize(89, softApConnectedClientsEvent);
                    }
                }
                computeSerializedSize = i61;
            }
            if (this.softApConnectedClientsEventsLocalOnly != null && this.softApConnectedClientsEventsLocalOnly.length > 0) {
                int i63 = computeSerializedSize;
                for (int i64 = 0; i64 < this.softApConnectedClientsEventsLocalOnly.length; i64++) {
                    SoftApConnectedClientsEvent softApConnectedClientsEvent2 = this.softApConnectedClientsEventsLocalOnly[i64];
                    if (softApConnectedClientsEvent2 != null) {
                        i63 += CodedOutputByteBufferNano.computeMessageSize(90, softApConnectedClientsEvent2);
                    }
                }
                computeSerializedSize = i63;
            }
            if (this.wpsMetrics != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(91, this.wpsMetrics);
            }
            if (this.wifiPowerStats != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(92, this.wifiPowerStats);
            }
            if (this.numConnectivityOneshotScans != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(93, this.numConnectivityOneshotScans);
            }
            if (this.wifiWakeStats != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(94, this.wifiWakeStats);
            }
            if (this.observed80211McSupportingApsInScanHistogram != null && this.observed80211McSupportingApsInScanHistogram.length > 0) {
                for (int i65 = 0; i65 < this.observed80211McSupportingApsInScanHistogram.length; i65++) {
                    NumConnectableNetworksBucket numConnectableNetworksBucket17 = this.observed80211McSupportingApsInScanHistogram[i65];
                    if (numConnectableNetworksBucket17 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(95, numConnectableNetworksBucket17);
                    }
                }
            }
            if (this.numSupplicantCrashes != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(96, this.numSupplicantCrashes);
            }
            if (this.numHostapdCrashes != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(97, this.numHostapdCrashes);
            }
            if (this.numSetupClientInterfaceFailureDueToSupplicant != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(98, this.numSetupClientInterfaceFailureDueToSupplicant);
            }
            if (this.numSetupSoftApInterfaceFailureDueToHal != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(99, this.numSetupSoftApInterfaceFailureDueToHal);
            }
            if (this.numSetupSoftApInterfaceFailureDueToWificond != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(100, this.numSetupSoftApInterfaceFailureDueToWificond);
            }
            if (this.numSetupSoftApInterfaceFailureDueToHostapd != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(101, this.numSetupSoftApInterfaceFailureDueToHostapd);
            }
            if (this.numClientInterfaceDown != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(102, this.numClientInterfaceDown);
            }
            if (this.numSoftApInterfaceDown != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(103, this.numSoftApInterfaceDown);
            }
            if (this.numExternalAppOneshotScanRequests != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(104, this.numExternalAppOneshotScanRequests);
            }
            if (this.numExternalForegroundAppOneshotScanRequestsThrottled != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(105, this.numExternalForegroundAppOneshotScanRequestsThrottled);
            }
            if (this.numExternalBackgroundAppOneshotScanRequestsThrottled != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(106, this.numExternalBackgroundAppOneshotScanRequestsThrottled);
            }
            if (this.watchdogTriggerToConnectionSuccessDurationMs != -1) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(107, this.watchdogTriggerToConnectionSuccessDurationMs);
            }
            if (this.watchdogTotalConnectionFailureCountAfterTrigger != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(108, this.watchdogTotalConnectionFailureCountAfterTrigger);
            }
            if (this.numOneshotHasDfsChannelScans != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(109, this.numOneshotHasDfsChannelScans);
            }
            if (this.wifiRttLog != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(110, this.wifiRttLog);
            }
            if (this.isMacRandomizationOn) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(111, this.isMacRandomizationOn);
            }
            if (this.numRadioModeChangeToMcc != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(112, this.numRadioModeChangeToMcc);
            }
            if (this.numRadioModeChangeToScc != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(113, this.numRadioModeChangeToScc);
            }
            if (this.numRadioModeChangeToSbs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(114, this.numRadioModeChangeToSbs);
            }
            if (this.numRadioModeChangeToDbs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(115, this.numRadioModeChangeToDbs);
            }
            if (this.numSoftApUserBandPreferenceUnsatisfied != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(116, this.numSoftApUserBandPreferenceUnsatisfied);
            }
            return !this.scoreExperimentId.equals("") ? computeSerializedSize + CodedOutputByteBufferNano.computeStringSize(117, this.scoreExperimentId) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 10:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                        int length = this.connectionEvent == null ? 0 : this.connectionEvent.length;
                        ConnectionEvent[] connectionEventArr = new ConnectionEvent[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.connectionEvent, 0, connectionEventArr, 0, length);
                        }
                        while (length < connectionEventArr.length - 1) {
                            connectionEventArr[length] = new ConnectionEvent();
                            codedInputByteBufferNano.readMessage(connectionEventArr[length]);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        connectionEventArr[length] = new ConnectionEvent();
                        codedInputByteBufferNano.readMessage(connectionEventArr[length]);
                        this.connectionEvent = connectionEventArr;
                        break;
                    case 16:
                        this.numSavedNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.numOpenNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 32:
                        this.numPersonalNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 40:
                        this.numEnterpriseNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.isLocationEnabled = codedInputByteBufferNano.readBool();
                        break;
                    case 56:
                        this.isScanningAlwaysEnabled = codedInputByteBufferNano.readBool();
                        break;
                    case 64:
                        this.numWifiToggledViaSettings = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.numWifiToggledViaAirplane = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        this.numNetworksAddedByUser = codedInputByteBufferNano.readInt32();
                        break;
                    case 88:
                        this.numNetworksAddedByApps = codedInputByteBufferNano.readInt32();
                        break;
                    case 96:
                        this.numEmptyScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 104:
                        this.numNonEmptyScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 112:
                        this.numOneshotScans = codedInputByteBufferNano.readInt32();
                        break;
                    case 120:
                        this.numBackgroundScans = codedInputByteBufferNano.readInt32();
                        break;
                    case 130:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 130);
                        int length2 = this.scanReturnEntries == null ? 0 : this.scanReturnEntries.length;
                        ScanReturnEntry[] scanReturnEntryArr = new ScanReturnEntry[repeatedFieldArrayLength2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.scanReturnEntries, 0, scanReturnEntryArr, 0, length2);
                        }
                        while (length2 < scanReturnEntryArr.length - 1) {
                            scanReturnEntryArr[length2] = new ScanReturnEntry();
                            codedInputByteBufferNano.readMessage(scanReturnEntryArr[length2]);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        scanReturnEntryArr[length2] = new ScanReturnEntry();
                        codedInputByteBufferNano.readMessage(scanReturnEntryArr[length2]);
                        this.scanReturnEntries = scanReturnEntryArr;
                        break;
                    case 138:
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 138);
                        int length3 = this.wifiSystemStateEntries == null ? 0 : this.wifiSystemStateEntries.length;
                        WifiSystemStateEntry[] wifiSystemStateEntryArr = new WifiSystemStateEntry[repeatedFieldArrayLength3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.wifiSystemStateEntries, 0, wifiSystemStateEntryArr, 0, length3);
                        }
                        while (length3 < wifiSystemStateEntryArr.length - 1) {
                            wifiSystemStateEntryArr[length3] = new WifiSystemStateEntry();
                            codedInputByteBufferNano.readMessage(wifiSystemStateEntryArr[length3]);
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        wifiSystemStateEntryArr[length3] = new WifiSystemStateEntry();
                        codedInputByteBufferNano.readMessage(wifiSystemStateEntryArr[length3]);
                        this.wifiSystemStateEntries = wifiSystemStateEntryArr;
                        break;
                    case 146:
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 146);
                        int length4 = this.backgroundScanReturnEntries == null ? 0 : this.backgroundScanReturnEntries.length;
                        ScanReturnEntry[] scanReturnEntryArr2 = new ScanReturnEntry[repeatedFieldArrayLength4 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.backgroundScanReturnEntries, 0, scanReturnEntryArr2, 0, length4);
                        }
                        while (length4 < scanReturnEntryArr2.length - 1) {
                            scanReturnEntryArr2[length4] = new ScanReturnEntry();
                            codedInputByteBufferNano.readMessage(scanReturnEntryArr2[length4]);
                            codedInputByteBufferNano.readTag();
                            length4++;
                        }
                        scanReturnEntryArr2[length4] = new ScanReturnEntry();
                        codedInputByteBufferNano.readMessage(scanReturnEntryArr2[length4]);
                        this.backgroundScanReturnEntries = scanReturnEntryArr2;
                        break;
                    case 154:
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 154);
                        int length5 = this.backgroundScanRequestState == null ? 0 : this.backgroundScanRequestState.length;
                        WifiSystemStateEntry[] wifiSystemStateEntryArr2 = new WifiSystemStateEntry[repeatedFieldArrayLength5 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.backgroundScanRequestState, 0, wifiSystemStateEntryArr2, 0, length5);
                        }
                        while (length5 < wifiSystemStateEntryArr2.length - 1) {
                            wifiSystemStateEntryArr2[length5] = new WifiSystemStateEntry();
                            codedInputByteBufferNano.readMessage(wifiSystemStateEntryArr2[length5]);
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        wifiSystemStateEntryArr2[length5] = new WifiSystemStateEntry();
                        codedInputByteBufferNano.readMessage(wifiSystemStateEntryArr2[length5]);
                        this.backgroundScanRequestState = wifiSystemStateEntryArr2;
                        break;
                    case 160:
                        this.numLastResortWatchdogTriggers = codedInputByteBufferNano.readInt32();
                        break;
                    case 168:
                        this.numLastResortWatchdogBadAssociationNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 176:
                        this.numLastResortWatchdogBadAuthenticationNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 184:
                        this.numLastResortWatchdogBadDhcpNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 192:
                        this.numLastResortWatchdogBadOtherNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 200:
                        this.numLastResortWatchdogAvailableNetworksTotal = codedInputByteBufferNano.readInt32();
                        break;
                    case 208:
                        this.numLastResortWatchdogTriggersWithBadAssociation = codedInputByteBufferNano.readInt32();
                        break;
                    case 216:
                        this.numLastResortWatchdogTriggersWithBadAuthentication = codedInputByteBufferNano.readInt32();
                        break;
                    case 224:
                        this.numLastResortWatchdogTriggersWithBadDhcp = codedInputByteBufferNano.readInt32();
                        break;
                    case 232:
                        this.numLastResortWatchdogTriggersWithBadOther = codedInputByteBufferNano.readInt32();
                        break;
                    case 240:
                        this.numConnectivityWatchdogPnoGood = codedInputByteBufferNano.readInt32();
                        break;
                    case 248:
                        this.numConnectivityWatchdogPnoBad = codedInputByteBufferNano.readInt32();
                        break;
                    case 256:
                        this.numConnectivityWatchdogBackgroundGood = codedInputByteBufferNano.readInt32();
                        break;
                    case 264:
                        this.numConnectivityWatchdogBackgroundBad = codedInputByteBufferNano.readInt32();
                        break;
                    case 272:
                        this.recordDurationSec = codedInputByteBufferNano.readInt32();
                        break;
                    case 282:
                        int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 282);
                        int length6 = this.rssiPollRssiCount == null ? 0 : this.rssiPollRssiCount.length;
                        RssiPollCount[] rssiPollCountArr = new RssiPollCount[repeatedFieldArrayLength6 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.rssiPollRssiCount, 0, rssiPollCountArr, 0, length6);
                        }
                        while (length6 < rssiPollCountArr.length - 1) {
                            rssiPollCountArr[length6] = new RssiPollCount();
                            codedInputByteBufferNano.readMessage(rssiPollCountArr[length6]);
                            codedInputByteBufferNano.readTag();
                            length6++;
                        }
                        rssiPollCountArr[length6] = new RssiPollCount();
                        codedInputByteBufferNano.readMessage(rssiPollCountArr[length6]);
                        this.rssiPollRssiCount = rssiPollCountArr;
                        break;
                    case 288:
                        this.numLastResortWatchdogSuccesses = codedInputByteBufferNano.readInt32();
                        break;
                    case 296:
                        this.numHiddenNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 304:
                        this.numPasspointNetworks = codedInputByteBufferNano.readInt32();
                        break;
                    case 312:
                        this.numTotalScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 320:
                        this.numOpenNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 328:
                        this.numPersonalNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case 336:
                        this.numEnterpriseNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.USER_LOCALE_LIST /* 344 */:
                        this.numHiddenNetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.WINDOW_DOCK_SHORTCUTS /* 352 */:
                        this.numHotspot2R1NetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_QS_EDIT_REMOVE_SPEC /* 360 */:
                        this.numHotspot2R2NetworkScanResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.SUW_ACCESSIBILITY_TOGGLE_SCREEN_MAGNIFICATION /* 368 */:
                        this.numScans = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.SETTINGS_CONDITION_BACKGROUND_DATA /* 378 */:
                        int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.SETTINGS_CONDITION_BACKGROUND_DATA);
                        int length7 = this.alertReasonCount == null ? 0 : this.alertReasonCount.length;
                        AlertReasonCount[] alertReasonCountArr = new AlertReasonCount[repeatedFieldArrayLength7 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.alertReasonCount, 0, alertReasonCountArr, 0, length7);
                        }
                        while (length7 < alertReasonCountArr.length - 1) {
                            alertReasonCountArr[length7] = new AlertReasonCount();
                            codedInputByteBufferNano.readMessage(alertReasonCountArr[length7]);
                            codedInputByteBufferNano.readTag();
                            length7++;
                        }
                        alertReasonCountArr[length7] = new AlertReasonCount();
                        codedInputByteBufferNano.readMessage(alertReasonCountArr[length7]);
                        this.alertReasonCount = alertReasonCountArr;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_SETTINGS_SUGGESTION /* 386 */:
                        int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_SETTINGS_SUGGESTION);
                        int length8 = this.wifiScoreCount == null ? 0 : this.wifiScoreCount.length;
                        WifiScoreCount[] wifiScoreCountArr = new WifiScoreCount[repeatedFieldArrayLength8 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.wifiScoreCount, 0, wifiScoreCountArr, 0, length8);
                        }
                        while (length8 < wifiScoreCountArr.length - 1) {
                            wifiScoreCountArr[length8] = new WifiScoreCount();
                            codedInputByteBufferNano.readMessage(wifiScoreCountArr[length8]);
                            codedInputByteBufferNano.readTag();
                            length8++;
                        }
                        wifiScoreCountArr[length8] = new WifiScoreCount();
                        codedInputByteBufferNano.readMessage(wifiScoreCountArr[length8]);
                        this.wifiScoreCount = wifiScoreCountArr;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_DATA_SAVER_MODE /* 394 */:
                        int repeatedFieldArrayLength9 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_DATA_SAVER_MODE);
                        int length9 = this.softApDuration == null ? 0 : this.softApDuration.length;
                        SoftApDurationBucket[] softApDurationBucketArr = new SoftApDurationBucket[repeatedFieldArrayLength9 + length9];
                        if (length9 != 0) {
                            System.arraycopy(this.softApDuration, 0, softApDurationBucketArr, 0, length9);
                        }
                        while (length9 < softApDurationBucketArr.length - 1) {
                            softApDurationBucketArr[length9] = new SoftApDurationBucket();
                            codedInputByteBufferNano.readMessage(softApDurationBucketArr[length9]);
                            codedInputByteBufferNano.readTag();
                            length9++;
                        }
                        softApDurationBucketArr[length9] = new SoftApDurationBucket();
                        codedInputByteBufferNano.readMessage(softApDurationBucketArr[length9]);
                        this.softApDuration = softApDurationBucketArr;
                        break;
                    case MetricsProto.MetricsEvent.CONVERT_FBE /* 402 */:
                        int repeatedFieldArrayLength10 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.CONVERT_FBE);
                        int length10 = this.softApReturnCode == null ? 0 : this.softApReturnCode.length;
                        SoftApReturnCodeCount[] softApReturnCodeCountArr = new SoftApReturnCodeCount[repeatedFieldArrayLength10 + length10];
                        if (length10 != 0) {
                            System.arraycopy(this.softApReturnCode, 0, softApReturnCodeCountArr, 0, length10);
                        }
                        while (length10 < softApReturnCodeCountArr.length - 1) {
                            softApReturnCodeCountArr[length10] = new SoftApReturnCodeCount();
                            codedInputByteBufferNano.readMessage(softApReturnCodeCountArr[length10]);
                            codedInputByteBufferNano.readTag();
                            length10++;
                        }
                        softApReturnCodeCountArr[length10] = new SoftApReturnCodeCount();
                        codedInputByteBufferNano.readMessage(softApReturnCodeCountArr[length10]);
                        this.softApReturnCode = softApReturnCodeCountArr;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_NOTIFICATION_GROUP_GESTURE_EXPANDER /* 410 */:
                        int repeatedFieldArrayLength11 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_NOTIFICATION_GROUP_GESTURE_EXPANDER);
                        int length11 = this.rssiPollDeltaCount == null ? 0 : this.rssiPollDeltaCount.length;
                        RssiPollCount[] rssiPollCountArr2 = new RssiPollCount[repeatedFieldArrayLength11 + length11];
                        if (length11 != 0) {
                            System.arraycopy(this.rssiPollDeltaCount, 0, rssiPollCountArr2, 0, length11);
                        }
                        while (length11 < rssiPollCountArr2.length - 1) {
                            rssiPollCountArr2[length11] = new RssiPollCount();
                            codedInputByteBufferNano.readMessage(rssiPollCountArr2[length11]);
                            codedInputByteBufferNano.readTag();
                            length11++;
                        }
                        rssiPollCountArr2[length11] = new RssiPollCount();
                        codedInputByteBufferNano.readMessage(rssiPollCountArr2[length11]);
                        this.rssiPollDeltaCount = rssiPollCountArr2;
                        break;
                    case 418:
                        int repeatedFieldArrayLength12 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 418);
                        int length12 = this.staEventList == null ? 0 : this.staEventList.length;
                        StaEvent[] staEventArr = new StaEvent[repeatedFieldArrayLength12 + length12];
                        if (length12 != 0) {
                            System.arraycopy(this.staEventList, 0, staEventArr, 0, length12);
                        }
                        while (length12 < staEventArr.length - 1) {
                            staEventArr[length12] = new StaEvent();
                            codedInputByteBufferNano.readMessage(staEventArr[length12]);
                            codedInputByteBufferNano.readTag();
                            length12++;
                        }
                        staEventArr[length12] = new StaEvent();
                        codedInputByteBufferNano.readMessage(staEventArr[length12]);
                        this.staEventList = staEventArr;
                        break;
                    case 424:
                        this.numHalCrashes = codedInputByteBufferNano.readInt32();
                        break;
                    case 432:
                        this.numWificondCrashes = codedInputByteBufferNano.readInt32();
                        break;
                    case 440:
                        this.numSetupClientInterfaceFailureDueToHal = codedInputByteBufferNano.readInt32();
                        break;
                    case 448:
                        this.numSetupClientInterfaceFailureDueToWificond = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.STORAGE_MANAGER_SETTINGS /* 458 */:
                        if (this.wifiAwareLog == null) {
                            this.wifiAwareLog = new WifiAwareLog();
                        }
                        codedInputByteBufferNano.readMessage(this.wifiAwareLog);
                        break;
                    case MetricsProto.MetricsEvent.ACTION_DELETION_APPS_COLLAPSED /* 464 */:
                        this.numPasspointProviders = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_DELETION_HELPER_DOWNLOADS_DELETION_FAIL /* 472 */:
                        this.numPasspointProviderInstallation = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_SUPPORT_SIGN_IN /* 480 */:
                        this.numPasspointProviderInstallSuccess = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.NIGHT_DISPLAY_SETTINGS /* 488 */:
                        this.numPasspointProviderUninstallation = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_LOCK_BECAUSE_SIM_REMOVED /* 496 */:
                        this.numPasspointProviderUninstallSuccess = codedInputByteBufferNano.readInt32();
                        break;
                    case 504:
                        this.numPasspointProvidersSuccessfullyConnected = codedInputByteBufferNano.readInt32();
                        break;
                    case 514:
                        int repeatedFieldArrayLength13 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 514);
                        int length13 = this.totalSsidsInScanHistogram == null ? 0 : this.totalSsidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr = new NumConnectableNetworksBucket[repeatedFieldArrayLength13 + length13];
                        if (length13 != 0) {
                            System.arraycopy(this.totalSsidsInScanHistogram, 0, numConnectableNetworksBucketArr, 0, length13);
                        }
                        while (length13 < numConnectableNetworksBucketArr.length - 1) {
                            numConnectableNetworksBucketArr[length13] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr[length13]);
                            codedInputByteBufferNano.readTag();
                            length13++;
                        }
                        numConnectableNetworksBucketArr[length13] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr[length13]);
                        this.totalSsidsInScanHistogram = numConnectableNetworksBucketArr;
                        break;
                    case 522:
                        int repeatedFieldArrayLength14 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 522);
                        int length14 = this.totalBssidsInScanHistogram == null ? 0 : this.totalBssidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr2 = new NumConnectableNetworksBucket[repeatedFieldArrayLength14 + length14];
                        if (length14 != 0) {
                            System.arraycopy(this.totalBssidsInScanHistogram, 0, numConnectableNetworksBucketArr2, 0, length14);
                        }
                        while (length14 < numConnectableNetworksBucketArr2.length - 1) {
                            numConnectableNetworksBucketArr2[length14] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr2[length14]);
                            codedInputByteBufferNano.readTag();
                            length14++;
                        }
                        numConnectableNetworksBucketArr2[length14] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr2[length14]);
                        this.totalBssidsInScanHistogram = numConnectableNetworksBucketArr2;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_APN_EDITOR_ERROR /* 530 */:
                        int repeatedFieldArrayLength15 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_APN_EDITOR_ERROR);
                        int length15 = this.availableOpenSsidsInScanHistogram == null ? 0 : this.availableOpenSsidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr3 = new NumConnectableNetworksBucket[repeatedFieldArrayLength15 + length15];
                        if (length15 != 0) {
                            System.arraycopy(this.availableOpenSsidsInScanHistogram, 0, numConnectableNetworksBucketArr3, 0, length15);
                        }
                        while (length15 < numConnectableNetworksBucketArr3.length - 1) {
                            numConnectableNetworksBucketArr3[length15] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr3[length15]);
                            codedInputByteBufferNano.readTag();
                            length15++;
                        }
                        numConnectableNetworksBucketArr3[length15] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr3[length15]);
                        this.availableOpenSsidsInScanHistogram = numConnectableNetworksBucketArr3;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_BLUETOOTH_RENAME /* 538 */:
                        int repeatedFieldArrayLength16 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_BLUETOOTH_RENAME);
                        int length16 = this.availableOpenBssidsInScanHistogram == null ? 0 : this.availableOpenBssidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr4 = new NumConnectableNetworksBucket[repeatedFieldArrayLength16 + length16];
                        if (length16 != 0) {
                            System.arraycopy(this.availableOpenBssidsInScanHistogram, 0, numConnectableNetworksBucketArr4, 0, length16);
                        }
                        while (length16 < numConnectableNetworksBucketArr4.length - 1) {
                            numConnectableNetworksBucketArr4[length16] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr4[length16]);
                            codedInputByteBufferNano.readTag();
                            length16++;
                        }
                        numConnectableNetworksBucketArr4[length16] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr4[length16]);
                        this.availableOpenBssidsInScanHistogram = numConnectableNetworksBucketArr4;
                        break;
                    case 546:
                        int repeatedFieldArrayLength17 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 546);
                        int length17 = this.availableSavedSsidsInScanHistogram == null ? 0 : this.availableSavedSsidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr5 = new NumConnectableNetworksBucket[repeatedFieldArrayLength17 + length17];
                        if (length17 != 0) {
                            System.arraycopy(this.availableSavedSsidsInScanHistogram, 0, numConnectableNetworksBucketArr5, 0, length17);
                        }
                        while (length17 < numConnectableNetworksBucketArr5.length - 1) {
                            numConnectableNetworksBucketArr5[length17] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr5[length17]);
                            codedInputByteBufferNano.readTag();
                            length17++;
                        }
                        numConnectableNetworksBucketArr5[length17] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr5[length17]);
                        this.availableSavedSsidsInScanHistogram = numConnectableNetworksBucketArr5;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_ZEN_ACCESS_GRANT /* 554 */:
                        int repeatedFieldArrayLength18 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_ZEN_ACCESS_GRANT);
                        int length18 = this.availableSavedBssidsInScanHistogram == null ? 0 : this.availableSavedBssidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr6 = new NumConnectableNetworksBucket[repeatedFieldArrayLength18 + length18];
                        if (length18 != 0) {
                            System.arraycopy(this.availableSavedBssidsInScanHistogram, 0, numConnectableNetworksBucketArr6, 0, length18);
                        }
                        while (length18 < numConnectableNetworksBucketArr6.length - 1) {
                            numConnectableNetworksBucketArr6[length18] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr6[length18]);
                            codedInputByteBufferNano.readTag();
                            length18++;
                        }
                        numConnectableNetworksBucketArr6[length18] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr6[length18]);
                        this.availableSavedBssidsInScanHistogram = numConnectableNetworksBucketArr6;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_VOLUME_UNMOUNT /* 562 */:
                        int repeatedFieldArrayLength19 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_VOLUME_UNMOUNT);
                        int length19 = this.availableOpenOrSavedSsidsInScanHistogram == null ? 0 : this.availableOpenOrSavedSsidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr7 = new NumConnectableNetworksBucket[repeatedFieldArrayLength19 + length19];
                        if (length19 != 0) {
                            System.arraycopy(this.availableOpenOrSavedSsidsInScanHistogram, 0, numConnectableNetworksBucketArr7, 0, length19);
                        }
                        while (length19 < numConnectableNetworksBucketArr7.length - 1) {
                            numConnectableNetworksBucketArr7[length19] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr7[length19]);
                            codedInputByteBufferNano.readTag();
                            length19++;
                        }
                        numConnectableNetworksBucketArr7[length19] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr7[length19]);
                        this.availableOpenOrSavedSsidsInScanHistogram = numConnectableNetworksBucketArr7;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_FINGERPINT_EDIT /* 570 */:
                        int repeatedFieldArrayLength20 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_FINGERPINT_EDIT);
                        int length20 = this.availableOpenOrSavedBssidsInScanHistogram == null ? 0 : this.availableOpenOrSavedBssidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr8 = new NumConnectableNetworksBucket[repeatedFieldArrayLength20 + length20];
                        if (length20 != 0) {
                            System.arraycopy(this.availableOpenOrSavedBssidsInScanHistogram, 0, numConnectableNetworksBucketArr8, 0, length20);
                        }
                        while (length20 < numConnectableNetworksBucketArr8.length - 1) {
                            numConnectableNetworksBucketArr8[length20] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr8[length20]);
                            codedInputByteBufferNano.readTag();
                            length20++;
                        }
                        numConnectableNetworksBucketArr8[length20] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr8[length20]);
                        this.availableOpenOrSavedBssidsInScanHistogram = numConnectableNetworksBucketArr8;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_DELETE_GROUP /* 578 */:
                        int repeatedFieldArrayLength21 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_WIFI_P2P_DELETE_GROUP);
                        int length21 = this.availableSavedPasspointProviderProfilesInScanHistogram == null ? 0 : this.availableSavedPasspointProviderProfilesInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr9 = new NumConnectableNetworksBucket[repeatedFieldArrayLength21 + length21];
                        if (length21 != 0) {
                            System.arraycopy(this.availableSavedPasspointProviderProfilesInScanHistogram, 0, numConnectableNetworksBucketArr9, 0, length21);
                        }
                        while (length21 < numConnectableNetworksBucketArr9.length - 1) {
                            numConnectableNetworksBucketArr9[length21] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr9[length21]);
                            codedInputByteBufferNano.readTag();
                            length21++;
                        }
                        numConnectableNetworksBucketArr9[length21] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr9[length21]);
                        this.availableSavedPasspointProviderProfilesInScanHistogram = numConnectableNetworksBucketArr9;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_ACCOUNT_SYNC_FAILED_REMOVAL /* 586 */:
                        int repeatedFieldArrayLength22 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.DIALOG_ACCOUNT_SYNC_FAILED_REMOVAL);
                        int length22 = this.availableSavedPasspointProviderBssidsInScanHistogram == null ? 0 : this.availableSavedPasspointProviderBssidsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr10 = new NumConnectableNetworksBucket[repeatedFieldArrayLength22 + length22];
                        if (length22 != 0) {
                            System.arraycopy(this.availableSavedPasspointProviderBssidsInScanHistogram, 0, numConnectableNetworksBucketArr10, 0, length22);
                        }
                        while (length22 < numConnectableNetworksBucketArr10.length - 1) {
                            numConnectableNetworksBucketArr10[length22] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr10[length22]);
                            codedInputByteBufferNano.readTag();
                            length22++;
                        }
                        numConnectableNetworksBucketArr10[length22] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr10[length22]);
                        this.availableSavedPasspointProviderBssidsInScanHistogram = numConnectableNetworksBucketArr10;
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_USER_ENABLE_CALLING /* 592 */:
                        this.fullBandAllSingleScanListenerResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.DIALOG_USER_CONFIRM_EXIT_GUEST /* 600 */:
                        this.partialAllSingleScanListenerResults = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.PROVISIONING_NETWORK_TYPE /* 610 */:
                        if (this.pnoScanMetrics == null) {
                            this.pnoScanMetrics = new PnoScanMetrics();
                        }
                        codedInputByteBufferNano.readMessage(this.pnoScanMetrics);
                        break;
                    case MetricsProto.MetricsEvent.PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE /* 618 */:
                        int repeatedFieldArrayLength23 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE);
                        int length23 = this.connectToNetworkNotificationCount == null ? 0 : this.connectToNetworkNotificationCount.length;
                        ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr = new ConnectToNetworkNotificationAndActionCount[repeatedFieldArrayLength23 + length23];
                        if (length23 != 0) {
                            System.arraycopy(this.connectToNetworkNotificationCount, 0, connectToNetworkNotificationAndActionCountArr, 0, length23);
                        }
                        while (length23 < connectToNetworkNotificationAndActionCountArr.length - 1) {
                            connectToNetworkNotificationAndActionCountArr[length23] = new ConnectToNetworkNotificationAndActionCount();
                            codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCountArr[length23]);
                            codedInputByteBufferNano.readTag();
                            length23++;
                        }
                        connectToNetworkNotificationAndActionCountArr[length23] = new ConnectToNetworkNotificationAndActionCount();
                        codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCountArr[length23]);
                        this.connectToNetworkNotificationCount = connectToNetworkNotificationAndActionCountArr;
                        break;
                    case MetricsProto.MetricsEvent.PROVISIONING_COPY_ACCOUNT_STATUS /* 626 */:
                        int repeatedFieldArrayLength24 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.PROVISIONING_COPY_ACCOUNT_STATUS);
                        int length24 = this.connectToNetworkNotificationActionCount == null ? 0 : this.connectToNetworkNotificationActionCount.length;
                        ConnectToNetworkNotificationAndActionCount[] connectToNetworkNotificationAndActionCountArr2 = new ConnectToNetworkNotificationAndActionCount[repeatedFieldArrayLength24 + length24];
                        if (length24 != 0) {
                            System.arraycopy(this.connectToNetworkNotificationActionCount, 0, connectToNetworkNotificationAndActionCountArr2, 0, length24);
                        }
                        while (length24 < connectToNetworkNotificationAndActionCountArr2.length - 1) {
                            connectToNetworkNotificationAndActionCountArr2[length24] = new ConnectToNetworkNotificationAndActionCount();
                            codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCountArr2[length24]);
                            codedInputByteBufferNano.readTag();
                            length24++;
                        }
                        connectToNetworkNotificationAndActionCountArr2[length24] = new ConnectToNetworkNotificationAndActionCount();
                        codedInputByteBufferNano.readMessage(connectToNetworkNotificationAndActionCountArr2[length24]);
                        this.connectToNetworkNotificationActionCount = connectToNetworkNotificationAndActionCountArr2;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_UNKNOWN /* 632 */:
                        this.openNetworkRecommenderBlacklistSize = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_WRITE_CALENDAR /* 640 */:
                        this.isWifiNetworksAvailableNotificationOn = codedInputByteBufferNano.readBool();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_READ_CONTACTS /* 648 */:
                        this.numOpenNetworkRecommendationUpdates = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_GET_ACCOUNTS /* 656 */:
                        this.numOpenNetworkConnectMessageFailedToSend = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_RECORD_AUDIO /* 666 */:
                        int repeatedFieldArrayLength25 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_RECORD_AUDIO);
                        int length25 = this.observedHotspotR1ApsInScanHistogram == null ? 0 : this.observedHotspotR1ApsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr11 = new NumConnectableNetworksBucket[repeatedFieldArrayLength25 + length25];
                        if (length25 != 0) {
                            System.arraycopy(this.observedHotspotR1ApsInScanHistogram, 0, numConnectableNetworksBucketArr11, 0, length25);
                        }
                        while (length25 < numConnectableNetworksBucketArr11.length - 1) {
                            numConnectableNetworksBucketArr11[length25] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr11[length25]);
                            codedInputByteBufferNano.readTag();
                            length25++;
                        }
                        numConnectableNetworksBucketArr11[length25] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr11[length25]);
                        this.observedHotspotR1ApsInScanHistogram = numConnectableNetworksBucketArr11;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_CALL_PHONE /* 674 */:
                        int repeatedFieldArrayLength26 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_CALL_PHONE);
                        int length26 = this.observedHotspotR2ApsInScanHistogram == null ? 0 : this.observedHotspotR2ApsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr12 = new NumConnectableNetworksBucket[repeatedFieldArrayLength26 + length26];
                        if (length26 != 0) {
                            System.arraycopy(this.observedHotspotR2ApsInScanHistogram, 0, numConnectableNetworksBucketArr12, 0, length26);
                        }
                        while (length26 < numConnectableNetworksBucketArr12.length - 1) {
                            numConnectableNetworksBucketArr12[length26] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr12[length26]);
                            codedInputByteBufferNano.readTag();
                            length26++;
                        }
                        numConnectableNetworksBucketArr12[length26] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr12[length26]);
                        this.observedHotspotR2ApsInScanHistogram = numConnectableNetworksBucketArr12;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_WRITE_CALL_LOG /* 682 */:
                        int repeatedFieldArrayLength27 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_WRITE_CALL_LOG);
                        int length27 = this.observedHotspotR1EssInScanHistogram == null ? 0 : this.observedHotspotR1EssInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr13 = new NumConnectableNetworksBucket[repeatedFieldArrayLength27 + length27];
                        if (length27 != 0) {
                            System.arraycopy(this.observedHotspotR1EssInScanHistogram, 0, numConnectableNetworksBucketArr13, 0, length27);
                        }
                        while (length27 < numConnectableNetworksBucketArr13.length - 1) {
                            numConnectableNetworksBucketArr13[length27] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr13[length27]);
                            codedInputByteBufferNano.readTag();
                            length27++;
                        }
                        numConnectableNetworksBucketArr13[length27] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr13[length27]);
                        this.observedHotspotR1EssInScanHistogram = numConnectableNetworksBucketArr13;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_USE_SIP /* 690 */:
                        int repeatedFieldArrayLength28 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_USE_SIP);
                        int length28 = this.observedHotspotR2EssInScanHistogram == null ? 0 : this.observedHotspotR2EssInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr14 = new NumConnectableNetworksBucket[repeatedFieldArrayLength28 + length28];
                        if (length28 != 0) {
                            System.arraycopy(this.observedHotspotR2EssInScanHistogram, 0, numConnectableNetworksBucketArr14, 0, length28);
                        }
                        while (length28 < numConnectableNetworksBucketArr14.length - 1) {
                            numConnectableNetworksBucketArr14[length28] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr14[length28]);
                            codedInputByteBufferNano.readTag();
                            length28++;
                        }
                        numConnectableNetworksBucketArr14[length28] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr14[length28]);
                        this.observedHotspotR2EssInScanHistogram = numConnectableNetworksBucketArr14;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_READ_CELL_BROADCASTS /* 698 */:
                        int repeatedFieldArrayLength29 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_READ_CELL_BROADCASTS);
                        int length29 = this.observedHotspotR1ApsPerEssInScanHistogram == null ? 0 : this.observedHotspotR1ApsPerEssInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr15 = new NumConnectableNetworksBucket[repeatedFieldArrayLength29 + length29];
                        if (length29 != 0) {
                            System.arraycopy(this.observedHotspotR1ApsPerEssInScanHistogram, 0, numConnectableNetworksBucketArr15, 0, length29);
                        }
                        while (length29 < numConnectableNetworksBucketArr15.length - 1) {
                            numConnectableNetworksBucketArr15[length29] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr15[length29]);
                            codedInputByteBufferNano.readTag();
                            length29++;
                        }
                        numConnectableNetworksBucketArr15[length29] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr15[length29]);
                        this.observedHotspotR1ApsPerEssInScanHistogram = numConnectableNetworksBucketArr15;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_SEND_SMS /* 706 */:
                        int repeatedFieldArrayLength30 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_SEND_SMS);
                        int length30 = this.observedHotspotR2ApsPerEssInScanHistogram == null ? 0 : this.observedHotspotR2ApsPerEssInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr16 = new NumConnectableNetworksBucket[repeatedFieldArrayLength30 + length30];
                        if (length30 != 0) {
                            System.arraycopy(this.observedHotspotR2ApsPerEssInScanHistogram, 0, numConnectableNetworksBucketArr16, 0, length30);
                        }
                        while (length30 < numConnectableNetworksBucketArr16.length - 1) {
                            numConnectableNetworksBucketArr16[length30] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr16[length30]);
                            codedInputByteBufferNano.readTag();
                            length30++;
                        }
                        numConnectableNetworksBucketArr16[length30] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr16[length30]);
                        this.observedHotspotR2ApsPerEssInScanHistogram = numConnectableNetworksBucketArr16;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_READ_SMS /* 714 */:
                        int repeatedFieldArrayLength31 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_READ_SMS);
                        int length31 = this.softApConnectedClientsEventsTethered == null ? 0 : this.softApConnectedClientsEventsTethered.length;
                        SoftApConnectedClientsEvent[] softApConnectedClientsEventArr = new SoftApConnectedClientsEvent[repeatedFieldArrayLength31 + length31];
                        if (length31 != 0) {
                            System.arraycopy(this.softApConnectedClientsEventsTethered, 0, softApConnectedClientsEventArr, 0, length31);
                        }
                        while (length31 < softApConnectedClientsEventArr.length - 1) {
                            softApConnectedClientsEventArr[length31] = new SoftApConnectedClientsEvent();
                            codedInputByteBufferNano.readMessage(softApConnectedClientsEventArr[length31]);
                            codedInputByteBufferNano.readTag();
                            length31++;
                        }
                        softApConnectedClientsEventArr[length31] = new SoftApConnectedClientsEvent();
                        codedInputByteBufferNano.readMessage(softApConnectedClientsEventArr[length31]);
                        this.softApConnectedClientsEventsTethered = softApConnectedClientsEventArr;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_RECEIVE_MMS /* 722 */:
                        int repeatedFieldArrayLength32 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_RECEIVE_MMS);
                        int length32 = this.softApConnectedClientsEventsLocalOnly == null ? 0 : this.softApConnectedClientsEventsLocalOnly.length;
                        SoftApConnectedClientsEvent[] softApConnectedClientsEventArr2 = new SoftApConnectedClientsEvent[repeatedFieldArrayLength32 + length32];
                        if (length32 != 0) {
                            System.arraycopy(this.softApConnectedClientsEventsLocalOnly, 0, softApConnectedClientsEventArr2, 0, length32);
                        }
                        while (length32 < softApConnectedClientsEventArr2.length - 1) {
                            softApConnectedClientsEventArr2[length32] = new SoftApConnectedClientsEvent();
                            codedInputByteBufferNano.readMessage(softApConnectedClientsEventArr2[length32]);
                            codedInputByteBufferNano.readTag();
                            length32++;
                        }
                        softApConnectedClientsEventArr2[length32] = new SoftApConnectedClientsEvent();
                        codedInputByteBufferNano.readMessage(softApConnectedClientsEventArr2[length32]);
                        this.softApConnectedClientsEventsLocalOnly = softApConnectedClientsEventArr2;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_REQUEST_WRITE_EXTERNAL_STORAGE /* 730 */:
                        if (this.wpsMetrics == null) {
                            this.wpsMetrics = new WpsMetrics();
                        }
                        codedInputByteBufferNano.readMessage(this.wpsMetrics);
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_READ_PHONE_NUMBERS /* 738 */:
                        if (this.wifiPowerStats == null) {
                            this.wifiPowerStats = new WifiPowerStats();
                        }
                        codedInputByteBufferNano.readMessage(this.wifiPowerStats);
                        break;
                    case MetricsProto.MetricsEvent.SETTINGS_SYSTEM_CATEGORY /* 744 */:
                        this.numConnectivityOneshotScans = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.SETTINGS_GESTURE_DOUBLE_TAP_SCREEN /* 754 */:
                        if (this.wifiWakeStats == null) {
                            this.wifiWakeStats = new WifiWakeStats();
                        }
                        codedInputByteBufferNano.readMessage(this.wifiWakeStats);
                        break;
                    case MetricsProto.MetricsEvent.ACTION_LEAVE_SEARCH_RESULT_WITHOUT_QUERY /* 762 */:
                        int repeatedFieldArrayLength33 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_LEAVE_SEARCH_RESULT_WITHOUT_QUERY);
                        int length33 = this.observed80211McSupportingApsInScanHistogram == null ? 0 : this.observed80211McSupportingApsInScanHistogram.length;
                        NumConnectableNetworksBucket[] numConnectableNetworksBucketArr17 = new NumConnectableNetworksBucket[repeatedFieldArrayLength33 + length33];
                        if (length33 != 0) {
                            System.arraycopy(this.observed80211McSupportingApsInScanHistogram, 0, numConnectableNetworksBucketArr17, 0, length33);
                        }
                        while (length33 < numConnectableNetworksBucketArr17.length - 1) {
                            numConnectableNetworksBucketArr17[length33] = new NumConnectableNetworksBucket();
                            codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr17[length33]);
                            codedInputByteBufferNano.readTag();
                            length33++;
                        }
                        numConnectableNetworksBucketArr17[length33] = new NumConnectableNetworksBucket();
                        codedInputByteBufferNano.readMessage(numConnectableNetworksBucketArr17[length33]);
                        this.observed80211McSupportingApsInScanHistogram = numConnectableNetworksBucketArr17;
                        break;
                    case MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_DND_ALLOW /* 768 */:
                        this.numSupplicantCrashes = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_NOTIVIEW_ALLOW /* 776 */:
                        this.numHostapdCrashes = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.APP_SPECIAL_PERMISSION_USAGE_VIEW_DENY /* 784 */:
                        this.numSetupClientInterfaceFailureDueToSupplicant = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.DEFAULT_AUTOFILL_PICKER /* 792 */:
                        this.numSetupSoftApInterfaceFailureDueToHal = codedInputByteBufferNano.readInt32();
                        break;
                    case 800:
                        this.numSetupSoftApInterfaceFailureDueToWificond = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.MANAGE_EXTERNAL_SOURCES /* 808 */:
                        this.numSetupSoftApInterfaceFailureDueToHostapd = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_THEME /* 816 */:
                        this.numClientInterfaceDown = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_PICTURE_IN_PICTURE_ASPECT_RATIO_CHANGED /* 824 */:
                        this.numSoftApInterfaceDown = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.NOTIFICATION_SNOOZED_CRITERIA /* 832 */:
                        this.numExternalAppOneshotScanRequests = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.STORAGE_FREE_UP_SPACE_NOW /* 840 */:
                        this.numExternalForegroundAppOneshotScanRequestsThrottled = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.FIELD_SETTINGS_BUILD_NUMBER_DEVELOPER_MODE_ENABLED /* 848 */:
                        this.numExternalBackgroundAppOneshotScanRequestsThrottled = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_NOTIFICATION_CHANNEL /* 856 */:
                        this.watchdogTriggerToConnectionSuccessDurationMs = codedInputByteBufferNano.readInt64();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_GET_CONTACT /* 864 */:
                        this.watchdogTotalConnectionFailureCountAfterTrigger = codedInputByteBufferNano.readInt64();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_SETTINGS_UNINSTALL_APP /* 872 */:
                        this.numOneshotHasDfsChannelScans = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.SETTINGS_LOCK_SCREEN_PREFERENCES /* 882 */:
                        if (this.wifiRttLog == null) {
                            this.wifiRttLog = new WifiRttLog();
                        }
                        codedInputByteBufferNano.readMessage(this.wifiRttLog);
                        break;
                    case MetricsProto.MetricsEvent.ACTION_APPOP_GRANT_SYSTEM_ALERT_WINDOW /* 888 */:
                        this.isMacRandomizationOn = codedInputByteBufferNano.readBool();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_APPOP_GRANT_REQUEST_INSTALL_PACKAGES /* 896 */:
                        this.numRadioModeChangeToMcc = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.APP_TRANSITION_CALLING_PACKAGE_NAME /* 904 */:
                        this.numRadioModeChangeToScc = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.AUTOFILL_AUTHENTICATED /* 912 */:
                        this.numRadioModeChangeToSbs = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.METRICS_CHECKPOINT /* 920 */:
                        this.numRadioModeChangeToDbs = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.FIELD_QS_VALUE /* 928 */:
                        this.numSoftApUserBandPreferenceUnsatisfied = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ENTERPRISE_PRIVACY_INSTALLED_APPS /* 938 */:
                        this.scoreExperimentId = codedInputByteBufferNano.readString();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static WifiLog parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WifiLog) MessageNano.mergeFrom(new WifiLog(), bArr);
        }

        public static WifiLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WifiLog().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class RouterFingerPrint extends MessageNano {
        public static final int AUTH_ENTERPRISE = 3;
        public static final int AUTH_OPEN = 1;
        public static final int AUTH_PERSONAL = 2;
        public static final int AUTH_UNKNOWN = 0;
        public static final int ROAM_TYPE_DBDC = 3;
        public static final int ROAM_TYPE_ENTERPRISE = 2;
        public static final int ROAM_TYPE_NONE = 1;
        public static final int ROAM_TYPE_UNKNOWN = 0;
        public static final int ROUTER_TECH_A = 1;
        public static final int ROUTER_TECH_AC = 5;
        public static final int ROUTER_TECH_B = 2;
        public static final int ROUTER_TECH_G = 3;
        public static final int ROUTER_TECH_N = 4;
        public static final int ROUTER_TECH_OTHER = 6;
        public static final int ROUTER_TECH_UNKNOWN = 0;
        private static volatile RouterFingerPrint[] _emptyArray;
        public int authentication;
        public int channelInfo;
        public int dtim;
        public boolean hidden;
        public boolean passpoint;
        public int roamType;
        public int routerTechnology;
        public boolean supportsIpv6;

        public static RouterFingerPrint[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new RouterFingerPrint[0];
                    }
                }
            }
            return _emptyArray;
        }

        public RouterFingerPrint() {
            clear();
        }

        public RouterFingerPrint clear() {
            this.roamType = 0;
            this.channelInfo = 0;
            this.dtim = 0;
            this.authentication = 0;
            this.hidden = false;
            this.routerTechnology = 0;
            this.supportsIpv6 = false;
            this.passpoint = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.roamType != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.roamType);
            }
            if (this.channelInfo != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.channelInfo);
            }
            if (this.dtim != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.dtim);
            }
            if (this.authentication != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.authentication);
            }
            if (this.hidden) {
                codedOutputByteBufferNano.writeBool(5, this.hidden);
            }
            if (this.routerTechnology != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.routerTechnology);
            }
            if (this.supportsIpv6) {
                codedOutputByteBufferNano.writeBool(7, this.supportsIpv6);
            }
            if (this.passpoint) {
                codedOutputByteBufferNano.writeBool(8, this.passpoint);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.roamType != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.roamType);
            }
            if (this.channelInfo != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.channelInfo);
            }
            if (this.dtim != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.dtim);
            }
            if (this.authentication != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.authentication);
            }
            if (this.hidden) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, this.hidden);
            }
            if (this.routerTechnology != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.routerTechnology);
            }
            if (this.supportsIpv6) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, this.supportsIpv6);
            }
            return this.passpoint ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(8, this.passpoint) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public RouterFingerPrint mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.roamType = readInt32;
                            break;
                    }
                } else if (readTag == 16) {
                    this.channelInfo = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.dtim = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    switch (readInt322) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.authentication = readInt322;
                            break;
                    }
                } else if (readTag == 40) {
                    this.hidden = codedInputByteBufferNano.readBool();
                } else if (readTag == 48) {
                    int readInt323 = codedInputByteBufferNano.readInt32();
                    switch (readInt323) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.routerTechnology = readInt323;
                            break;
                    }
                } else if (readTag == 56) {
                    this.supportsIpv6 = codedInputByteBufferNano.readBool();
                } else if (readTag != 64) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.passpoint = codedInputByteBufferNano.readBool();
                }
            }
        }

        public static RouterFingerPrint parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (RouterFingerPrint) MessageNano.mergeFrom(new RouterFingerPrint(), bArr);
        }

        public static RouterFingerPrint parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new RouterFingerPrint().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ConnectionEvent extends MessageNano {
        public static final int HLF_DHCP = 2;
        public static final int HLF_NONE = 1;
        public static final int HLF_NO_INTERNET = 3;
        public static final int HLF_UNKNOWN = 0;
        public static final int HLF_UNWANTED = 4;
        public static final int ROAM_DBDC = 2;
        public static final int ROAM_ENTERPRISE = 3;
        public static final int ROAM_NONE = 1;
        public static final int ROAM_UNKNOWN = 0;
        public static final int ROAM_UNRELATED = 5;
        public static final int ROAM_USER_SELECTED = 4;
        private static volatile ConnectionEvent[] _emptyArray;
        public boolean automaticBugReportTaken;
        public int connectionResult;
        public int connectivityLevelFailureCode;
        public int durationTakenToConnectMillis;
        public int level2FailureCode;
        public int roamType;
        public RouterFingerPrint routerFingerprint;
        public int signalStrength;
        public long startTimeMillis;

        public static ConnectionEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ConnectionEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ConnectionEvent() {
            clear();
        }

        public ConnectionEvent clear() {
            this.startTimeMillis = 0L;
            this.durationTakenToConnectMillis = 0;
            this.routerFingerprint = null;
            this.signalStrength = 0;
            this.roamType = 0;
            this.connectionResult = 0;
            this.level2FailureCode = 0;
            this.connectivityLevelFailureCode = 0;
            this.automaticBugReportTaken = false;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.startTimeMillis != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.startTimeMillis);
            }
            if (this.durationTakenToConnectMillis != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.durationTakenToConnectMillis);
            }
            if (this.routerFingerprint != null) {
                codedOutputByteBufferNano.writeMessage(3, this.routerFingerprint);
            }
            if (this.signalStrength != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.signalStrength);
            }
            if (this.roamType != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.roamType);
            }
            if (this.connectionResult != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.connectionResult);
            }
            if (this.level2FailureCode != 0) {
                codedOutputByteBufferNano.writeInt32(7, this.level2FailureCode);
            }
            if (this.connectivityLevelFailureCode != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.connectivityLevelFailureCode);
            }
            if (this.automaticBugReportTaken) {
                codedOutputByteBufferNano.writeBool(9, this.automaticBugReportTaken);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.startTimeMillis != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.startTimeMillis);
            }
            if (this.durationTakenToConnectMillis != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.durationTakenToConnectMillis);
            }
            if (this.routerFingerprint != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, this.routerFingerprint);
            }
            if (this.signalStrength != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.signalStrength);
            }
            if (this.roamType != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.roamType);
            }
            if (this.connectionResult != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.connectionResult);
            }
            if (this.level2FailureCode != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.level2FailureCode);
            }
            if (this.connectivityLevelFailureCode != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.connectivityLevelFailureCode);
            }
            return this.automaticBugReportTaken ? computeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(9, this.automaticBugReportTaken) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ConnectionEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.startTimeMillis = codedInputByteBufferNano.readInt64();
                } else if (readTag == 16) {
                    this.durationTakenToConnectMillis = codedInputByteBufferNano.readInt32();
                } else if (readTag == 26) {
                    if (this.routerFingerprint == null) {
                        this.routerFingerprint = new RouterFingerPrint();
                    }
                    codedInputByteBufferNano.readMessage(this.routerFingerprint);
                } else if (readTag == 32) {
                    this.signalStrength = codedInputByteBufferNano.readInt32();
                } else if (readTag == 40) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                            this.roamType = readInt32;
                            break;
                    }
                } else if (readTag == 48) {
                    this.connectionResult = codedInputByteBufferNano.readInt32();
                } else if (readTag == 56) {
                    this.level2FailureCode = codedInputByteBufferNano.readInt32();
                } else if (readTag == 64) {
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    switch (readInt322) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            this.connectivityLevelFailureCode = readInt322;
                            break;
                    }
                } else if (readTag != 72) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.automaticBugReportTaken = codedInputByteBufferNano.readBool();
                }
            }
        }

        public static ConnectionEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ConnectionEvent) MessageNano.mergeFrom(new ConnectionEvent(), bArr);
        }

        public static ConnectionEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ConnectionEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class RssiPollCount extends MessageNano {
        private static volatile RssiPollCount[] _emptyArray;
        public int count;
        public int frequency;
        public int rssi;

        public static RssiPollCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new RssiPollCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public RssiPollCount() {
            clear();
        }

        public RssiPollCount clear() {
            this.rssi = 0;
            this.count = 0;
            this.frequency = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.rssi != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.rssi);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.count);
            }
            if (this.frequency != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.frequency);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.rssi != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.rssi);
            }
            if (this.count != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.count);
            }
            return this.frequency != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.frequency) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public RssiPollCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.rssi = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.frequency = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static RssiPollCount parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (RssiPollCount) MessageNano.mergeFrom(new RssiPollCount(), bArr);
        }

        public static RssiPollCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new RssiPollCount().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class AlertReasonCount extends MessageNano {
        private static volatile AlertReasonCount[] _emptyArray;
        public int count;
        public int reason;

        public static AlertReasonCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new AlertReasonCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public AlertReasonCount() {
            clear();
        }

        public AlertReasonCount clear() {
            this.reason = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.reason != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.reason);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.count);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.reason != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.reason);
            }
            return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.count) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public AlertReasonCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.reason = codedInputByteBufferNano.readInt32();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.count = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static AlertReasonCount parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (AlertReasonCount) MessageNano.mergeFrom(new AlertReasonCount(), bArr);
        }

        public static AlertReasonCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new AlertReasonCount().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WifiScoreCount extends MessageNano {
        private static volatile WifiScoreCount[] _emptyArray;
        public int count;
        public int score;

        public static WifiScoreCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiScoreCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WifiScoreCount() {
            clear();
        }

        public WifiScoreCount clear() {
            this.score = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.score != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.score);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.count);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.score != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.score);
            }
            return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.count) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiScoreCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.score = codedInputByteBufferNano.readInt32();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.count = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static WifiScoreCount parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WifiScoreCount) MessageNano.mergeFrom(new WifiScoreCount(), bArr);
        }

        public static WifiScoreCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WifiScoreCount().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class SoftApDurationBucket extends MessageNano {
        private static volatile SoftApDurationBucket[] _emptyArray;
        public int bucketSizeSec;
        public int count;
        public int durationSec;

        public static SoftApDurationBucket[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SoftApDurationBucket[0];
                    }
                }
            }
            return _emptyArray;
        }

        public SoftApDurationBucket() {
            clear();
        }

        public SoftApDurationBucket clear() {
            this.durationSec = 0;
            this.bucketSizeSec = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.durationSec != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.durationSec);
            }
            if (this.bucketSizeSec != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.bucketSizeSec);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.count);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.durationSec != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.durationSec);
            }
            if (this.bucketSizeSec != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.bucketSizeSec);
            }
            return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.count) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public SoftApDurationBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.durationSec = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.bucketSizeSec = codedInputByteBufferNano.readInt32();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.count = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static SoftApDurationBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (SoftApDurationBucket) MessageNano.mergeFrom(new SoftApDurationBucket(), bArr);
        }

        public static SoftApDurationBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new SoftApDurationBucket().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class SoftApReturnCodeCount extends MessageNano {
        public static final int SOFT_AP_FAILED_GENERAL_ERROR = 2;
        public static final int SOFT_AP_FAILED_NO_CHANNEL = 3;
        public static final int SOFT_AP_RETURN_CODE_UNKNOWN = 0;
        public static final int SOFT_AP_STARTED_SUCCESSFULLY = 1;
        private static volatile SoftApReturnCodeCount[] _emptyArray;
        public int count;
        public int returnCode;
        public int startResult;

        public static SoftApReturnCodeCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SoftApReturnCodeCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public SoftApReturnCodeCount() {
            clear();
        }

        public SoftApReturnCodeCount clear() {
            this.returnCode = 0;
            this.count = 0;
            this.startResult = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.returnCode != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.returnCode);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.count);
            }
            if (this.startResult != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.startResult);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.returnCode != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.returnCode);
            }
            if (this.count != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.count);
            }
            return this.startResult != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.startResult) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public SoftApReturnCodeCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.returnCode = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.count = codedInputByteBufferNano.readInt32();
                } else if (readTag != 24) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.startResult = readInt32;
                            break;
                    }
                }
            }
        }

        public static SoftApReturnCodeCount parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (SoftApReturnCodeCount) MessageNano.mergeFrom(new SoftApReturnCodeCount(), bArr);
        }

        public static SoftApReturnCodeCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new SoftApReturnCodeCount().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class StaEvent extends MessageNano {
        public static final int AUTH_FAILURE_EAP_FAILURE = 4;
        public static final int AUTH_FAILURE_NONE = 1;
        public static final int AUTH_FAILURE_TIMEOUT = 2;
        public static final int AUTH_FAILURE_UNKNOWN = 0;
        public static final int AUTH_FAILURE_WRONG_PSWD = 3;
        public static final int DISCONNECT_API = 1;
        public static final int DISCONNECT_GENERIC = 2;
        public static final int DISCONNECT_P2P_DISCONNECT_WIFI_REQUEST = 5;
        public static final int DISCONNECT_RESET_SIM_NETWORKS = 6;
        public static final int DISCONNECT_ROAM_WATCHDOG_TIMER = 4;
        public static final int DISCONNECT_UNKNOWN = 0;
        public static final int DISCONNECT_UNWANTED = 3;
        public static final int STATE_ASSOCIATED = 6;
        public static final int STATE_ASSOCIATING = 5;
        public static final int STATE_AUTHENTICATING = 4;
        public static final int STATE_COMPLETED = 9;
        public static final int STATE_DISCONNECTED = 0;
        public static final int STATE_DORMANT = 10;
        public static final int STATE_FOUR_WAY_HANDSHAKE = 7;
        public static final int STATE_GROUP_HANDSHAKE = 8;
        public static final int STATE_INACTIVE = 2;
        public static final int STATE_INTERFACE_DISABLED = 1;
        public static final int STATE_INVALID = 12;
        public static final int STATE_SCANNING = 3;
        public static final int STATE_UNINITIALIZED = 11;
        public static final int TYPE_ASSOCIATION_REJECTION_EVENT = 1;
        public static final int TYPE_AUTHENTICATION_FAILURE_EVENT = 2;
        public static final int TYPE_CMD_ASSOCIATED_BSSID = 6;
        public static final int TYPE_CMD_IP_CONFIGURATION_LOST = 8;
        public static final int TYPE_CMD_IP_CONFIGURATION_SUCCESSFUL = 7;
        public static final int TYPE_CMD_IP_REACHABILITY_LOST = 9;
        public static final int TYPE_CMD_START_CONNECT = 11;
        public static final int TYPE_CMD_START_ROAM = 12;
        public static final int TYPE_CMD_TARGET_BSSID = 10;
        public static final int TYPE_CONNECT_NETWORK = 13;
        public static final int TYPE_FRAMEWORK_DISCONNECT = 15;
        public static final int TYPE_MAC_CHANGE = 17;
        public static final int TYPE_NETWORK_AGENT_VALID_NETWORK = 14;
        public static final int TYPE_NETWORK_CONNECTION_EVENT = 3;
        public static final int TYPE_NETWORK_DISCONNECTION_EVENT = 4;
        public static final int TYPE_SCORE_BREACH = 16;
        public static final int TYPE_SUPPLICANT_STATE_CHANGE_EVENT = 5;
        public static final int TYPE_UNKNOWN = 0;
        private static volatile StaEvent[] _emptyArray;
        public boolean associationTimedOut;
        public int authFailureReason;
        public ConfigInfo configInfo;
        public int frameworkDisconnectReason;
        public int lastFreq;
        public int lastLinkSpeed;
        public int lastRssi;
        public int lastScore;
        public boolean localGen;
        public int reason;
        public long startTimeMillis;
        public int status;
        public int supplicantStateChangesBitmask;
        public int type;

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class ConfigInfo extends MessageNano {
            private static volatile ConfigInfo[] _emptyArray;
            public int allowedAuthAlgorithms;
            public int allowedGroupCiphers;
            public int allowedKeyManagement;
            public int allowedPairwiseCiphers;
            public int allowedProtocols;
            public boolean hasEverConnected;
            public boolean hiddenSsid;
            public boolean isEphemeral;
            public boolean isPasspoint;
            public int scanFreq;
            public int scanRssi;

            public static ConfigInfo[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new ConfigInfo[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public ConfigInfo() {
                clear();
            }

            public ConfigInfo clear() {
                this.allowedKeyManagement = 0;
                this.allowedProtocols = 0;
                this.allowedAuthAlgorithms = 0;
                this.allowedPairwiseCiphers = 0;
                this.allowedGroupCiphers = 0;
                this.hiddenSsid = false;
                this.isPasspoint = false;
                this.isEphemeral = false;
                this.hasEverConnected = false;
                this.scanRssi = -127;
                this.scanFreq = -1;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.allowedKeyManagement != 0) {
                    codedOutputByteBufferNano.writeUInt32(1, this.allowedKeyManagement);
                }
                if (this.allowedProtocols != 0) {
                    codedOutputByteBufferNano.writeUInt32(2, this.allowedProtocols);
                }
                if (this.allowedAuthAlgorithms != 0) {
                    codedOutputByteBufferNano.writeUInt32(3, this.allowedAuthAlgorithms);
                }
                if (this.allowedPairwiseCiphers != 0) {
                    codedOutputByteBufferNano.writeUInt32(4, this.allowedPairwiseCiphers);
                }
                if (this.allowedGroupCiphers != 0) {
                    codedOutputByteBufferNano.writeUInt32(5, this.allowedGroupCiphers);
                }
                if (this.hiddenSsid) {
                    codedOutputByteBufferNano.writeBool(6, this.hiddenSsid);
                }
                if (this.isPasspoint) {
                    codedOutputByteBufferNano.writeBool(7, this.isPasspoint);
                }
                if (this.isEphemeral) {
                    codedOutputByteBufferNano.writeBool(8, this.isEphemeral);
                }
                if (this.hasEverConnected) {
                    codedOutputByteBufferNano.writeBool(9, this.hasEverConnected);
                }
                if (this.scanRssi != -127) {
                    codedOutputByteBufferNano.writeInt32(10, this.scanRssi);
                }
                if (this.scanFreq != -1) {
                    codedOutputByteBufferNano.writeInt32(11, this.scanFreq);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.allowedKeyManagement != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, this.allowedKeyManagement);
                }
                if (this.allowedProtocols != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, this.allowedProtocols);
                }
                if (this.allowedAuthAlgorithms != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, this.allowedAuthAlgorithms);
                }
                if (this.allowedPairwiseCiphers != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(4, this.allowedPairwiseCiphers);
                }
                if (this.allowedGroupCiphers != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, this.allowedGroupCiphers);
                }
                if (this.hiddenSsid) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(6, this.hiddenSsid);
                }
                if (this.isPasspoint) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, this.isPasspoint);
                }
                if (this.isEphemeral) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(8, this.isEphemeral);
                }
                if (this.hasEverConnected) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(9, this.hasEverConnected);
                }
                if (this.scanRssi != -127) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, this.scanRssi);
                }
                return this.scanFreq != -1 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(11, this.scanFreq) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public ConfigInfo mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    switch (readTag) {
                        case 0:
                            return this;
                        case 8:
                            this.allowedKeyManagement = codedInputByteBufferNano.readUInt32();
                            break;
                        case 16:
                            this.allowedProtocols = codedInputByteBufferNano.readUInt32();
                            break;
                        case 24:
                            this.allowedAuthAlgorithms = codedInputByteBufferNano.readUInt32();
                            break;
                        case 32:
                            this.allowedPairwiseCiphers = codedInputByteBufferNano.readUInt32();
                            break;
                        case 40:
                            this.allowedGroupCiphers = codedInputByteBufferNano.readUInt32();
                            break;
                        case 48:
                            this.hiddenSsid = codedInputByteBufferNano.readBool();
                            break;
                        case 56:
                            this.isPasspoint = codedInputByteBufferNano.readBool();
                            break;
                        case 64:
                            this.isEphemeral = codedInputByteBufferNano.readBool();
                            break;
                        case 72:
                            this.hasEverConnected = codedInputByteBufferNano.readBool();
                            break;
                        case 80:
                            this.scanRssi = codedInputByteBufferNano.readInt32();
                            break;
                        case 88:
                            this.scanFreq = codedInputByteBufferNano.readInt32();
                            break;
                        default:
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                return this;
                            }
                            break;
                    }
                }
            }

            public static ConfigInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (ConfigInfo) MessageNano.mergeFrom(new ConfigInfo(), bArr);
            }

            public static ConfigInfo parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new ConfigInfo().mergeFrom(codedInputByteBufferNano);
            }
        }

        public static StaEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new StaEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public StaEvent() {
            clear();
        }

        public StaEvent clear() {
            this.type = 0;
            this.reason = -1;
            this.status = -1;
            this.localGen = false;
            this.configInfo = null;
            this.lastRssi = -127;
            this.lastLinkSpeed = -1;
            this.lastFreq = -1;
            this.supplicantStateChangesBitmask = 0;
            this.startTimeMillis = 0L;
            this.frameworkDisconnectReason = 0;
            this.associationTimedOut = false;
            this.authFailureReason = 0;
            this.lastScore = -1;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.type != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.type);
            }
            if (this.reason != -1) {
                codedOutputByteBufferNano.writeInt32(2, this.reason);
            }
            if (this.status != -1) {
                codedOutputByteBufferNano.writeInt32(3, this.status);
            }
            if (this.localGen) {
                codedOutputByteBufferNano.writeBool(4, this.localGen);
            }
            if (this.configInfo != null) {
                codedOutputByteBufferNano.writeMessage(5, this.configInfo);
            }
            if (this.lastRssi != -127) {
                codedOutputByteBufferNano.writeInt32(6, this.lastRssi);
            }
            if (this.lastLinkSpeed != -1) {
                codedOutputByteBufferNano.writeInt32(7, this.lastLinkSpeed);
            }
            if (this.lastFreq != -1) {
                codedOutputByteBufferNano.writeInt32(8, this.lastFreq);
            }
            if (this.supplicantStateChangesBitmask != 0) {
                codedOutputByteBufferNano.writeUInt32(9, this.supplicantStateChangesBitmask);
            }
            if (this.startTimeMillis != 0) {
                codedOutputByteBufferNano.writeInt64(10, this.startTimeMillis);
            }
            if (this.frameworkDisconnectReason != 0) {
                codedOutputByteBufferNano.writeInt32(11, this.frameworkDisconnectReason);
            }
            if (this.associationTimedOut) {
                codedOutputByteBufferNano.writeBool(12, this.associationTimedOut);
            }
            if (this.authFailureReason != 0) {
                codedOutputByteBufferNano.writeInt32(13, this.authFailureReason);
            }
            if (this.lastScore != -1) {
                codedOutputByteBufferNano.writeInt32(14, this.lastScore);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.type != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.type);
            }
            if (this.reason != -1) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.reason);
            }
            if (this.status != -1) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.status);
            }
            if (this.localGen) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(4, this.localGen);
            }
            if (this.configInfo != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, this.configInfo);
            }
            if (this.lastRssi != -127) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.lastRssi);
            }
            if (this.lastLinkSpeed != -1) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.lastLinkSpeed);
            }
            if (this.lastFreq != -1) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.lastFreq);
            }
            if (this.supplicantStateChangesBitmask != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(9, this.supplicantStateChangesBitmask);
            }
            if (this.startTimeMillis != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(10, this.startTimeMillis);
            }
            if (this.frameworkDisconnectReason != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, this.frameworkDisconnectReason);
            }
            if (this.associationTimedOut) {
                computeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(12, this.associationTimedOut);
            }
            if (this.authFailureReason != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, this.authFailureReason);
            }
            return this.lastScore != -1 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(14, this.lastScore) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public StaEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 8:
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                                this.type = readInt32;
                                break;
                        }
                    case 16:
                        this.reason = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.status = codedInputByteBufferNano.readInt32();
                        break;
                    case 32:
                        this.localGen = codedInputByteBufferNano.readBool();
                        break;
                    case 42:
                        if (this.configInfo == null) {
                            this.configInfo = new ConfigInfo();
                        }
                        codedInputByteBufferNano.readMessage(this.configInfo);
                        break;
                    case 48:
                        this.lastRssi = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.lastLinkSpeed = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.lastFreq = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.supplicantStateChangesBitmask = codedInputByteBufferNano.readUInt32();
                        break;
                    case 80:
                        this.startTimeMillis = codedInputByteBufferNano.readInt64();
                        break;
                    case 88:
                        int readInt322 = codedInputByteBufferNano.readInt32();
                        switch (readInt322) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.frameworkDisconnectReason = readInt322;
                                break;
                        }
                    case 96:
                        this.associationTimedOut = codedInputByteBufferNano.readBool();
                        break;
                    case 104:
                        int readInt323 = codedInputByteBufferNano.readInt32();
                        switch (readInt323) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.authFailureReason = readInt323;
                                break;
                        }
                    case 112:
                        this.lastScore = codedInputByteBufferNano.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static StaEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (StaEvent) MessageNano.mergeFrom(new StaEvent(), bArr);
        }

        public static StaEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new StaEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WifiAwareLog extends MessageNano {
        public static final int ALREADY_ENABLED = 11;
        public static final int FOLLOWUP_TX_QUEUE_FULL = 12;
        public static final int INTERNAL_FAILURE = 2;
        public static final int INVALID_ARGS = 6;
        public static final int INVALID_NDP_ID = 8;
        public static final int INVALID_PEER_ID = 7;
        public static final int INVALID_SESSION_ID = 4;
        public static final int NAN_NOT_ALLOWED = 9;
        public static final int NO_OTA_ACK = 10;
        public static final int NO_RESOURCES_AVAILABLE = 5;
        public static final int PROTOCOL_FAILURE = 3;
        public static final int SUCCESS = 1;
        public static final int UNKNOWN = 0;
        public static final int UNKNOWN_HAL_STATUS = 14;
        public static final int UNSUPPORTED_CONCURRENCY_NAN_DISABLED = 13;
        private static volatile WifiAwareLog[] _emptyArray;
        public long availableTimeMs;
        public long enabledTimeMs;
        public HistogramBucket[] histogramAttachDurationMs;
        public NanStatusHistogramBucket[] histogramAttachSessionStatus;
        public HistogramBucket[] histogramAwareAvailableDurationMs;
        public HistogramBucket[] histogramAwareEnabledDurationMs;
        public HistogramBucket[] histogramNdpCreationTimeMs;
        public HistogramBucket[] histogramNdpSessionDataUsageMb;
        public HistogramBucket[] histogramNdpSessionDurationMs;
        public HistogramBucket[] histogramPublishSessionDurationMs;
        public NanStatusHistogramBucket[] histogramPublishStatus;
        public NanStatusHistogramBucket[] histogramRequestNdpOobStatus;
        public NanStatusHistogramBucket[] histogramRequestNdpStatus;
        public HistogramBucket[] histogramSubscribeGeofenceMax;
        public HistogramBucket[] histogramSubscribeGeofenceMin;
        public HistogramBucket[] histogramSubscribeSessionDurationMs;
        public NanStatusHistogramBucket[] histogramSubscribeStatus;
        public int maxConcurrentAttachSessionsInApp;
        public int maxConcurrentDiscoverySessionsInApp;
        public int maxConcurrentDiscoverySessionsInSystem;
        public int maxConcurrentNdiInApp;
        public int maxConcurrentNdiInSystem;
        public int maxConcurrentNdpInApp;
        public int maxConcurrentNdpInSystem;
        public int maxConcurrentNdpPerNdi;
        public int maxConcurrentPublishInApp;
        public int maxConcurrentPublishInSystem;
        public int maxConcurrentPublishWithRangingInApp;
        public int maxConcurrentPublishWithRangingInSystem;
        public int maxConcurrentSecureNdpInApp;
        public int maxConcurrentSecureNdpInSystem;
        public int maxConcurrentSubscribeInApp;
        public int maxConcurrentSubscribeInSystem;
        public int maxConcurrentSubscribeWithRangingInApp;
        public int maxConcurrentSubscribeWithRangingInSystem;
        public long ndpCreationTimeMsMax;
        public long ndpCreationTimeMsMin;
        public long ndpCreationTimeMsNumSamples;
        public long ndpCreationTimeMsSum;
        public long ndpCreationTimeMsSumOfSq;
        public int numApps;
        public int numAppsUsingIdentityCallback;
        public int numAppsWithDiscoverySessionFailureOutOfResources;
        public int numMatchesWithRanging;
        public int numMatchesWithoutRangingForRangingEnabledSubscribes;
        public int numSubscribesWithRanging;

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class HistogramBucket extends MessageNano {
            private static volatile HistogramBucket[] _emptyArray;
            public int count;
            public long end;
            public long start;

            public static HistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new HistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public HistogramBucket() {
                clear();
            }

            public HistogramBucket clear() {
                this.start = 0L;
                this.end = 0L;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.start != 0) {
                    codedOutputByteBufferNano.writeInt64(1, this.start);
                }
                if (this.end != 0) {
                    codedOutputByteBufferNano.writeInt64(2, this.end);
                }
                if (this.count != 0) {
                    codedOutputByteBufferNano.writeInt32(3, this.count);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.start != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.start);
                }
                if (this.end != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, this.end);
                }
                return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.count) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public HistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        this.start = codedInputByteBufferNano.readInt64();
                    } else if (readTag == 16) {
                        this.end = codedInputByteBufferNano.readInt64();
                    } else if (readTag != 24) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.count = codedInputByteBufferNano.readInt32();
                    }
                }
            }

            public static HistogramBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (HistogramBucket) MessageNano.mergeFrom(new HistogramBucket(), bArr);
            }

            public static HistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new HistogramBucket().mergeFrom(codedInputByteBufferNano);
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class NanStatusHistogramBucket extends MessageNano {
            private static volatile NanStatusHistogramBucket[] _emptyArray;
            public int count;
            public int nanStatusType;

            public static NanStatusHistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new NanStatusHistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public NanStatusHistogramBucket() {
                clear();
            }

            public NanStatusHistogramBucket clear() {
                this.nanStatusType = 0;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.nanStatusType != 0) {
                    codedOutputByteBufferNano.writeInt32(1, this.nanStatusType);
                }
                if (this.count != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.count);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.nanStatusType != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.nanStatusType);
                }
                return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.count) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public NanStatusHistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                                this.nanStatusType = readInt32;
                                break;
                        }
                    } else if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.count = codedInputByteBufferNano.readInt32();
                    }
                }
            }

            public static NanStatusHistogramBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (NanStatusHistogramBucket) MessageNano.mergeFrom(new NanStatusHistogramBucket(), bArr);
            }

            public static NanStatusHistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new NanStatusHistogramBucket().mergeFrom(codedInputByteBufferNano);
            }
        }

        public static WifiAwareLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiAwareLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WifiAwareLog() {
            clear();
        }

        public WifiAwareLog clear() {
            this.numApps = 0;
            this.numAppsUsingIdentityCallback = 0;
            this.maxConcurrentAttachSessionsInApp = 0;
            this.histogramAttachSessionStatus = NanStatusHistogramBucket.emptyArray();
            this.maxConcurrentPublishInApp = 0;
            this.maxConcurrentSubscribeInApp = 0;
            this.maxConcurrentDiscoverySessionsInApp = 0;
            this.maxConcurrentPublishInSystem = 0;
            this.maxConcurrentSubscribeInSystem = 0;
            this.maxConcurrentDiscoverySessionsInSystem = 0;
            this.histogramPublishStatus = NanStatusHistogramBucket.emptyArray();
            this.histogramSubscribeStatus = NanStatusHistogramBucket.emptyArray();
            this.numAppsWithDiscoverySessionFailureOutOfResources = 0;
            this.histogramRequestNdpStatus = NanStatusHistogramBucket.emptyArray();
            this.histogramRequestNdpOobStatus = NanStatusHistogramBucket.emptyArray();
            this.maxConcurrentNdiInApp = 0;
            this.maxConcurrentNdiInSystem = 0;
            this.maxConcurrentNdpInApp = 0;
            this.maxConcurrentNdpInSystem = 0;
            this.maxConcurrentSecureNdpInApp = 0;
            this.maxConcurrentSecureNdpInSystem = 0;
            this.maxConcurrentNdpPerNdi = 0;
            this.histogramAwareAvailableDurationMs = HistogramBucket.emptyArray();
            this.histogramAwareEnabledDurationMs = HistogramBucket.emptyArray();
            this.histogramAttachDurationMs = HistogramBucket.emptyArray();
            this.histogramPublishSessionDurationMs = HistogramBucket.emptyArray();
            this.histogramSubscribeSessionDurationMs = HistogramBucket.emptyArray();
            this.histogramNdpSessionDurationMs = HistogramBucket.emptyArray();
            this.histogramNdpSessionDataUsageMb = HistogramBucket.emptyArray();
            this.histogramNdpCreationTimeMs = HistogramBucket.emptyArray();
            this.ndpCreationTimeMsMin = 0L;
            this.ndpCreationTimeMsMax = 0L;
            this.ndpCreationTimeMsSum = 0L;
            this.ndpCreationTimeMsSumOfSq = 0L;
            this.ndpCreationTimeMsNumSamples = 0L;
            this.availableTimeMs = 0L;
            this.enabledTimeMs = 0L;
            this.maxConcurrentPublishWithRangingInApp = 0;
            this.maxConcurrentSubscribeWithRangingInApp = 0;
            this.maxConcurrentPublishWithRangingInSystem = 0;
            this.maxConcurrentSubscribeWithRangingInSystem = 0;
            this.histogramSubscribeGeofenceMin = HistogramBucket.emptyArray();
            this.histogramSubscribeGeofenceMax = HistogramBucket.emptyArray();
            this.numSubscribesWithRanging = 0;
            this.numMatchesWithRanging = 0;
            this.numMatchesWithoutRangingForRangingEnabledSubscribes = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numApps != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numApps);
            }
            if (this.numAppsUsingIdentityCallback != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.numAppsUsingIdentityCallback);
            }
            if (this.maxConcurrentAttachSessionsInApp != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.maxConcurrentAttachSessionsInApp);
            }
            if (this.histogramAttachSessionStatus != null && this.histogramAttachSessionStatus.length > 0) {
                for (int i = 0; i < this.histogramAttachSessionStatus.length; i++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket = this.histogramAttachSessionStatus[i];
                    if (nanStatusHistogramBucket != null) {
                        codedOutputByteBufferNano.writeMessage(4, nanStatusHistogramBucket);
                    }
                }
            }
            if (this.maxConcurrentPublishInApp != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.maxConcurrentPublishInApp);
            }
            if (this.maxConcurrentSubscribeInApp != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.maxConcurrentSubscribeInApp);
            }
            if (this.maxConcurrentDiscoverySessionsInApp != 0) {
                codedOutputByteBufferNano.writeInt32(7, this.maxConcurrentDiscoverySessionsInApp);
            }
            if (this.maxConcurrentPublishInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.maxConcurrentPublishInSystem);
            }
            if (this.maxConcurrentSubscribeInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(9, this.maxConcurrentSubscribeInSystem);
            }
            if (this.maxConcurrentDiscoverySessionsInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(10, this.maxConcurrentDiscoverySessionsInSystem);
            }
            if (this.histogramPublishStatus != null && this.histogramPublishStatus.length > 0) {
                for (int i2 = 0; i2 < this.histogramPublishStatus.length; i2++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket2 = this.histogramPublishStatus[i2];
                    if (nanStatusHistogramBucket2 != null) {
                        codedOutputByteBufferNano.writeMessage(11, nanStatusHistogramBucket2);
                    }
                }
            }
            if (this.histogramSubscribeStatus != null && this.histogramSubscribeStatus.length > 0) {
                for (int i3 = 0; i3 < this.histogramSubscribeStatus.length; i3++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket3 = this.histogramSubscribeStatus[i3];
                    if (nanStatusHistogramBucket3 != null) {
                        codedOutputByteBufferNano.writeMessage(12, nanStatusHistogramBucket3);
                    }
                }
            }
            if (this.numAppsWithDiscoverySessionFailureOutOfResources != 0) {
                codedOutputByteBufferNano.writeInt32(13, this.numAppsWithDiscoverySessionFailureOutOfResources);
            }
            if (this.histogramRequestNdpStatus != null && this.histogramRequestNdpStatus.length > 0) {
                for (int i4 = 0; i4 < this.histogramRequestNdpStatus.length; i4++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket4 = this.histogramRequestNdpStatus[i4];
                    if (nanStatusHistogramBucket4 != null) {
                        codedOutputByteBufferNano.writeMessage(14, nanStatusHistogramBucket4);
                    }
                }
            }
            if (this.histogramRequestNdpOobStatus != null && this.histogramRequestNdpOobStatus.length > 0) {
                for (int i5 = 0; i5 < this.histogramRequestNdpOobStatus.length; i5++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket5 = this.histogramRequestNdpOobStatus[i5];
                    if (nanStatusHistogramBucket5 != null) {
                        codedOutputByteBufferNano.writeMessage(15, nanStatusHistogramBucket5);
                    }
                }
            }
            if (this.maxConcurrentNdiInApp != 0) {
                codedOutputByteBufferNano.writeInt32(19, this.maxConcurrentNdiInApp);
            }
            if (this.maxConcurrentNdiInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(20, this.maxConcurrentNdiInSystem);
            }
            if (this.maxConcurrentNdpInApp != 0) {
                codedOutputByteBufferNano.writeInt32(21, this.maxConcurrentNdpInApp);
            }
            if (this.maxConcurrentNdpInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(22, this.maxConcurrentNdpInSystem);
            }
            if (this.maxConcurrentSecureNdpInApp != 0) {
                codedOutputByteBufferNano.writeInt32(23, this.maxConcurrentSecureNdpInApp);
            }
            if (this.maxConcurrentSecureNdpInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(24, this.maxConcurrentSecureNdpInSystem);
            }
            if (this.maxConcurrentNdpPerNdi != 0) {
                codedOutputByteBufferNano.writeInt32(25, this.maxConcurrentNdpPerNdi);
            }
            if (this.histogramAwareAvailableDurationMs != null && this.histogramAwareAvailableDurationMs.length > 0) {
                for (int i6 = 0; i6 < this.histogramAwareAvailableDurationMs.length; i6++) {
                    HistogramBucket histogramBucket = this.histogramAwareAvailableDurationMs[i6];
                    if (histogramBucket != null) {
                        codedOutputByteBufferNano.writeMessage(26, histogramBucket);
                    }
                }
            }
            if (this.histogramAwareEnabledDurationMs != null && this.histogramAwareEnabledDurationMs.length > 0) {
                for (int i7 = 0; i7 < this.histogramAwareEnabledDurationMs.length; i7++) {
                    HistogramBucket histogramBucket2 = this.histogramAwareEnabledDurationMs[i7];
                    if (histogramBucket2 != null) {
                        codedOutputByteBufferNano.writeMessage(27, histogramBucket2);
                    }
                }
            }
            if (this.histogramAttachDurationMs != null && this.histogramAttachDurationMs.length > 0) {
                for (int i8 = 0; i8 < this.histogramAttachDurationMs.length; i8++) {
                    HistogramBucket histogramBucket3 = this.histogramAttachDurationMs[i8];
                    if (histogramBucket3 != null) {
                        codedOutputByteBufferNano.writeMessage(28, histogramBucket3);
                    }
                }
            }
            if (this.histogramPublishSessionDurationMs != null && this.histogramPublishSessionDurationMs.length > 0) {
                for (int i9 = 0; i9 < this.histogramPublishSessionDurationMs.length; i9++) {
                    HistogramBucket histogramBucket4 = this.histogramPublishSessionDurationMs[i9];
                    if (histogramBucket4 != null) {
                        codedOutputByteBufferNano.writeMessage(29, histogramBucket4);
                    }
                }
            }
            if (this.histogramSubscribeSessionDurationMs != null && this.histogramSubscribeSessionDurationMs.length > 0) {
                for (int i10 = 0; i10 < this.histogramSubscribeSessionDurationMs.length; i10++) {
                    HistogramBucket histogramBucket5 = this.histogramSubscribeSessionDurationMs[i10];
                    if (histogramBucket5 != null) {
                        codedOutputByteBufferNano.writeMessage(30, histogramBucket5);
                    }
                }
            }
            if (this.histogramNdpSessionDurationMs != null && this.histogramNdpSessionDurationMs.length > 0) {
                for (int i11 = 0; i11 < this.histogramNdpSessionDurationMs.length; i11++) {
                    HistogramBucket histogramBucket6 = this.histogramNdpSessionDurationMs[i11];
                    if (histogramBucket6 != null) {
                        codedOutputByteBufferNano.writeMessage(31, histogramBucket6);
                    }
                }
            }
            if (this.histogramNdpSessionDataUsageMb != null && this.histogramNdpSessionDataUsageMb.length > 0) {
                for (int i12 = 0; i12 < this.histogramNdpSessionDataUsageMb.length; i12++) {
                    HistogramBucket histogramBucket7 = this.histogramNdpSessionDataUsageMb[i12];
                    if (histogramBucket7 != null) {
                        codedOutputByteBufferNano.writeMessage(32, histogramBucket7);
                    }
                }
            }
            if (this.histogramNdpCreationTimeMs != null && this.histogramNdpCreationTimeMs.length > 0) {
                for (int i13 = 0; i13 < this.histogramNdpCreationTimeMs.length; i13++) {
                    HistogramBucket histogramBucket8 = this.histogramNdpCreationTimeMs[i13];
                    if (histogramBucket8 != null) {
                        codedOutputByteBufferNano.writeMessage(33, histogramBucket8);
                    }
                }
            }
            if (this.ndpCreationTimeMsMin != 0) {
                codedOutputByteBufferNano.writeInt64(34, this.ndpCreationTimeMsMin);
            }
            if (this.ndpCreationTimeMsMax != 0) {
                codedOutputByteBufferNano.writeInt64(35, this.ndpCreationTimeMsMax);
            }
            if (this.ndpCreationTimeMsSum != 0) {
                codedOutputByteBufferNano.writeInt64(36, this.ndpCreationTimeMsSum);
            }
            if (this.ndpCreationTimeMsSumOfSq != 0) {
                codedOutputByteBufferNano.writeInt64(37, this.ndpCreationTimeMsSumOfSq);
            }
            if (this.ndpCreationTimeMsNumSamples != 0) {
                codedOutputByteBufferNano.writeInt64(38, this.ndpCreationTimeMsNumSamples);
            }
            if (this.availableTimeMs != 0) {
                codedOutputByteBufferNano.writeInt64(39, this.availableTimeMs);
            }
            if (this.enabledTimeMs != 0) {
                codedOutputByteBufferNano.writeInt64(40, this.enabledTimeMs);
            }
            if (this.maxConcurrentPublishWithRangingInApp != 0) {
                codedOutputByteBufferNano.writeInt32(41, this.maxConcurrentPublishWithRangingInApp);
            }
            if (this.maxConcurrentSubscribeWithRangingInApp != 0) {
                codedOutputByteBufferNano.writeInt32(42, this.maxConcurrentSubscribeWithRangingInApp);
            }
            if (this.maxConcurrentPublishWithRangingInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(43, this.maxConcurrentPublishWithRangingInSystem);
            }
            if (this.maxConcurrentSubscribeWithRangingInSystem != 0) {
                codedOutputByteBufferNano.writeInt32(44, this.maxConcurrentSubscribeWithRangingInSystem);
            }
            if (this.histogramSubscribeGeofenceMin != null && this.histogramSubscribeGeofenceMin.length > 0) {
                for (int i14 = 0; i14 < this.histogramSubscribeGeofenceMin.length; i14++) {
                    HistogramBucket histogramBucket9 = this.histogramSubscribeGeofenceMin[i14];
                    if (histogramBucket9 != null) {
                        codedOutputByteBufferNano.writeMessage(45, histogramBucket9);
                    }
                }
            }
            if (this.histogramSubscribeGeofenceMax != null && this.histogramSubscribeGeofenceMax.length > 0) {
                for (int i15 = 0; i15 < this.histogramSubscribeGeofenceMax.length; i15++) {
                    HistogramBucket histogramBucket10 = this.histogramSubscribeGeofenceMax[i15];
                    if (histogramBucket10 != null) {
                        codedOutputByteBufferNano.writeMessage(46, histogramBucket10);
                    }
                }
            }
            if (this.numSubscribesWithRanging != 0) {
                codedOutputByteBufferNano.writeInt32(47, this.numSubscribesWithRanging);
            }
            if (this.numMatchesWithRanging != 0) {
                codedOutputByteBufferNano.writeInt32(48, this.numMatchesWithRanging);
            }
            if (this.numMatchesWithoutRangingForRangingEnabledSubscribes != 0) {
                codedOutputByteBufferNano.writeInt32(49, this.numMatchesWithoutRangingForRangingEnabledSubscribes);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numApps != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numApps);
            }
            if (this.numAppsUsingIdentityCallback != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.numAppsUsingIdentityCallback);
            }
            if (this.maxConcurrentAttachSessionsInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.maxConcurrentAttachSessionsInApp);
            }
            if (this.histogramAttachSessionStatus != null && this.histogramAttachSessionStatus.length > 0) {
                int i = computeSerializedSize;
                for (int i2 = 0; i2 < this.histogramAttachSessionStatus.length; i2++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket = this.histogramAttachSessionStatus[i2];
                    if (nanStatusHistogramBucket != null) {
                        i += CodedOutputByteBufferNano.computeMessageSize(4, nanStatusHistogramBucket);
                    }
                }
                computeSerializedSize = i;
            }
            if (this.maxConcurrentPublishInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.maxConcurrentPublishInApp);
            }
            if (this.maxConcurrentSubscribeInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.maxConcurrentSubscribeInApp);
            }
            if (this.maxConcurrentDiscoverySessionsInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.maxConcurrentDiscoverySessionsInApp);
            }
            if (this.maxConcurrentPublishInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(8, this.maxConcurrentPublishInSystem);
            }
            if (this.maxConcurrentSubscribeInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.maxConcurrentSubscribeInSystem);
            }
            if (this.maxConcurrentDiscoverySessionsInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(10, this.maxConcurrentDiscoverySessionsInSystem);
            }
            if (this.histogramPublishStatus != null && this.histogramPublishStatus.length > 0) {
                int i3 = computeSerializedSize;
                for (int i4 = 0; i4 < this.histogramPublishStatus.length; i4++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket2 = this.histogramPublishStatus[i4];
                    if (nanStatusHistogramBucket2 != null) {
                        i3 += CodedOutputByteBufferNano.computeMessageSize(11, nanStatusHistogramBucket2);
                    }
                }
                computeSerializedSize = i3;
            }
            if (this.histogramSubscribeStatus != null && this.histogramSubscribeStatus.length > 0) {
                int i5 = computeSerializedSize;
                for (int i6 = 0; i6 < this.histogramSubscribeStatus.length; i6++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket3 = this.histogramSubscribeStatus[i6];
                    if (nanStatusHistogramBucket3 != null) {
                        i5 += CodedOutputByteBufferNano.computeMessageSize(12, nanStatusHistogramBucket3);
                    }
                }
                computeSerializedSize = i5;
            }
            if (this.numAppsWithDiscoverySessionFailureOutOfResources != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, this.numAppsWithDiscoverySessionFailureOutOfResources);
            }
            if (this.histogramRequestNdpStatus != null && this.histogramRequestNdpStatus.length > 0) {
                int i7 = computeSerializedSize;
                for (int i8 = 0; i8 < this.histogramRequestNdpStatus.length; i8++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket4 = this.histogramRequestNdpStatus[i8];
                    if (nanStatusHistogramBucket4 != null) {
                        i7 += CodedOutputByteBufferNano.computeMessageSize(14, nanStatusHistogramBucket4);
                    }
                }
                computeSerializedSize = i7;
            }
            if (this.histogramRequestNdpOobStatus != null && this.histogramRequestNdpOobStatus.length > 0) {
                int i9 = computeSerializedSize;
                for (int i10 = 0; i10 < this.histogramRequestNdpOobStatus.length; i10++) {
                    NanStatusHistogramBucket nanStatusHistogramBucket5 = this.histogramRequestNdpOobStatus[i10];
                    if (nanStatusHistogramBucket5 != null) {
                        i9 += CodedOutputByteBufferNano.computeMessageSize(15, nanStatusHistogramBucket5);
                    }
                }
                computeSerializedSize = i9;
            }
            if (this.maxConcurrentNdiInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(19, this.maxConcurrentNdiInApp);
            }
            if (this.maxConcurrentNdiInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(20, this.maxConcurrentNdiInSystem);
            }
            if (this.maxConcurrentNdpInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(21, this.maxConcurrentNdpInApp);
            }
            if (this.maxConcurrentNdpInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(22, this.maxConcurrentNdpInSystem);
            }
            if (this.maxConcurrentSecureNdpInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(23, this.maxConcurrentSecureNdpInApp);
            }
            if (this.maxConcurrentSecureNdpInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(24, this.maxConcurrentSecureNdpInSystem);
            }
            if (this.maxConcurrentNdpPerNdi != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(25, this.maxConcurrentNdpPerNdi);
            }
            if (this.histogramAwareAvailableDurationMs != null && this.histogramAwareAvailableDurationMs.length > 0) {
                int i11 = computeSerializedSize;
                for (int i12 = 0; i12 < this.histogramAwareAvailableDurationMs.length; i12++) {
                    HistogramBucket histogramBucket = this.histogramAwareAvailableDurationMs[i12];
                    if (histogramBucket != null) {
                        i11 += CodedOutputByteBufferNano.computeMessageSize(26, histogramBucket);
                    }
                }
                computeSerializedSize = i11;
            }
            if (this.histogramAwareEnabledDurationMs != null && this.histogramAwareEnabledDurationMs.length > 0) {
                int i13 = computeSerializedSize;
                for (int i14 = 0; i14 < this.histogramAwareEnabledDurationMs.length; i14++) {
                    HistogramBucket histogramBucket2 = this.histogramAwareEnabledDurationMs[i14];
                    if (histogramBucket2 != null) {
                        i13 += CodedOutputByteBufferNano.computeMessageSize(27, histogramBucket2);
                    }
                }
                computeSerializedSize = i13;
            }
            if (this.histogramAttachDurationMs != null && this.histogramAttachDurationMs.length > 0) {
                int i15 = computeSerializedSize;
                for (int i16 = 0; i16 < this.histogramAttachDurationMs.length; i16++) {
                    HistogramBucket histogramBucket3 = this.histogramAttachDurationMs[i16];
                    if (histogramBucket3 != null) {
                        i15 += CodedOutputByteBufferNano.computeMessageSize(28, histogramBucket3);
                    }
                }
                computeSerializedSize = i15;
            }
            if (this.histogramPublishSessionDurationMs != null && this.histogramPublishSessionDurationMs.length > 0) {
                int i17 = computeSerializedSize;
                for (int i18 = 0; i18 < this.histogramPublishSessionDurationMs.length; i18++) {
                    HistogramBucket histogramBucket4 = this.histogramPublishSessionDurationMs[i18];
                    if (histogramBucket4 != null) {
                        i17 += CodedOutputByteBufferNano.computeMessageSize(29, histogramBucket4);
                    }
                }
                computeSerializedSize = i17;
            }
            if (this.histogramSubscribeSessionDurationMs != null && this.histogramSubscribeSessionDurationMs.length > 0) {
                int i19 = computeSerializedSize;
                for (int i20 = 0; i20 < this.histogramSubscribeSessionDurationMs.length; i20++) {
                    HistogramBucket histogramBucket5 = this.histogramSubscribeSessionDurationMs[i20];
                    if (histogramBucket5 != null) {
                        i19 += CodedOutputByteBufferNano.computeMessageSize(30, histogramBucket5);
                    }
                }
                computeSerializedSize = i19;
            }
            if (this.histogramNdpSessionDurationMs != null && this.histogramNdpSessionDurationMs.length > 0) {
                int i21 = computeSerializedSize;
                for (int i22 = 0; i22 < this.histogramNdpSessionDurationMs.length; i22++) {
                    HistogramBucket histogramBucket6 = this.histogramNdpSessionDurationMs[i22];
                    if (histogramBucket6 != null) {
                        i21 += CodedOutputByteBufferNano.computeMessageSize(31, histogramBucket6);
                    }
                }
                computeSerializedSize = i21;
            }
            if (this.histogramNdpSessionDataUsageMb != null && this.histogramNdpSessionDataUsageMb.length > 0) {
                int i23 = computeSerializedSize;
                for (int i24 = 0; i24 < this.histogramNdpSessionDataUsageMb.length; i24++) {
                    HistogramBucket histogramBucket7 = this.histogramNdpSessionDataUsageMb[i24];
                    if (histogramBucket7 != null) {
                        i23 += CodedOutputByteBufferNano.computeMessageSize(32, histogramBucket7);
                    }
                }
                computeSerializedSize = i23;
            }
            if (this.histogramNdpCreationTimeMs != null && this.histogramNdpCreationTimeMs.length > 0) {
                int i25 = computeSerializedSize;
                for (int i26 = 0; i26 < this.histogramNdpCreationTimeMs.length; i26++) {
                    HistogramBucket histogramBucket8 = this.histogramNdpCreationTimeMs[i26];
                    if (histogramBucket8 != null) {
                        i25 += CodedOutputByteBufferNano.computeMessageSize(33, histogramBucket8);
                    }
                }
                computeSerializedSize = i25;
            }
            if (this.ndpCreationTimeMsMin != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(34, this.ndpCreationTimeMsMin);
            }
            if (this.ndpCreationTimeMsMax != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(35, this.ndpCreationTimeMsMax);
            }
            if (this.ndpCreationTimeMsSum != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(36, this.ndpCreationTimeMsSum);
            }
            if (this.ndpCreationTimeMsSumOfSq != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(37, this.ndpCreationTimeMsSumOfSq);
            }
            if (this.ndpCreationTimeMsNumSamples != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(38, this.ndpCreationTimeMsNumSamples);
            }
            if (this.availableTimeMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(39, this.availableTimeMs);
            }
            if (this.enabledTimeMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(40, this.enabledTimeMs);
            }
            if (this.maxConcurrentPublishWithRangingInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(41, this.maxConcurrentPublishWithRangingInApp);
            }
            if (this.maxConcurrentSubscribeWithRangingInApp != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(42, this.maxConcurrentSubscribeWithRangingInApp);
            }
            if (this.maxConcurrentPublishWithRangingInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(43, this.maxConcurrentPublishWithRangingInSystem);
            }
            if (this.maxConcurrentSubscribeWithRangingInSystem != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(44, this.maxConcurrentSubscribeWithRangingInSystem);
            }
            if (this.histogramSubscribeGeofenceMin != null && this.histogramSubscribeGeofenceMin.length > 0) {
                int i27 = computeSerializedSize;
                for (int i28 = 0; i28 < this.histogramSubscribeGeofenceMin.length; i28++) {
                    HistogramBucket histogramBucket9 = this.histogramSubscribeGeofenceMin[i28];
                    if (histogramBucket9 != null) {
                        i27 += CodedOutputByteBufferNano.computeMessageSize(45, histogramBucket9);
                    }
                }
                computeSerializedSize = i27;
            }
            if (this.histogramSubscribeGeofenceMax != null && this.histogramSubscribeGeofenceMax.length > 0) {
                for (int i29 = 0; i29 < this.histogramSubscribeGeofenceMax.length; i29++) {
                    HistogramBucket histogramBucket10 = this.histogramSubscribeGeofenceMax[i29];
                    if (histogramBucket10 != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(46, histogramBucket10);
                    }
                }
            }
            if (this.numSubscribesWithRanging != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(47, this.numSubscribesWithRanging);
            }
            if (this.numMatchesWithRanging != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(48, this.numMatchesWithRanging);
            }
            return this.numMatchesWithoutRangingForRangingEnabledSubscribes != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(49, this.numMatchesWithoutRangingForRangingEnabledSubscribes) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiAwareLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                switch (readTag) {
                    case 0:
                        return this;
                    case 8:
                        this.numApps = codedInputByteBufferNano.readInt32();
                        break;
                    case 16:
                        this.numAppsUsingIdentityCallback = codedInputByteBufferNano.readInt32();
                        break;
                    case 24:
                        this.maxConcurrentAttachSessionsInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 34:
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                        int length = this.histogramAttachSessionStatus == null ? 0 : this.histogramAttachSessionStatus.length;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr = new NanStatusHistogramBucket[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.histogramAttachSessionStatus, 0, nanStatusHistogramBucketArr, 0, length);
                        }
                        while (length < nanStatusHistogramBucketArr.length - 1) {
                            nanStatusHistogramBucketArr[length] = new NanStatusHistogramBucket();
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr[length]);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        nanStatusHistogramBucketArr[length] = new NanStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr[length]);
                        this.histogramAttachSessionStatus = nanStatusHistogramBucketArr;
                        break;
                    case 40:
                        this.maxConcurrentPublishInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 48:
                        this.maxConcurrentSubscribeInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 56:
                        this.maxConcurrentDiscoverySessionsInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 64:
                        this.maxConcurrentPublishInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 72:
                        this.maxConcurrentSubscribeInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 80:
                        this.maxConcurrentDiscoverySessionsInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 90:
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                        int length2 = this.histogramPublishStatus == null ? 0 : this.histogramPublishStatus.length;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr2 = new NanStatusHistogramBucket[repeatedFieldArrayLength2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.histogramPublishStatus, 0, nanStatusHistogramBucketArr2, 0, length2);
                        }
                        while (length2 < nanStatusHistogramBucketArr2.length - 1) {
                            nanStatusHistogramBucketArr2[length2] = new NanStatusHistogramBucket();
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr2[length2]);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        nanStatusHistogramBucketArr2[length2] = new NanStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr2[length2]);
                        this.histogramPublishStatus = nanStatusHistogramBucketArr2;
                        break;
                    case 98:
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 98);
                        int length3 = this.histogramSubscribeStatus == null ? 0 : this.histogramSubscribeStatus.length;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr3 = new NanStatusHistogramBucket[repeatedFieldArrayLength3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.histogramSubscribeStatus, 0, nanStatusHistogramBucketArr3, 0, length3);
                        }
                        while (length3 < nanStatusHistogramBucketArr3.length - 1) {
                            nanStatusHistogramBucketArr3[length3] = new NanStatusHistogramBucket();
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr3[length3]);
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        nanStatusHistogramBucketArr3[length3] = new NanStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr3[length3]);
                        this.histogramSubscribeStatus = nanStatusHistogramBucketArr3;
                        break;
                    case 104:
                        this.numAppsWithDiscoverySessionFailureOutOfResources = codedInputByteBufferNano.readInt32();
                        break;
                    case 114:
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 114);
                        int length4 = this.histogramRequestNdpStatus == null ? 0 : this.histogramRequestNdpStatus.length;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr4 = new NanStatusHistogramBucket[repeatedFieldArrayLength4 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.histogramRequestNdpStatus, 0, nanStatusHistogramBucketArr4, 0, length4);
                        }
                        while (length4 < nanStatusHistogramBucketArr4.length - 1) {
                            nanStatusHistogramBucketArr4[length4] = new NanStatusHistogramBucket();
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr4[length4]);
                            codedInputByteBufferNano.readTag();
                            length4++;
                        }
                        nanStatusHistogramBucketArr4[length4] = new NanStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr4[length4]);
                        this.histogramRequestNdpStatus = nanStatusHistogramBucketArr4;
                        break;
                    case 122:
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 122);
                        int length5 = this.histogramRequestNdpOobStatus == null ? 0 : this.histogramRequestNdpOobStatus.length;
                        NanStatusHistogramBucket[] nanStatusHistogramBucketArr5 = new NanStatusHistogramBucket[repeatedFieldArrayLength5 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.histogramRequestNdpOobStatus, 0, nanStatusHistogramBucketArr5, 0, length5);
                        }
                        while (length5 < nanStatusHistogramBucketArr5.length - 1) {
                            nanStatusHistogramBucketArr5[length5] = new NanStatusHistogramBucket();
                            codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr5[length5]);
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        nanStatusHistogramBucketArr5[length5] = new NanStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(nanStatusHistogramBucketArr5[length5]);
                        this.histogramRequestNdpOobStatus = nanStatusHistogramBucketArr5;
                        break;
                    case 152:
                        this.maxConcurrentNdiInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 160:
                        this.maxConcurrentNdiInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 168:
                        this.maxConcurrentNdpInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 176:
                        this.maxConcurrentNdpInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 184:
                        this.maxConcurrentSecureNdpInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 192:
                        this.maxConcurrentSecureNdpInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case 200:
                        this.maxConcurrentNdpPerNdi = codedInputByteBufferNano.readInt32();
                        break;
                    case 210:
                        int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 210);
                        int length6 = this.histogramAwareAvailableDurationMs == null ? 0 : this.histogramAwareAvailableDurationMs.length;
                        HistogramBucket[] histogramBucketArr = new HistogramBucket[repeatedFieldArrayLength6 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.histogramAwareAvailableDurationMs, 0, histogramBucketArr, 0, length6);
                        }
                        while (length6 < histogramBucketArr.length - 1) {
                            histogramBucketArr[length6] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr[length6]);
                            codedInputByteBufferNano.readTag();
                            length6++;
                        }
                        histogramBucketArr[length6] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr[length6]);
                        this.histogramAwareAvailableDurationMs = histogramBucketArr;
                        break;
                    case 218:
                        int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 218);
                        int length7 = this.histogramAwareEnabledDurationMs == null ? 0 : this.histogramAwareEnabledDurationMs.length;
                        HistogramBucket[] histogramBucketArr2 = new HistogramBucket[repeatedFieldArrayLength7 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.histogramAwareEnabledDurationMs, 0, histogramBucketArr2, 0, length7);
                        }
                        while (length7 < histogramBucketArr2.length - 1) {
                            histogramBucketArr2[length7] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr2[length7]);
                            codedInputByteBufferNano.readTag();
                            length7++;
                        }
                        histogramBucketArr2[length7] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr2[length7]);
                        this.histogramAwareEnabledDurationMs = histogramBucketArr2;
                        break;
                    case 226:
                        int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 226);
                        int length8 = this.histogramAttachDurationMs == null ? 0 : this.histogramAttachDurationMs.length;
                        HistogramBucket[] histogramBucketArr3 = new HistogramBucket[repeatedFieldArrayLength8 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.histogramAttachDurationMs, 0, histogramBucketArr3, 0, length8);
                        }
                        while (length8 < histogramBucketArr3.length - 1) {
                            histogramBucketArr3[length8] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr3[length8]);
                            codedInputByteBufferNano.readTag();
                            length8++;
                        }
                        histogramBucketArr3[length8] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr3[length8]);
                        this.histogramAttachDurationMs = histogramBucketArr3;
                        break;
                    case 234:
                        int repeatedFieldArrayLength9 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 234);
                        int length9 = this.histogramPublishSessionDurationMs == null ? 0 : this.histogramPublishSessionDurationMs.length;
                        HistogramBucket[] histogramBucketArr4 = new HistogramBucket[repeatedFieldArrayLength9 + length9];
                        if (length9 != 0) {
                            System.arraycopy(this.histogramPublishSessionDurationMs, 0, histogramBucketArr4, 0, length9);
                        }
                        while (length9 < histogramBucketArr4.length - 1) {
                            histogramBucketArr4[length9] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr4[length9]);
                            codedInputByteBufferNano.readTag();
                            length9++;
                        }
                        histogramBucketArr4[length9] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr4[length9]);
                        this.histogramPublishSessionDurationMs = histogramBucketArr4;
                        break;
                    case 242:
                        int repeatedFieldArrayLength10 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 242);
                        int length10 = this.histogramSubscribeSessionDurationMs == null ? 0 : this.histogramSubscribeSessionDurationMs.length;
                        HistogramBucket[] histogramBucketArr5 = new HistogramBucket[repeatedFieldArrayLength10 + length10];
                        if (length10 != 0) {
                            System.arraycopy(this.histogramSubscribeSessionDurationMs, 0, histogramBucketArr5, 0, length10);
                        }
                        while (length10 < histogramBucketArr5.length - 1) {
                            histogramBucketArr5[length10] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr5[length10]);
                            codedInputByteBufferNano.readTag();
                            length10++;
                        }
                        histogramBucketArr5[length10] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr5[length10]);
                        this.histogramSubscribeSessionDurationMs = histogramBucketArr5;
                        break;
                    case 250:
                        int repeatedFieldArrayLength11 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 250);
                        int length11 = this.histogramNdpSessionDurationMs == null ? 0 : this.histogramNdpSessionDurationMs.length;
                        HistogramBucket[] histogramBucketArr6 = new HistogramBucket[repeatedFieldArrayLength11 + length11];
                        if (length11 != 0) {
                            System.arraycopy(this.histogramNdpSessionDurationMs, 0, histogramBucketArr6, 0, length11);
                        }
                        while (length11 < histogramBucketArr6.length - 1) {
                            histogramBucketArr6[length11] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr6[length11]);
                            codedInputByteBufferNano.readTag();
                            length11++;
                        }
                        histogramBucketArr6[length11] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr6[length11]);
                        this.histogramNdpSessionDurationMs = histogramBucketArr6;
                        break;
                    case 258:
                        int repeatedFieldArrayLength12 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 258);
                        int length12 = this.histogramNdpSessionDataUsageMb == null ? 0 : this.histogramNdpSessionDataUsageMb.length;
                        HistogramBucket[] histogramBucketArr7 = new HistogramBucket[repeatedFieldArrayLength12 + length12];
                        if (length12 != 0) {
                            System.arraycopy(this.histogramNdpSessionDataUsageMb, 0, histogramBucketArr7, 0, length12);
                        }
                        while (length12 < histogramBucketArr7.length - 1) {
                            histogramBucketArr7[length12] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr7[length12]);
                            codedInputByteBufferNano.readTag();
                            length12++;
                        }
                        histogramBucketArr7[length12] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr7[length12]);
                        this.histogramNdpSessionDataUsageMb = histogramBucketArr7;
                        break;
                    case 266:
                        int repeatedFieldArrayLength13 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 266);
                        int length13 = this.histogramNdpCreationTimeMs == null ? 0 : this.histogramNdpCreationTimeMs.length;
                        HistogramBucket[] histogramBucketArr8 = new HistogramBucket[repeatedFieldArrayLength13 + length13];
                        if (length13 != 0) {
                            System.arraycopy(this.histogramNdpCreationTimeMs, 0, histogramBucketArr8, 0, length13);
                        }
                        while (length13 < histogramBucketArr8.length - 1) {
                            histogramBucketArr8[length13] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr8[length13]);
                            codedInputByteBufferNano.readTag();
                            length13++;
                        }
                        histogramBucketArr8[length13] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr8[length13]);
                        this.histogramNdpCreationTimeMs = histogramBucketArr8;
                        break;
                    case 272:
                        this.ndpCreationTimeMsMin = codedInputByteBufferNano.readInt64();
                        break;
                    case 280:
                        this.ndpCreationTimeMsMax = codedInputByteBufferNano.readInt64();
                        break;
                    case 288:
                        this.ndpCreationTimeMsSum = codedInputByteBufferNano.readInt64();
                        break;
                    case 296:
                        this.ndpCreationTimeMsSumOfSq = codedInputByteBufferNano.readInt64();
                        break;
                    case 304:
                        this.ndpCreationTimeMsNumSamples = codedInputByteBufferNano.readInt64();
                        break;
                    case 312:
                        this.availableTimeMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 320:
                        this.enabledTimeMs = codedInputByteBufferNano.readInt64();
                        break;
                    case 328:
                        this.maxConcurrentPublishWithRangingInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case 336:
                        this.maxConcurrentSubscribeWithRangingInApp = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.USER_LOCALE_LIST /* 344 */:
                        this.maxConcurrentPublishWithRangingInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.WINDOW_DOCK_SHORTCUTS /* 352 */:
                        this.maxConcurrentSubscribeWithRangingInSystem = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.ACTION_QS_EDIT_ADD_SPEC /* 362 */:
                        int repeatedFieldArrayLength14 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.ACTION_QS_EDIT_ADD_SPEC);
                        int length14 = this.histogramSubscribeGeofenceMin == null ? 0 : this.histogramSubscribeGeofenceMin.length;
                        HistogramBucket[] histogramBucketArr9 = new HistogramBucket[repeatedFieldArrayLength14 + length14];
                        if (length14 != 0) {
                            System.arraycopy(this.histogramSubscribeGeofenceMin, 0, histogramBucketArr9, 0, length14);
                        }
                        while (length14 < histogramBucketArr9.length - 1) {
                            histogramBucketArr9[length14] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr9[length14]);
                            codedInputByteBufferNano.readTag();
                            length14++;
                        }
                        histogramBucketArr9[length14] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr9[length14]);
                        this.histogramSubscribeGeofenceMin = histogramBucketArr9;
                        break;
                    case MetricsProto.MetricsEvent.SUW_ACCESSIBILITY_DISPLAY_SIZE /* 370 */:
                        int repeatedFieldArrayLength15 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, MetricsProto.MetricsEvent.SUW_ACCESSIBILITY_DISPLAY_SIZE);
                        int length15 = this.histogramSubscribeGeofenceMax == null ? 0 : this.histogramSubscribeGeofenceMax.length;
                        HistogramBucket[] histogramBucketArr10 = new HistogramBucket[repeatedFieldArrayLength15 + length15];
                        if (length15 != 0) {
                            System.arraycopy(this.histogramSubscribeGeofenceMax, 0, histogramBucketArr10, 0, length15);
                        }
                        while (length15 < histogramBucketArr10.length - 1) {
                            histogramBucketArr10[length15] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr10[length15]);
                            codedInputByteBufferNano.readTag();
                            length15++;
                        }
                        histogramBucketArr10[length15] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr10[length15]);
                        this.histogramSubscribeGeofenceMax = histogramBucketArr10;
                        break;
                    case MetricsProto.MetricsEvent.ACTION_SETTINGS_CONDITION_BUTTON /* 376 */:
                        this.numSubscribesWithRanging = codedInputByteBufferNano.readInt32();
                        break;
                    case 384:
                        this.numMatchesWithRanging = codedInputByteBufferNano.readInt32();
                        break;
                    case MetricsProto.MetricsEvent.TUNER_POWER_NOTIFICATION_CONTROLS /* 392 */:
                        this.numMatchesWithoutRangingForRangingEnabledSubscribes = codedInputByteBufferNano.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                        break;
                }
            }
        }

        public static WifiAwareLog parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WifiAwareLog) MessageNano.mergeFrom(new WifiAwareLog(), bArr);
        }

        public static WifiAwareLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WifiAwareLog().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class NumConnectableNetworksBucket extends MessageNano {
        private static volatile NumConnectableNetworksBucket[] _emptyArray;
        public int count;
        public int numConnectableNetworks;

        public static NumConnectableNetworksBucket[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new NumConnectableNetworksBucket[0];
                    }
                }
            }
            return _emptyArray;
        }

        public NumConnectableNetworksBucket() {
            clear();
        }

        public NumConnectableNetworksBucket clear() {
            this.numConnectableNetworks = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numConnectableNetworks != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numConnectableNetworks);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.count);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numConnectableNetworks != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numConnectableNetworks);
            }
            return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.count) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public NumConnectableNetworksBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.numConnectableNetworks = codedInputByteBufferNano.readInt32();
                } else if (readTag != 16) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.count = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static NumConnectableNetworksBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (NumConnectableNetworksBucket) MessageNano.mergeFrom(new NumConnectableNetworksBucket(), bArr);
        }

        public static NumConnectableNetworksBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new NumConnectableNetworksBucket().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class PnoScanMetrics extends MessageNano {
        private static volatile PnoScanMetrics[] _emptyArray;
        public int numPnoFoundNetworkEvents;
        public int numPnoScanAttempts;
        public int numPnoScanFailed;
        public int numPnoScanFailedOverOffload;
        public int numPnoScanStartedOverOffload;

        public static PnoScanMetrics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new PnoScanMetrics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public PnoScanMetrics() {
            clear();
        }

        public PnoScanMetrics clear() {
            this.numPnoScanAttempts = 0;
            this.numPnoScanFailed = 0;
            this.numPnoScanStartedOverOffload = 0;
            this.numPnoScanFailedOverOffload = 0;
            this.numPnoFoundNetworkEvents = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numPnoScanAttempts != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numPnoScanAttempts);
            }
            if (this.numPnoScanFailed != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.numPnoScanFailed);
            }
            if (this.numPnoScanStartedOverOffload != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.numPnoScanStartedOverOffload);
            }
            if (this.numPnoScanFailedOverOffload != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.numPnoScanFailedOverOffload);
            }
            if (this.numPnoFoundNetworkEvents != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.numPnoFoundNetworkEvents);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numPnoScanAttempts != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numPnoScanAttempts);
            }
            if (this.numPnoScanFailed != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.numPnoScanFailed);
            }
            if (this.numPnoScanStartedOverOffload != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numPnoScanStartedOverOffload);
            }
            if (this.numPnoScanFailedOverOffload != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.numPnoScanFailedOverOffload);
            }
            return this.numPnoFoundNetworkEvents != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(5, this.numPnoFoundNetworkEvents) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public PnoScanMetrics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.numPnoScanAttempts = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.numPnoScanFailed = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.numPnoScanStartedOverOffload = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.numPnoScanFailedOverOffload = codedInputByteBufferNano.readInt32();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.numPnoFoundNetworkEvents = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static PnoScanMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (PnoScanMetrics) MessageNano.mergeFrom(new PnoScanMetrics(), bArr);
        }

        public static PnoScanMetrics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new PnoScanMetrics().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class ConnectToNetworkNotificationAndActionCount extends MessageNano {
        public static final int ACTION_CONNECT_TO_NETWORK = 2;
        public static final int ACTION_PICK_WIFI_NETWORK = 3;
        public static final int ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE = 4;
        public static final int ACTION_UNKNOWN = 0;
        public static final int ACTION_USER_DISMISSED_NOTIFICATION = 1;
        public static final int NOTIFICATION_CONNECTED_TO_NETWORK = 3;
        public static final int NOTIFICATION_CONNECTING_TO_NETWORK = 2;
        public static final int NOTIFICATION_FAILED_TO_CONNECT = 4;
        public static final int NOTIFICATION_RECOMMEND_NETWORK = 1;
        public static final int NOTIFICATION_UNKNOWN = 0;
        public static final int RECOMMENDER_OPEN = 1;
        public static final int RECOMMENDER_UNKNOWN = 0;
        private static volatile ConnectToNetworkNotificationAndActionCount[] _emptyArray;
        public int action;
        public int count;
        public int notification;
        public int recommender;

        public static ConnectToNetworkNotificationAndActionCount[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new ConnectToNetworkNotificationAndActionCount[0];
                    }
                }
            }
            return _emptyArray;
        }

        public ConnectToNetworkNotificationAndActionCount() {
            clear();
        }

        public ConnectToNetworkNotificationAndActionCount clear() {
            this.notification = 0;
            this.action = 0;
            this.recommender = 0;
            this.count = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.notification != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.notification);
            }
            if (this.action != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.action);
            }
            if (this.recommender != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.recommender);
            }
            if (this.count != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.count);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.notification != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.notification);
            }
            if (this.action != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.action);
            }
            if (this.recommender != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.recommender);
            }
            return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, this.count) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public ConnectToNetworkNotificationAndActionCount mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            this.notification = readInt32;
                            break;
                    }
                } else if (readTag == 16) {
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    switch (readInt322) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            this.action = readInt322;
                            break;
                    }
                } else if (readTag == 24) {
                    int readInt323 = codedInputByteBufferNano.readInt32();
                    switch (readInt323) {
                        case 0:
                        case 1:
                            this.recommender = readInt323;
                            break;
                    }
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.count = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static ConnectToNetworkNotificationAndActionCount parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (ConnectToNetworkNotificationAndActionCount) MessageNano.mergeFrom(new ConnectToNetworkNotificationAndActionCount(), bArr);
        }

        public static ConnectToNetworkNotificationAndActionCount parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new ConnectToNetworkNotificationAndActionCount().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class SoftApConnectedClientsEvent extends MessageNano {
        public static final int BANDWIDTH_160 = 6;
        public static final int BANDWIDTH_20 = 2;
        public static final int BANDWIDTH_20_NOHT = 1;
        public static final int BANDWIDTH_40 = 3;
        public static final int BANDWIDTH_80 = 4;
        public static final int BANDWIDTH_80P80 = 5;
        public static final int BANDWIDTH_INVALID = 0;
        public static final int NUM_CLIENTS_CHANGED = 2;
        public static final int SOFT_AP_DOWN = 1;
        public static final int SOFT_AP_UP = 0;
        private static volatile SoftApConnectedClientsEvent[] _emptyArray;
        public int channelBandwidth;
        public int channelFrequency;
        public int eventType;
        public int numConnectedClients;
        public long timeStampMillis;

        public static SoftApConnectedClientsEvent[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new SoftApConnectedClientsEvent[0];
                    }
                }
            }
            return _emptyArray;
        }

        public SoftApConnectedClientsEvent() {
            clear();
        }

        public SoftApConnectedClientsEvent clear() {
            this.eventType = 0;
            this.timeStampMillis = 0L;
            this.numConnectedClients = 0;
            this.channelFrequency = 0;
            this.channelBandwidth = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.eventType != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.eventType);
            }
            if (this.timeStampMillis != 0) {
                codedOutputByteBufferNano.writeInt64(2, this.timeStampMillis);
            }
            if (this.numConnectedClients != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.numConnectedClients);
            }
            if (this.channelFrequency != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.channelFrequency);
            }
            if (this.channelBandwidth != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.channelBandwidth);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.eventType != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.eventType);
            }
            if (this.timeStampMillis != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, this.timeStampMillis);
            }
            if (this.numConnectedClients != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numConnectedClients);
            }
            if (this.channelFrequency != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.channelFrequency);
            }
            return this.channelBandwidth != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(5, this.channelBandwidth) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public SoftApConnectedClientsEvent mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    int readInt32 = codedInputByteBufferNano.readInt32();
                    switch (readInt32) {
                        case 0:
                        case 1:
                        case 2:
                            this.eventType = readInt32;
                            break;
                    }
                } else if (readTag == 16) {
                    this.timeStampMillis = codedInputByteBufferNano.readInt64();
                } else if (readTag == 24) {
                    this.numConnectedClients = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.channelFrequency = codedInputByteBufferNano.readInt32();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    int readInt322 = codedInputByteBufferNano.readInt32();
                    switch (readInt322) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.channelBandwidth = readInt322;
                            break;
                    }
                }
            }
        }

        public static SoftApConnectedClientsEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (SoftApConnectedClientsEvent) MessageNano.mergeFrom(new SoftApConnectedClientsEvent(), bArr);
        }

        public static SoftApConnectedClientsEvent parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new SoftApConnectedClientsEvent().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WpsMetrics extends MessageNano {
        private static volatile WpsMetrics[] _emptyArray;
        public int numWpsAttempts;
        public int numWpsCancellation;
        public int numWpsOtherConnectionFailure;
        public int numWpsOverlapFailure;
        public int numWpsStartFailure;
        public int numWpsSuccess;
        public int numWpsSupplicantFailure;
        public int numWpsTimeoutFailure;

        public static WpsMetrics[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WpsMetrics[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WpsMetrics() {
            clear();
        }

        public WpsMetrics clear() {
            this.numWpsAttempts = 0;
            this.numWpsSuccess = 0;
            this.numWpsStartFailure = 0;
            this.numWpsOverlapFailure = 0;
            this.numWpsTimeoutFailure = 0;
            this.numWpsOtherConnectionFailure = 0;
            this.numWpsSupplicantFailure = 0;
            this.numWpsCancellation = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numWpsAttempts != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numWpsAttempts);
            }
            if (this.numWpsSuccess != 0) {
                codedOutputByteBufferNano.writeInt32(2, this.numWpsSuccess);
            }
            if (this.numWpsStartFailure != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.numWpsStartFailure);
            }
            if (this.numWpsOverlapFailure != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.numWpsOverlapFailure);
            }
            if (this.numWpsTimeoutFailure != 0) {
                codedOutputByteBufferNano.writeInt32(5, this.numWpsTimeoutFailure);
            }
            if (this.numWpsOtherConnectionFailure != 0) {
                codedOutputByteBufferNano.writeInt32(6, this.numWpsOtherConnectionFailure);
            }
            if (this.numWpsSupplicantFailure != 0) {
                codedOutputByteBufferNano.writeInt32(7, this.numWpsSupplicantFailure);
            }
            if (this.numWpsCancellation != 0) {
                codedOutputByteBufferNano.writeInt32(8, this.numWpsCancellation);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numWpsAttempts != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numWpsAttempts);
            }
            if (this.numWpsSuccess != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.numWpsSuccess);
            }
            if (this.numWpsStartFailure != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numWpsStartFailure);
            }
            if (this.numWpsOverlapFailure != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.numWpsOverlapFailure);
            }
            if (this.numWpsTimeoutFailure != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.numWpsTimeoutFailure);
            }
            if (this.numWpsOtherConnectionFailure != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.numWpsOtherConnectionFailure);
            }
            if (this.numWpsSupplicantFailure != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.numWpsSupplicantFailure);
            }
            return this.numWpsCancellation != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(8, this.numWpsCancellation) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WpsMetrics mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.numWpsAttempts = codedInputByteBufferNano.readInt32();
                } else if (readTag == 16) {
                    this.numWpsSuccess = codedInputByteBufferNano.readInt32();
                } else if (readTag == 24) {
                    this.numWpsStartFailure = codedInputByteBufferNano.readInt32();
                } else if (readTag == 32) {
                    this.numWpsOverlapFailure = codedInputByteBufferNano.readInt32();
                } else if (readTag == 40) {
                    this.numWpsTimeoutFailure = codedInputByteBufferNano.readInt32();
                } else if (readTag == 48) {
                    this.numWpsOtherConnectionFailure = codedInputByteBufferNano.readInt32();
                } else if (readTag == 56) {
                    this.numWpsSupplicantFailure = codedInputByteBufferNano.readInt32();
                } else if (readTag != 64) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.numWpsCancellation = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static WpsMetrics parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WpsMetrics) MessageNano.mergeFrom(new WpsMetrics(), bArr);
        }

        public static WpsMetrics parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WpsMetrics().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WifiPowerStats extends MessageNano {
        private static volatile WifiPowerStats[] _emptyArray;
        public double energyConsumedMah;
        public long idleTimeMs;
        public long loggingDurationMs;
        public long rxTimeMs;
        public long txTimeMs;

        public static WifiPowerStats[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiPowerStats[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WifiPowerStats() {
            clear();
        }

        public WifiPowerStats clear() {
            this.loggingDurationMs = 0L;
            this.energyConsumedMah = 0.0d;
            this.idleTimeMs = 0L;
            this.rxTimeMs = 0L;
            this.txTimeMs = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.loggingDurationMs != 0) {
                codedOutputByteBufferNano.writeInt64(1, this.loggingDurationMs);
            }
            if (Double.doubleToLongBits(this.energyConsumedMah) != Double.doubleToLongBits(0.0d)) {
                codedOutputByteBufferNano.writeDouble(2, this.energyConsumedMah);
            }
            if (this.idleTimeMs != 0) {
                codedOutputByteBufferNano.writeInt64(3, this.idleTimeMs);
            }
            if (this.rxTimeMs != 0) {
                codedOutputByteBufferNano.writeInt64(4, this.rxTimeMs);
            }
            if (this.txTimeMs != 0) {
                codedOutputByteBufferNano.writeInt64(5, this.txTimeMs);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.loggingDurationMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.loggingDurationMs);
            }
            if (Double.doubleToLongBits(this.energyConsumedMah) != Double.doubleToLongBits(0.0d)) {
                computeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(2, this.energyConsumedMah);
            }
            if (this.idleTimeMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(3, this.idleTimeMs);
            }
            if (this.rxTimeMs != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(4, this.rxTimeMs);
            }
            return this.txTimeMs != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt64Size(5, this.txTimeMs) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiPowerStats mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.loggingDurationMs = codedInputByteBufferNano.readInt64();
                } else if (readTag == 17) {
                    this.energyConsumedMah = codedInputByteBufferNano.readDouble();
                } else if (readTag == 24) {
                    this.idleTimeMs = codedInputByteBufferNano.readInt64();
                } else if (readTag == 32) {
                    this.rxTimeMs = codedInputByteBufferNano.readInt64();
                } else if (readTag != 40) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.txTimeMs = codedInputByteBufferNano.readInt64();
                }
            }
        }

        public static WifiPowerStats parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WifiPowerStats) MessageNano.mergeFrom(new WifiPowerStats(), bArr);
        }

        public static WifiPowerStats parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WifiPowerStats().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WifiWakeStats extends MessageNano {
        private static volatile WifiWakeStats[] _emptyArray;
        public int numIgnoredStarts;
        public int numSessions;
        public int numWakeups;
        public Session[] sessions;

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class Session extends MessageNano {
            private static volatile Session[] _emptyArray;
            public Event initializeEvent;
            public int lockedNetworksAtInitialize;
            public int lockedNetworksAtStart;
            public Event resetEvent;
            public long startTimeMillis;
            public Event unlockEvent;
            public Event wakeupEvent;

            /* loaded from: /home/user/work/dex/classes3.dex */
            public static final class Event extends MessageNano {
                private static volatile Event[] _emptyArray;
                public int elapsedScans;
                public long elapsedTimeMillis;

                public static Event[] emptyArray() {
                    if (_emptyArray == null) {
                        synchronized (InternalNano.LAZY_INIT_LOCK) {
                            if (_emptyArray == null) {
                                _emptyArray = new Event[0];
                            }
                        }
                    }
                    return _emptyArray;
                }

                public Event() {
                    clear();
                }

                public Event clear() {
                    this.elapsedTimeMillis = 0L;
                    this.elapsedScans = 0;
                    this.cachedSize = -1;
                    return this;
                }

                @Override // com.android.framework.protobuf.nano.MessageNano
                public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                    if (this.elapsedTimeMillis != 0) {
                        codedOutputByteBufferNano.writeInt64(1, this.elapsedTimeMillis);
                    }
                    if (this.elapsedScans != 0) {
                        codedOutputByteBufferNano.writeInt32(2, this.elapsedScans);
                    }
                    super.writeTo(codedOutputByteBufferNano);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.android.framework.protobuf.nano.MessageNano
                public int computeSerializedSize() {
                    int computeSerializedSize = super.computeSerializedSize();
                    if (this.elapsedTimeMillis != 0) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.elapsedTimeMillis);
                    }
                    return this.elapsedScans != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.elapsedScans) : computeSerializedSize;
                }

                @Override // com.android.framework.protobuf.nano.MessageNano
                public Event mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    while (true) {
                        int readTag = codedInputByteBufferNano.readTag();
                        if (readTag == 0) {
                            return this;
                        }
                        if (readTag == 8) {
                            this.elapsedTimeMillis = codedInputByteBufferNano.readInt64();
                        } else if (readTag != 16) {
                            if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                                return this;
                            }
                        } else {
                            this.elapsedScans = codedInputByteBufferNano.readInt32();
                        }
                    }
                }

                public static Event parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                    return (Event) MessageNano.mergeFrom(new Event(), bArr);
                }

                public static Event parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                    return new Event().mergeFrom(codedInputByteBufferNano);
                }
            }

            public static Session[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new Session[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public Session() {
                clear();
            }

            public Session clear() {
                this.startTimeMillis = 0L;
                this.lockedNetworksAtStart = 0;
                this.lockedNetworksAtInitialize = 0;
                this.initializeEvent = null;
                this.unlockEvent = null;
                this.wakeupEvent = null;
                this.resetEvent = null;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.startTimeMillis != 0) {
                    codedOutputByteBufferNano.writeInt64(1, this.startTimeMillis);
                }
                if (this.lockedNetworksAtStart != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.lockedNetworksAtStart);
                }
                if (this.unlockEvent != null) {
                    codedOutputByteBufferNano.writeMessage(3, this.unlockEvent);
                }
                if (this.wakeupEvent != null) {
                    codedOutputByteBufferNano.writeMessage(4, this.wakeupEvent);
                }
                if (this.resetEvent != null) {
                    codedOutputByteBufferNano.writeMessage(5, this.resetEvent);
                }
                if (this.lockedNetworksAtInitialize != 0) {
                    codedOutputByteBufferNano.writeInt32(6, this.lockedNetworksAtInitialize);
                }
                if (this.initializeEvent != null) {
                    codedOutputByteBufferNano.writeMessage(7, this.initializeEvent);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.startTimeMillis != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.startTimeMillis);
                }
                if (this.lockedNetworksAtStart != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.lockedNetworksAtStart);
                }
                if (this.unlockEvent != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, this.unlockEvent);
                }
                if (this.wakeupEvent != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, this.wakeupEvent);
                }
                if (this.resetEvent != null) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, this.resetEvent);
                }
                if (this.lockedNetworksAtInitialize != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.lockedNetworksAtInitialize);
                }
                return this.initializeEvent != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(7, this.initializeEvent) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public Session mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        this.startTimeMillis = codedInputByteBufferNano.readInt64();
                    } else if (readTag == 16) {
                        this.lockedNetworksAtStart = codedInputByteBufferNano.readInt32();
                    } else if (readTag == 26) {
                        if (this.unlockEvent == null) {
                            this.unlockEvent = new Event();
                        }
                        codedInputByteBufferNano.readMessage(this.unlockEvent);
                    } else if (readTag == 34) {
                        if (this.wakeupEvent == null) {
                            this.wakeupEvent = new Event();
                        }
                        codedInputByteBufferNano.readMessage(this.wakeupEvent);
                    } else if (readTag == 42) {
                        if (this.resetEvent == null) {
                            this.resetEvent = new Event();
                        }
                        codedInputByteBufferNano.readMessage(this.resetEvent);
                    } else if (readTag == 48) {
                        this.lockedNetworksAtInitialize = codedInputByteBufferNano.readInt32();
                    } else if (readTag != 58) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        if (this.initializeEvent == null) {
                            this.initializeEvent = new Event();
                        }
                        codedInputByteBufferNano.readMessage(this.initializeEvent);
                    }
                }
            }

            public static Session parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (Session) MessageNano.mergeFrom(new Session(), bArr);
            }

            public static Session parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new Session().mergeFrom(codedInputByteBufferNano);
            }
        }

        public static WifiWakeStats[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiWakeStats[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WifiWakeStats() {
            clear();
        }

        public WifiWakeStats clear() {
            this.numSessions = 0;
            this.sessions = Session.emptyArray();
            this.numIgnoredStarts = 0;
            this.numWakeups = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numSessions != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numSessions);
            }
            if (this.sessions != null && this.sessions.length > 0) {
                for (int i = 0; i < this.sessions.length; i++) {
                    Session session = this.sessions[i];
                    if (session != null) {
                        codedOutputByteBufferNano.writeMessage(2, session);
                    }
                }
            }
            if (this.numIgnoredStarts != 0) {
                codedOutputByteBufferNano.writeInt32(3, this.numIgnoredStarts);
            }
            if (this.numWakeups != 0) {
                codedOutputByteBufferNano.writeInt32(4, this.numWakeups);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numSessions != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numSessions);
            }
            if (this.sessions != null && this.sessions.length > 0) {
                for (int i = 0; i < this.sessions.length; i++) {
                    Session session = this.sessions[i];
                    if (session != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, session);
                    }
                }
            }
            if (this.numIgnoredStarts != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numIgnoredStarts);
            }
            return this.numWakeups != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, this.numWakeups) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiWakeStats mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.numSessions = codedInputByteBufferNano.readInt32();
                } else if (readTag == 18) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    int length = this.sessions == null ? 0 : this.sessions.length;
                    Session[] sessionArr = new Session[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.sessions, 0, sessionArr, 0, length);
                    }
                    while (length < sessionArr.length - 1) {
                        sessionArr[length] = new Session();
                        codedInputByteBufferNano.readMessage(sessionArr[length]);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    sessionArr[length] = new Session();
                    codedInputByteBufferNano.readMessage(sessionArr[length]);
                    this.sessions = sessionArr;
                } else if (readTag == 24) {
                    this.numIgnoredStarts = codedInputByteBufferNano.readInt32();
                } else if (readTag != 32) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    this.numWakeups = codedInputByteBufferNano.readInt32();
                }
            }
        }

        public static WifiWakeStats parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WifiWakeStats) MessageNano.mergeFrom(new WifiWakeStats(), bArr);
        }

        public static WifiWakeStats parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WifiWakeStats().mergeFrom(codedInputByteBufferNano);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class WifiRttLog extends MessageNano {
        public static final int ABORTED = 9;
        public static final int FAILURE = 2;
        public static final int FAIL_AP_ON_DIFF_CHANNEL = 7;
        public static final int FAIL_BUSY_TRY_LATER = 13;
        public static final int FAIL_FTM_PARAM_OVERRIDE = 16;
        public static final int FAIL_INVALID_TS = 10;
        public static final int FAIL_NOT_SCHEDULED_YET = 5;
        public static final int FAIL_NO_CAPABILITY = 8;
        public static final int FAIL_NO_RSP = 3;
        public static final int FAIL_PROTOCOL = 11;
        public static final int FAIL_REJECTED = 4;
        public static final int FAIL_SCHEDULE = 12;
        public static final int FAIL_TM_TIMEOUT = 6;
        public static final int INVALID_REQ = 14;
        public static final int MISSING_RESULT = 17;
        public static final int NO_WIFI = 15;
        public static final int OVERALL_AWARE_TRANSLATION_FAILURE = 7;
        public static final int OVERALL_FAIL = 2;
        public static final int OVERALL_HAL_FAILURE = 6;
        public static final int OVERALL_LOCATION_PERMISSION_MISSING = 8;
        public static final int OVERALL_RTT_NOT_AVAILABLE = 3;
        public static final int OVERALL_SUCCESS = 1;
        public static final int OVERALL_THROTTLE = 5;
        public static final int OVERALL_TIMEOUT = 4;
        public static final int OVERALL_UNKNOWN = 0;
        public static final int SUCCESS = 1;
        public static final int UNKNOWN = 0;
        private static volatile WifiRttLog[] _emptyArray;
        public RttOverallStatusHistogramBucket[] histogramOverallStatus;
        public int numRequests;
        public RttToPeerLog rttToAp;
        public RttToPeerLog rttToAware;

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class RttToPeerLog extends MessageNano {
            private static volatile RttToPeerLog[] _emptyArray;
            public HistogramBucket[] histogramDistance;
            public RttIndividualStatusHistogramBucket[] histogramIndividualStatus;
            public HistogramBucket[] histogramNumPeersPerRequest;
            public HistogramBucket[] histogramNumRequestsPerApp;
            public HistogramBucket[] histogramRequestIntervalMs;
            public int numApps;
            public int numIndividualRequests;
            public int numRequests;

            public static RttToPeerLog[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new RttToPeerLog[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public RttToPeerLog() {
                clear();
            }

            public RttToPeerLog clear() {
                this.numRequests = 0;
                this.numIndividualRequests = 0;
                this.numApps = 0;
                this.histogramNumRequestsPerApp = HistogramBucket.emptyArray();
                this.histogramNumPeersPerRequest = HistogramBucket.emptyArray();
                this.histogramIndividualStatus = RttIndividualStatusHistogramBucket.emptyArray();
                this.histogramDistance = HistogramBucket.emptyArray();
                this.histogramRequestIntervalMs = HistogramBucket.emptyArray();
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.numRequests != 0) {
                    codedOutputByteBufferNano.writeInt32(1, this.numRequests);
                }
                if (this.numIndividualRequests != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.numIndividualRequests);
                }
                if (this.numApps != 0) {
                    codedOutputByteBufferNano.writeInt32(3, this.numApps);
                }
                if (this.histogramNumRequestsPerApp != null && this.histogramNumRequestsPerApp.length > 0) {
                    for (int i = 0; i < this.histogramNumRequestsPerApp.length; i++) {
                        HistogramBucket histogramBucket = this.histogramNumRequestsPerApp[i];
                        if (histogramBucket != null) {
                            codedOutputByteBufferNano.writeMessage(4, histogramBucket);
                        }
                    }
                }
                if (this.histogramNumPeersPerRequest != null && this.histogramNumPeersPerRequest.length > 0) {
                    for (int i2 = 0; i2 < this.histogramNumPeersPerRequest.length; i2++) {
                        HistogramBucket histogramBucket2 = this.histogramNumPeersPerRequest[i2];
                        if (histogramBucket2 != null) {
                            codedOutputByteBufferNano.writeMessage(5, histogramBucket2);
                        }
                    }
                }
                if (this.histogramIndividualStatus != null && this.histogramIndividualStatus.length > 0) {
                    for (int i3 = 0; i3 < this.histogramIndividualStatus.length; i3++) {
                        RttIndividualStatusHistogramBucket rttIndividualStatusHistogramBucket = this.histogramIndividualStatus[i3];
                        if (rttIndividualStatusHistogramBucket != null) {
                            codedOutputByteBufferNano.writeMessage(6, rttIndividualStatusHistogramBucket);
                        }
                    }
                }
                if (this.histogramDistance != null && this.histogramDistance.length > 0) {
                    for (int i4 = 0; i4 < this.histogramDistance.length; i4++) {
                        HistogramBucket histogramBucket3 = this.histogramDistance[i4];
                        if (histogramBucket3 != null) {
                            codedOutputByteBufferNano.writeMessage(7, histogramBucket3);
                        }
                    }
                }
                if (this.histogramRequestIntervalMs != null && this.histogramRequestIntervalMs.length > 0) {
                    for (int i5 = 0; i5 < this.histogramRequestIntervalMs.length; i5++) {
                        HistogramBucket histogramBucket4 = this.histogramRequestIntervalMs[i5];
                        if (histogramBucket4 != null) {
                            codedOutputByteBufferNano.writeMessage(8, histogramBucket4);
                        }
                    }
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.numRequests != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numRequests);
                }
                if (this.numIndividualRequests != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.numIndividualRequests);
                }
                if (this.numApps != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.numApps);
                }
                if (this.histogramNumRequestsPerApp != null && this.histogramNumRequestsPerApp.length > 0) {
                    int i = computeSerializedSize;
                    for (int i2 = 0; i2 < this.histogramNumRequestsPerApp.length; i2++) {
                        HistogramBucket histogramBucket = this.histogramNumRequestsPerApp[i2];
                        if (histogramBucket != null) {
                            i += CodedOutputByteBufferNano.computeMessageSize(4, histogramBucket);
                        }
                    }
                    computeSerializedSize = i;
                }
                if (this.histogramNumPeersPerRequest != null && this.histogramNumPeersPerRequest.length > 0) {
                    int i3 = computeSerializedSize;
                    for (int i4 = 0; i4 < this.histogramNumPeersPerRequest.length; i4++) {
                        HistogramBucket histogramBucket2 = this.histogramNumPeersPerRequest[i4];
                        if (histogramBucket2 != null) {
                            i3 += CodedOutputByteBufferNano.computeMessageSize(5, histogramBucket2);
                        }
                    }
                    computeSerializedSize = i3;
                }
                if (this.histogramIndividualStatus != null && this.histogramIndividualStatus.length > 0) {
                    int i5 = computeSerializedSize;
                    for (int i6 = 0; i6 < this.histogramIndividualStatus.length; i6++) {
                        RttIndividualStatusHistogramBucket rttIndividualStatusHistogramBucket = this.histogramIndividualStatus[i6];
                        if (rttIndividualStatusHistogramBucket != null) {
                            i5 += CodedOutputByteBufferNano.computeMessageSize(6, rttIndividualStatusHistogramBucket);
                        }
                    }
                    computeSerializedSize = i5;
                }
                if (this.histogramDistance != null && this.histogramDistance.length > 0) {
                    int i7 = computeSerializedSize;
                    for (int i8 = 0; i8 < this.histogramDistance.length; i8++) {
                        HistogramBucket histogramBucket3 = this.histogramDistance[i8];
                        if (histogramBucket3 != null) {
                            i7 += CodedOutputByteBufferNano.computeMessageSize(7, histogramBucket3);
                        }
                    }
                    computeSerializedSize = i7;
                }
                if (this.histogramRequestIntervalMs != null && this.histogramRequestIntervalMs.length > 0) {
                    for (int i9 = 0; i9 < this.histogramRequestIntervalMs.length; i9++) {
                        HistogramBucket histogramBucket4 = this.histogramRequestIntervalMs[i9];
                        if (histogramBucket4 != null) {
                            computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, histogramBucket4);
                        }
                    }
                }
                return computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public RttToPeerLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        this.numRequests = codedInputByteBufferNano.readInt32();
                    } else if (readTag == 16) {
                        this.numIndividualRequests = codedInputByteBufferNano.readInt32();
                    } else if (readTag == 24) {
                        this.numApps = codedInputByteBufferNano.readInt32();
                    } else if (readTag == 34) {
                        int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                        int length = this.histogramNumRequestsPerApp == null ? 0 : this.histogramNumRequestsPerApp.length;
                        HistogramBucket[] histogramBucketArr = new HistogramBucket[repeatedFieldArrayLength + length];
                        if (length != 0) {
                            System.arraycopy(this.histogramNumRequestsPerApp, 0, histogramBucketArr, 0, length);
                        }
                        while (length < histogramBucketArr.length - 1) {
                            histogramBucketArr[length] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr[length]);
                            codedInputByteBufferNano.readTag();
                            length++;
                        }
                        histogramBucketArr[length] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr[length]);
                        this.histogramNumRequestsPerApp = histogramBucketArr;
                    } else if (readTag == 42) {
                        int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                        int length2 = this.histogramNumPeersPerRequest == null ? 0 : this.histogramNumPeersPerRequest.length;
                        HistogramBucket[] histogramBucketArr2 = new HistogramBucket[repeatedFieldArrayLength2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.histogramNumPeersPerRequest, 0, histogramBucketArr2, 0, length2);
                        }
                        while (length2 < histogramBucketArr2.length - 1) {
                            histogramBucketArr2[length2] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr2[length2]);
                            codedInputByteBufferNano.readTag();
                            length2++;
                        }
                        histogramBucketArr2[length2] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr2[length2]);
                        this.histogramNumPeersPerRequest = histogramBucketArr2;
                    } else if (readTag == 50) {
                        int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 50);
                        int length3 = this.histogramIndividualStatus == null ? 0 : this.histogramIndividualStatus.length;
                        RttIndividualStatusHistogramBucket[] rttIndividualStatusHistogramBucketArr = new RttIndividualStatusHistogramBucket[repeatedFieldArrayLength3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.histogramIndividualStatus, 0, rttIndividualStatusHistogramBucketArr, 0, length3);
                        }
                        while (length3 < rttIndividualStatusHistogramBucketArr.length - 1) {
                            rttIndividualStatusHistogramBucketArr[length3] = new RttIndividualStatusHistogramBucket();
                            codedInputByteBufferNano.readMessage(rttIndividualStatusHistogramBucketArr[length3]);
                            codedInputByteBufferNano.readTag();
                            length3++;
                        }
                        rttIndividualStatusHistogramBucketArr[length3] = new RttIndividualStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(rttIndividualStatusHistogramBucketArr[length3]);
                        this.histogramIndividualStatus = rttIndividualStatusHistogramBucketArr;
                    } else if (readTag == 58) {
                        int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                        int length4 = this.histogramDistance == null ? 0 : this.histogramDistance.length;
                        HistogramBucket[] histogramBucketArr3 = new HistogramBucket[repeatedFieldArrayLength4 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.histogramDistance, 0, histogramBucketArr3, 0, length4);
                        }
                        while (length4 < histogramBucketArr3.length - 1) {
                            histogramBucketArr3[length4] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr3[length4]);
                            codedInputByteBufferNano.readTag();
                            length4++;
                        }
                        histogramBucketArr3[length4] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr3[length4]);
                        this.histogramDistance = histogramBucketArr3;
                    } else if (readTag != 66) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 66);
                        int length5 = this.histogramRequestIntervalMs == null ? 0 : this.histogramRequestIntervalMs.length;
                        HistogramBucket[] histogramBucketArr4 = new HistogramBucket[repeatedFieldArrayLength5 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.histogramRequestIntervalMs, 0, histogramBucketArr4, 0, length5);
                        }
                        while (length5 < histogramBucketArr4.length - 1) {
                            histogramBucketArr4[length5] = new HistogramBucket();
                            codedInputByteBufferNano.readMessage(histogramBucketArr4[length5]);
                            codedInputByteBufferNano.readTag();
                            length5++;
                        }
                        histogramBucketArr4[length5] = new HistogramBucket();
                        codedInputByteBufferNano.readMessage(histogramBucketArr4[length5]);
                        this.histogramRequestIntervalMs = histogramBucketArr4;
                    }
                }
            }

            public static RttToPeerLog parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (RttToPeerLog) MessageNano.mergeFrom(new RttToPeerLog(), bArr);
            }

            public static RttToPeerLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new RttToPeerLog().mergeFrom(codedInputByteBufferNano);
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class HistogramBucket extends MessageNano {
            private static volatile HistogramBucket[] _emptyArray;
            public int count;
            public long end;
            public long start;

            public static HistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new HistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public HistogramBucket() {
                clear();
            }

            public HistogramBucket clear() {
                this.start = 0L;
                this.end = 0L;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.start != 0) {
                    codedOutputByteBufferNano.writeInt64(1, this.start);
                }
                if (this.end != 0) {
                    codedOutputByteBufferNano.writeInt64(2, this.end);
                }
                if (this.count != 0) {
                    codedOutputByteBufferNano.writeInt32(3, this.count);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.start != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.start);
                }
                if (this.end != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, this.end);
                }
                return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, this.count) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public HistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        this.start = codedInputByteBufferNano.readInt64();
                    } else if (readTag == 16) {
                        this.end = codedInputByteBufferNano.readInt64();
                    } else if (readTag != 24) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.count = codedInputByteBufferNano.readInt32();
                    }
                }
            }

            public static HistogramBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (HistogramBucket) MessageNano.mergeFrom(new HistogramBucket(), bArr);
            }

            public static HistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new HistogramBucket().mergeFrom(codedInputByteBufferNano);
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class RttOverallStatusHistogramBucket extends MessageNano {
            private static volatile RttOverallStatusHistogramBucket[] _emptyArray;
            public int count;
            public int statusType;

            public static RttOverallStatusHistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new RttOverallStatusHistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public RttOverallStatusHistogramBucket() {
                clear();
            }

            public RttOverallStatusHistogramBucket clear() {
                this.statusType = 0;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.statusType != 0) {
                    codedOutputByteBufferNano.writeInt32(1, this.statusType);
                }
                if (this.count != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.count);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.statusType != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.statusType);
                }
                return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.count) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public RttOverallStatusHistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                this.statusType = readInt32;
                                break;
                        }
                    } else if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.count = codedInputByteBufferNano.readInt32();
                    }
                }
            }

            public static RttOverallStatusHistogramBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (RttOverallStatusHistogramBucket) MessageNano.mergeFrom(new RttOverallStatusHistogramBucket(), bArr);
            }

            public static RttOverallStatusHistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new RttOverallStatusHistogramBucket().mergeFrom(codedInputByteBufferNano);
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class RttIndividualStatusHistogramBucket extends MessageNano {
            private static volatile RttIndividualStatusHistogramBucket[] _emptyArray;
            public int count;
            public int statusType;

            public static RttIndividualStatusHistogramBucket[] emptyArray() {
                if (_emptyArray == null) {
                    synchronized (InternalNano.LAZY_INIT_LOCK) {
                        if (_emptyArray == null) {
                            _emptyArray = new RttIndividualStatusHistogramBucket[0];
                        }
                    }
                }
                return _emptyArray;
            }

            public RttIndividualStatusHistogramBucket() {
                clear();
            }

            public RttIndividualStatusHistogramBucket clear() {
                this.statusType = 0;
                this.count = 0;
                this.cachedSize = -1;
                return this;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
                if (this.statusType != 0) {
                    codedOutputByteBufferNano.writeInt32(1, this.statusType);
                }
                if (this.count != 0) {
                    codedOutputByteBufferNano.writeInt32(2, this.count);
                }
                super.writeTo(codedOutputByteBufferNano);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.android.framework.protobuf.nano.MessageNano
            public int computeSerializedSize() {
                int computeSerializedSize = super.computeSerializedSize();
                if (this.statusType != 0) {
                    computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.statusType);
                }
                return this.count != 0 ? computeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.count) : computeSerializedSize;
            }

            @Override // com.android.framework.protobuf.nano.MessageNano
            public RttIndividualStatusHistogramBucket mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                while (true) {
                    int readTag = codedInputByteBufferNano.readTag();
                    if (readTag == 0) {
                        return this;
                    }
                    if (readTag == 8) {
                        int readInt32 = codedInputByteBufferNano.readInt32();
                        switch (readInt32) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                                this.statusType = readInt32;
                                break;
                        }
                    } else if (readTag != 16) {
                        if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                            return this;
                        }
                    } else {
                        this.count = codedInputByteBufferNano.readInt32();
                    }
                }
            }

            public static RttIndividualStatusHistogramBucket parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
                return (RttIndividualStatusHistogramBucket) MessageNano.mergeFrom(new RttIndividualStatusHistogramBucket(), bArr);
            }

            public static RttIndividualStatusHistogramBucket parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
                return new RttIndividualStatusHistogramBucket().mergeFrom(codedInputByteBufferNano);
            }
        }

        public static WifiRttLog[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new WifiRttLog[0];
                    }
                }
            }
            return _emptyArray;
        }

        public WifiRttLog() {
            clear();
        }

        public WifiRttLog clear() {
            this.numRequests = 0;
            this.histogramOverallStatus = RttOverallStatusHistogramBucket.emptyArray();
            this.rttToAp = null;
            this.rttToAware = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
            if (this.numRequests != 0) {
                codedOutputByteBufferNano.writeInt32(1, this.numRequests);
            }
            if (this.histogramOverallStatus != null && this.histogramOverallStatus.length > 0) {
                for (int i = 0; i < this.histogramOverallStatus.length; i++) {
                    RttOverallStatusHistogramBucket rttOverallStatusHistogramBucket = this.histogramOverallStatus[i];
                    if (rttOverallStatusHistogramBucket != null) {
                        codedOutputByteBufferNano.writeMessage(2, rttOverallStatusHistogramBucket);
                    }
                }
            }
            if (this.rttToAp != null) {
                codedOutputByteBufferNano.writeMessage(3, this.rttToAp);
            }
            if (this.rttToAware != null) {
                codedOutputByteBufferNano.writeMessage(4, this.rttToAware);
            }
            super.writeTo(codedOutputByteBufferNano);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.android.framework.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int computeSerializedSize = super.computeSerializedSize();
            if (this.numRequests != 0) {
                computeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.numRequests);
            }
            if (this.histogramOverallStatus != null && this.histogramOverallStatus.length > 0) {
                for (int i = 0; i < this.histogramOverallStatus.length; i++) {
                    RttOverallStatusHistogramBucket rttOverallStatusHistogramBucket = this.histogramOverallStatus[i];
                    if (rttOverallStatusHistogramBucket != null) {
                        computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, rttOverallStatusHistogramBucket);
                    }
                }
            }
            if (this.rttToAp != null) {
                computeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, this.rttToAp);
            }
            return this.rttToAware != null ? computeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, this.rttToAware) : computeSerializedSize;
        }

        @Override // com.android.framework.protobuf.nano.MessageNano
        public WifiRttLog mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            while (true) {
                int readTag = codedInputByteBufferNano.readTag();
                if (readTag == 0) {
                    return this;
                }
                if (readTag == 8) {
                    this.numRequests = codedInputByteBufferNano.readInt32();
                } else if (readTag == 18) {
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                    int length = this.histogramOverallStatus == null ? 0 : this.histogramOverallStatus.length;
                    RttOverallStatusHistogramBucket[] rttOverallStatusHistogramBucketArr = new RttOverallStatusHistogramBucket[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.histogramOverallStatus, 0, rttOverallStatusHistogramBucketArr, 0, length);
                    }
                    while (length < rttOverallStatusHistogramBucketArr.length - 1) {
                        rttOverallStatusHistogramBucketArr[length] = new RttOverallStatusHistogramBucket();
                        codedInputByteBufferNano.readMessage(rttOverallStatusHistogramBucketArr[length]);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    rttOverallStatusHistogramBucketArr[length] = new RttOverallStatusHistogramBucket();
                    codedInputByteBufferNano.readMessage(rttOverallStatusHistogramBucketArr[length]);
                    this.histogramOverallStatus = rttOverallStatusHistogramBucketArr;
                } else if (readTag == 26) {
                    if (this.rttToAp == null) {
                        this.rttToAp = new RttToPeerLog();
                    }
                    codedInputByteBufferNano.readMessage(this.rttToAp);
                } else if (readTag != 34) {
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, readTag)) {
                        return this;
                    }
                } else {
                    if (this.rttToAware == null) {
                        this.rttToAware = new RttToPeerLog();
                    }
                    codedInputByteBufferNano.readMessage(this.rttToAware);
                }
            }
        }

        public static WifiRttLog parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
            return (WifiRttLog) MessageNano.mergeFrom(new WifiRttLog(), bArr);
        }

        public static WifiRttLog parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
            return new WifiRttLog().mergeFrom(codedInputByteBufferNano);
        }
    }
}
