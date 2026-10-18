package android.net;

import android.os.SystemClock;
import android.util.Log;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class SntpClient {
    private static final boolean DBG = true;
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final int REFERENCE_TIME_OFFSET = 16;
    private static final String TAG = "SntpClient";
    private static final int TRANSMIT_TIME_OFFSET = 40;
    private long mNtpTime;
    private long mNtpTimeReference;
    private long mRoundTripTime;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class InvalidServerReplyException extends Exception {
        public InvalidServerReplyException(String str) {
            super(str);
        }
    }

    public boolean requestTime(String str, int i, Network network) {
        network.setPrivateDnsBypass(true);
        try {
            return requestTime(network.getByName(str), 123, i, network);
        } catch (Exception e) {
            EventLogTags.writeNtpFailure(str, e.toString());
            Log.d(TAG, "request time failed: " + e);
            return false;
        }
    }

    public boolean requestTime(InetAddress inetAddress, int i, int i2, Network network) {
        DatagramSocket datagramSocket;
        int andSetThreadStatsTag = TrafficStats.getAndSetThreadStatsTag(TrafficStats.TAG_SYSTEM_NTP);
        DatagramSocket datagramSocket2 = null;
        try {
            try {
                datagramSocket = new DatagramSocket();
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            datagramSocket = datagramSocket2;
        }
        try {
            network.bindSocket(datagramSocket);
            datagramSocket.setSoTimeout(i2);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length, inetAddress, i);
            bArr[0] = 27;
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            writeTimeStamp(bArr, 40, currentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, bArr.length));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            long j = elapsedRealtime2 - elapsedRealtime;
            long j2 = currentTimeMillis + j;
            byte b = (byte) ((bArr[0] >> 6) & 3);
            byte b2 = (byte) (bArr[0] & 7);
            int i3 = bArr[1] & 255;
            long readTimeStamp = readTimeStamp(bArr, 24);
            long readTimeStamp2 = readTimeStamp(bArr, 32);
            long readTimeStamp3 = readTimeStamp(bArr, 40);
            checkValidServerReply(b, b2, i3, readTimeStamp3);
            long j3 = j - (readTimeStamp3 - readTimeStamp2);
            long j4 = ((readTimeStamp2 - readTimeStamp) + (readTimeStamp3 - j2)) / 2;
            EventLogTags.writeNtpSuccess(inetAddress.toString(), j3, j4);
            Log.d(TAG, "round trip: " + j3 + "ms, clock offset: " + j4 + "ms");
            this.mNtpTime = j2 + j4;
            this.mNtpTimeReference = elapsedRealtime2;
            this.mRoundTripTime = j3;
            datagramSocket.close();
            TrafficStats.setThreadStatsTag(andSetThreadStatsTag);
            return true;
        } catch (Exception e2) {
            e = e2;
            datagramSocket2 = datagramSocket;
            EventLogTags.writeNtpFailure(inetAddress.toString(), e.toString());
            Log.d(TAG, "request time failed: " + e);
            if (datagramSocket2 != null) {
                datagramSocket2.close();
            }
            TrafficStats.setThreadStatsTag(andSetThreadStatsTag);
            return false;
        } catch (Throwable th2) {
            th = th2;
            if (datagramSocket != null) {
                datagramSocket.close();
            }
            TrafficStats.setThreadStatsTag(andSetThreadStatsTag);
            throw th;
        }
    }

    @Deprecated
    public boolean requestTime(String str, int i) {
        Log.w(TAG, "Shame on you for calling the hidden API requestTime()!");
        return false;
    }

    public long getNtpTime() {
        return this.mNtpTime;
    }

    public long getNtpTimeReference() {
        return this.mNtpTimeReference;
    }

    public long getRoundTripTime() {
        return this.mRoundTripTime;
    }

    private static void checkValidServerReply(byte b, byte b2, int i, long j) throws InvalidServerReplyException {
        if (b == 3) {
            throw new InvalidServerReplyException("unsynchronized server");
        }
        if (b2 != 4 && b2 != 5) {
            throw new InvalidServerReplyException("untrusted mode: " + ((int) b2));
        }
        if (i != 0 && i <= 15) {
            if (j == 0) {
                throw new InvalidServerReplyException("zero transmitTime");
            }
        } else {
            throw new InvalidServerReplyException("untrusted stratum: " + i);
        }
    }

    private long read32(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (i2 << 24) + (i3 << 16) + (i4 << 8) + i5;
    }

    private long readTimeStamp(byte[] bArr, int i) {
        long read32 = read32(bArr, i);
        long read322 = read32(bArr, i + 4);
        if (read32 == 0 && read322 == 0) {
            return 0L;
        }
        return ((read32 - OFFSET_1900_TO_1970) * 1000) + ((read322 * 1000) / 4294967296L);
    }

    private void writeTimeStamp(byte[] bArr, int i, long j) {
        if (j == 0) {
            Arrays.fill(bArr, i, i + 8, (byte) 0);
            return;
        }
        long j2 = j / 1000;
        long j3 = j - (j2 * 1000);
        long j4 = j2 + OFFSET_1900_TO_1970;
        int i2 = i + 1;
        bArr[i] = (byte) (j4 >> 24);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j4 >> 16);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j4 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j4 >> 0);
        long j5 = (j3 * 4294967296L) / 1000;
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j5 >> 24);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j5 >> 16);
        bArr[i7] = (byte) (j5 >> 8);
        bArr[i7 + 1] = (byte) (Math.random() * 255.0d);
    }
}
