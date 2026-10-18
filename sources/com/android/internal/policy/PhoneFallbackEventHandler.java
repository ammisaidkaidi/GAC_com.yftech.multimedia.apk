package com.android.internal.policy;

import android.app.KeyguardManager;
import android.app.SearchManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.media.session.MediaSessionManager;
import android.net.Uri;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.FallbackEventHandler;
import android.view.KeyEvent;
import android.view.View;
import com.android.internal.os.PowerProfile;
import com.android.internal.telephony.PhoneConstants;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PhoneFallbackEventHandler implements FallbackEventHandler {
    private static final boolean DEBUG = false;
    private static String TAG = "PhoneFallbackEventHandler";
    AudioManager mAudioManager;
    Context mContext;
    KeyguardManager mKeyguardManager;
    MediaSessionManager mMediaSessionManager;
    SearchManager mSearchManager;
    TelephonyManager mTelephonyManager;
    View mView;

    public PhoneFallbackEventHandler(Context context) {
        this.mContext = context;
    }

    public void setView(View view) {
        this.mView = view;
    }

    public void preDispatchKeyEvent(KeyEvent keyEvent) {
        getAudioManager().preDispatchKeyEvent(keyEvent, Integer.MIN_VALUE);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        if (action == 0) {
            return onKeyDown(keyCode, keyEvent);
        }
        return onKeyUp(keyCode, keyEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0027. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x002a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean onKeyDown(int i, KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState = this.mView.getKeyDispatcherState();
        if (i != 5) {
            if (i != 27) {
                if (i != 79 && i != 130) {
                    if (i != 164) {
                        if (i != 222) {
                            switch (i) {
                                case 24:
                                case 25:
                                    break;
                                default:
                                    switch (i) {
                                        case 84:
                                            if (!isNotInstantAppAndKeyguardRestricted(keyDispatcherState)) {
                                                if (keyEvent.getRepeatCount() == 0) {
                                                    keyDispatcherState.startTracking(keyEvent, this);
                                                    break;
                                                } else if (keyEvent.isLongPress() && keyDispatcherState.isTracking(keyEvent)) {
                                                    Configuration configuration = this.mContext.getResources().getConfiguration();
                                                    if (configuration.keyboard == 1 || configuration.hardKeyboardHidden == 2) {
                                                        if (isUserSetupComplete()) {
                                                            Intent intent = new Intent("android.intent.action.SEARCH_LONG_PRESS");
                                                            intent.setFlags(268435456);
                                                            try {
                                                                this.mView.performHapticFeedback(0);
                                                                sendCloseSystemWindows();
                                                                getSearchManager().stopSearch();
                                                                this.mContext.startActivity(intent);
                                                                keyDispatcherState.performedLongPress(keyEvent);
                                                                return true;
                                                            } catch (ActivityNotFoundException unused) {
                                                                break;
                                                            }
                                                        } else {
                                                            Log.i(TAG, "Not dispatching SEARCH long press because user setup is in progress.");
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            break;
                                        case 85:
                                            if (getTelephonyManager().getCallState() != 0) {
                                                return true;
                                            }
                                            break;
                                        case 86:
                                        case 87:
                                        case 88:
                                        case 89:
                                        case 90:
                                        case 91:
                                            break;
                                        default:
                                            switch (i) {
                                            }
                                    }
                            }
                        }
                    }
                    handleVolumeKeyEvent(keyEvent);
                    return true;
                }
                handleMediaKeyEvent(keyEvent);
                return true;
            }
            if (!isNotInstantAppAndKeyguardRestricted(keyDispatcherState)) {
                if (keyEvent.getRepeatCount() == 0) {
                    keyDispatcherState.startTracking(keyEvent, this);
                } else if (keyEvent.isLongPress() && keyDispatcherState.isTracking(keyEvent)) {
                    keyDispatcherState.performedLongPress(keyEvent);
                    if (isUserSetupComplete()) {
                        this.mView.performHapticFeedback(0);
                        sendCloseSystemWindows();
                        Intent intent2 = new Intent("android.intent.action.CAMERA_BUTTON", (Uri) null);
                        intent2.addFlags(268435456);
                        intent2.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                        this.mContext.sendOrderedBroadcastAsUser(intent2, UserHandle.CURRENT_OR_SELF, null, null, null, 0, null, null);
                    } else {
                        Log.i(TAG, "Not dispatching CAMERA long press because user setup is in progress.");
                    }
                }
                return true;
            }
        } else if (!isNotInstantAppAndKeyguardRestricted(keyDispatcherState)) {
            if (keyEvent.getRepeatCount() == 0) {
                keyDispatcherState.startTracking(keyEvent, this);
            } else if (keyEvent.isLongPress() && keyDispatcherState.isTracking(keyEvent)) {
                keyDispatcherState.performedLongPress(keyEvent);
                if (isUserSetupComplete()) {
                    this.mView.performHapticFeedback(0);
                    Intent intent3 = new Intent("android.intent.action.VOICE_COMMAND");
                    intent3.setFlags(268435456);
                    try {
                        sendCloseSystemWindows();
                        this.mContext.startActivity(intent3);
                    } catch (ActivityNotFoundException unused2) {
                        startCallActivity();
                    }
                } else {
                    Log.i(TAG, "Not starting call activity because user setup is in progress.");
                }
            }
            return true;
        }
        return false;
    }

    private boolean isNotInstantAppAndKeyguardRestricted(KeyEvent.DispatcherState dispatcherState) {
        return !this.mContext.getPackageManager().isInstantApp() && (getKeyguardManager().inKeyguardRestrictedInputMode() || dispatcherState == null);
    }

    boolean onKeyUp(int i, KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState = this.mView.getKeyDispatcherState();
        if (keyDispatcherState != null) {
            keyDispatcherState.handleUpEvent(keyEvent);
        }
        if (i == 5) {
            if (isNotInstantAppAndKeyguardRestricted(keyDispatcherState)) {
                return false;
            }
            if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                if (isUserSetupComplete()) {
                    startCallActivity();
                } else {
                    Log.i(TAG, "Not starting call activity because user setup is in progress.");
                }
            }
            return true;
        }
        if (i != 27) {
            if (i != 79 && i != 130) {
                if (i != 164) {
                    if (i != 222) {
                        switch (i) {
                            case 24:
                            case 25:
                                break;
                            default:
                                switch (i) {
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                        break;
                                    default:
                                        switch (i) {
                                            case 126:
                                            case 127:
                                                break;
                                            default:
                                                return false;
                                        }
                                }
                        }
                    }
                }
                if (!keyEvent.isCanceled()) {
                    handleVolumeKeyEvent(keyEvent);
                }
                return true;
            }
            handleMediaKeyEvent(keyEvent);
            return true;
        }
        if (isNotInstantAppAndKeyguardRestricted(keyDispatcherState)) {
            return false;
        }
        if (keyEvent.isTracking()) {
            keyEvent.isCanceled();
        }
        return true;
    }

    void startCallActivity() {
        sendCloseSystemWindows();
        Intent intent = new Intent("android.intent.action.CALL_BUTTON");
        intent.setFlags(268435456);
        try {
            this.mContext.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            Log.w(TAG, "No activity found for android.intent.action.CALL_BUTTON.");
        }
    }

    SearchManager getSearchManager() {
        if (this.mSearchManager == null) {
            this.mSearchManager = (SearchManager) this.mContext.getSystemService("search");
        }
        return this.mSearchManager;
    }

    TelephonyManager getTelephonyManager() {
        if (this.mTelephonyManager == null) {
            this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        }
        return this.mTelephonyManager;
    }

    KeyguardManager getKeyguardManager() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) this.mContext.getSystemService("keyguard");
        }
        return this.mKeyguardManager;
    }

    AudioManager getAudioManager() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) this.mContext.getSystemService(PowerProfile.POWER_AUDIO);
        }
        return this.mAudioManager;
    }

    MediaSessionManager getMediaSessionManager() {
        if (this.mMediaSessionManager == null) {
            this.mMediaSessionManager = (MediaSessionManager) this.mContext.getSystemService("media_session");
        }
        return this.mMediaSessionManager;
    }

    void sendCloseSystemWindows() {
        PhoneWindow.sendCloseSystemWindows(this.mContext, null);
    }

    private void handleVolumeKeyEvent(KeyEvent keyEvent) {
        getMediaSessionManager().dispatchVolumeKeyEventAsSystemService(keyEvent, Integer.MIN_VALUE);
    }

    private void handleMediaKeyEvent(KeyEvent keyEvent) {
        getMediaSessionManager().dispatchMediaKeyEventAsSystemService(keyEvent);
    }

    private boolean isUserSetupComplete() {
        return Settings.Secure.getInt(this.mContext.getContentResolver(), "user_setup_complete", 0) != 0;
    }
}
