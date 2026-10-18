package android.media;

import android.content.IntentFilter;
import android.media.IMediaHTTPConnection;
import android.net.NetworkUtils;
import android.net.ProxyInfo;
import android.net.captiveportal.CaptivePortalProbeSpec;
import android.os.IBinder;
import android.os.StrictMode;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownServiceException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaHTTPConnection extends IMediaHTTPConnection.Stub {
    private static final int CONNECT_TIMEOUT_MS = 30000;
    private static final int HTTP_TEMP_REDIRECT = 307;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "MediaHTTPConnection";
    private static final boolean VERBOSE = false;
    private long mNativeContext;
    private long mCurrentOffset = -1;
    private URL mURL = null;
    private Map<String, String> mHeaders = null;
    private HttpURLConnection mConnection = null;
    private long mTotalSize = -1;
    private InputStream mInputStream = null;
    private boolean mAllowCrossDomainRedirect = true;
    private boolean mAllowCrossProtocolRedirect = true;

    private final native void native_finalize();

    private final native IBinder native_getIMemory();

    private static final native void native_init();

    private final native int native_readAt(long j, int i);

    private final native void native_setup();

    public MediaHTTPConnection() {
        if (CookieHandler.getDefault() == null) {
            Log.w(TAG, "MediaHTTPConnection: Unexpected. No CookieHandler found.");
        }
        native_setup();
    }

    @Override // android.media.IMediaHTTPConnection
    public IBinder connect(String str, String str2) {
        try {
            disconnect();
            this.mAllowCrossDomainRedirect = true;
            this.mURL = new URL(str);
            this.mHeaders = convertHeaderStringToMap(str2);
            return native_getIMemory();
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    private boolean parseBoolean(String str) {
        try {
            return Long.parseLong(str) != 0;
        } catch (NumberFormatException unused) {
            return "true".equalsIgnoreCase(str) || "yes".equalsIgnoreCase(str);
        }
    }

    private boolean filterOutInternalHeaders(String str, String str2) {
        if (!"android-allow-cross-domain-redirect".equalsIgnoreCase(str)) {
            return false;
        }
        this.mAllowCrossDomainRedirect = parseBoolean(str2);
        this.mAllowCrossProtocolRedirect = this.mAllowCrossDomainRedirect;
        return true;
    }

    private Map<String, String> convertHeaderStringToMap(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("\r\n")) {
            int indexOf = str2.indexOf(":");
            if (indexOf >= 0) {
                String substring = str2.substring(0, indexOf);
                String substring2 = str2.substring(indexOf + 1);
                if (!filterOutInternalHeaders(substring, substring2)) {
                    hashMap.put(substring, substring2);
                }
            }
        }
        return hashMap;
    }

    @Override // android.media.IMediaHTTPConnection
    public void disconnect() {
        teardownConnection();
        this.mHeaders = null;
        this.mURL = null;
    }

    private void teardownConnection() {
        if (this.mConnection != null) {
            if (this.mInputStream != null) {
                try {
                    this.mInputStream.close();
                } catch (IOException unused) {
                }
                this.mInputStream = null;
            }
            this.mConnection.disconnect();
            this.mConnection = null;
            this.mCurrentOffset = -1L;
        }
    }

    private static final boolean isLocalHost(URL url) {
        String host;
        if (url == null || (host = url.getHost()) == null) {
            return false;
        }
        if (host.equalsIgnoreCase(ProxyInfo.LOCAL_HOST)) {
            return true;
        }
        return NetworkUtils.numericToInetAddress(host).isLoopbackAddress();
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x018c, code lost:
    
        r9.mURL = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void seekTo(long j) throws IOException {
        int lastIndexOf;
        teardownConnection();
        int i = 0;
        try {
            URL url = this.mURL;
            boolean isLocalHost = isLocalHost(url);
            while (true) {
                if (isLocalHost) {
                    this.mConnection = (HttpURLConnection) url.openConnection(Proxy.NO_PROXY);
                } else {
                    this.mConnection = (HttpURLConnection) url.openConnection();
                }
                this.mConnection.setConnectTimeout(CONNECT_TIMEOUT_MS);
                this.mConnection.setInstanceFollowRedirects(this.mAllowCrossDomainRedirect);
                if (this.mHeaders != null) {
                    for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
                        this.mConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (j > 0) {
                    this.mConnection.setRequestProperty("Range", "bytes=" + j + "-");
                }
                int responseCode = this.mConnection.getResponseCode();
                if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307) {
                    if (this.mAllowCrossDomainRedirect) {
                        this.mURL = this.mConnection.getURL();
                    }
                    if (responseCode == 206) {
                        String headerField = this.mConnection.getHeaderField("Content-Range");
                        this.mTotalSize = -1L;
                        if (headerField != null && (lastIndexOf = headerField.lastIndexOf(47)) >= 0) {
                            try {
                                this.mTotalSize = Long.parseLong(headerField.substring(lastIndexOf + 1));
                            } catch (NumberFormatException unused) {
                            }
                        }
                    } else {
                        if (responseCode != 200) {
                            throw new IOException();
                        }
                        this.mTotalSize = this.mConnection.getContentLength();
                    }
                    if (j > 0 && responseCode != 206) {
                        throw new ProtocolException();
                    }
                    this.mInputStream = new BufferedInputStream(this.mConnection.getInputStream());
                    this.mCurrentOffset = j;
                    return;
                }
                i++;
                if (i > 20) {
                    throw new NoRouteToHostException("Too many redirects: " + i);
                }
                String requestMethod = this.mConnection.getRequestMethod();
                if (responseCode == 307 && !requestMethod.equals("GET") && !requestMethod.equals("HEAD")) {
                    throw new NoRouteToHostException("Invalid redirect");
                }
                String headerField2 = this.mConnection.getHeaderField(CaptivePortalProbeSpec.HTTP_LOCATION_HEADER_NAME);
                if (headerField2 == null) {
                    throw new NoRouteToHostException("Invalid redirect");
                }
                URL url2 = new URL(this.mURL, headerField2);
                if (!url2.getProtocol().equals(IntentFilter.SCHEME_HTTPS) && !url2.getProtocol().equals(IntentFilter.SCHEME_HTTP)) {
                    throw new NoRouteToHostException("Unsupported protocol redirect");
                }
                boolean equals = this.mURL.getProtocol().equals(url2.getProtocol());
                if (!this.mAllowCrossProtocolRedirect && !equals) {
                    throw new NoRouteToHostException("Cross-protocol redirects are disallowed");
                }
                boolean equals2 = this.mURL.getHost().equals(url2.getHost());
                if (!this.mAllowCrossDomainRedirect && !equals2) {
                    throw new NoRouteToHostException("Cross-domain redirects are disallowed");
                }
                url = url2;
            }
        } catch (IOException e) {
            this.mTotalSize = -1L;
            teardownConnection();
            this.mCurrentOffset = -1L;
            throw e;
        }
    }

    @Override // android.media.IMediaHTTPConnection
    public int readAt(long j, int i) {
        return native_readAt(j, i);
    }

    private int readAt(long j, byte[] bArr, int i) {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        try {
            synchronized (this) {
                if (j != this.mCurrentOffset) {
                    seekTo(j);
                }
            }
            int read = this.mInputStream.read(bArr, 0, i);
            if (read == -1) {
                read = 0;
            }
            this.mCurrentOffset += read;
            return read;
        } catch (NoRouteToHostException e) {
            Log.w(TAG, "readAt " + j + " / " + i + " => " + e);
            return -1010;
        } catch (ProtocolException e2) {
            Log.w(TAG, "readAt " + j + " / " + i + " => " + e2);
            return -1010;
        } catch (UnknownServiceException e3) {
            Log.w(TAG, "readAt " + j + " / " + i + " => " + e3);
            return -1010;
        } catch (IOException unused) {
            return -1;
        } catch (Exception unused2) {
            return -1;
        }
    }

    @Override // android.media.IMediaHTTPConnection
    public synchronized long getSize() {
        if (this.mConnection == null) {
            try {
                seekTo(0L);
            } catch (IOException unused) {
                return -1L;
            }
        }
        return this.mTotalSize;
    }

    @Override // android.media.IMediaHTTPConnection
    public synchronized String getMIMEType() {
        if (this.mConnection == null) {
            try {
                seekTo(0L);
            } catch (IOException unused) {
                return "application/octet-stream";
            }
        }
        return this.mConnection.getContentType();
    }

    @Override // android.media.IMediaHTTPConnection
    public String getUri() {
        return this.mURL.toString();
    }

    protected void finalize() {
        native_finalize();
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }
}
