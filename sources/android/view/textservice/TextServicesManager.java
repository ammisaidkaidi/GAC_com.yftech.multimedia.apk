package android.view.textservice;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.textservice.SpellCheckerSession;
import com.android.internal.textservice.ITextServicesManager;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class TextServicesManager {
    private static final boolean DBG = false;
    public static final boolean DISABLE_PER_PROFILE_SPELL_CHECKER = true;
    private static final String TAG = "TextServicesManager";
    private static TextServicesManager sInstance;
    private final ITextServicesManager mService = ITextServicesManager.Stub.asInterface(ServiceManager.getServiceOrThrow("textservices"));

    private TextServicesManager() throws ServiceManager.ServiceNotFoundException {
    }

    public static TextServicesManager getInstance() {
        TextServicesManager textServicesManager;
        synchronized (TextServicesManager.class) {
            if (sInstance == null) {
                try {
                    sInstance = new TextServicesManager();
                } catch (ServiceManager.ServiceNotFoundException e) {
                    throw new IllegalStateException(e);
                }
            }
            textServicesManager = sInstance;
        }
        return textServicesManager;
    }

    private static String parseLanguageFromLocaleString(String str) {
        int indexOf = str.indexOf(95);
        return indexOf < 0 ? str : str.substring(0, indexOf);
    }

    public SpellCheckerSession newSpellCheckerSession(Bundle bundle, Locale locale, SpellCheckerSession.SpellCheckerSessionListener spellCheckerSessionListener, boolean z) {
        SpellCheckerSubtype spellCheckerSubtype;
        if (spellCheckerSessionListener == null) {
            throw new NullPointerException();
        }
        if (!z && locale == null) {
            throw new IllegalArgumentException("Locale should not be null if you don't refer settings.");
        }
        if (z && !isSpellCheckerEnabled()) {
            return null;
        }
        try {
            SpellCheckerInfo currentSpellChecker = this.mService.getCurrentSpellChecker((String) null);
            if (currentSpellChecker == null) {
                return null;
            }
            if (z) {
                spellCheckerSubtype = getCurrentSpellCheckerSubtype(true);
                if (spellCheckerSubtype == null) {
                    return null;
                }
                if (locale != null) {
                    String parseLanguageFromLocaleString = parseLanguageFromLocaleString(spellCheckerSubtype.getLocale());
                    if (parseLanguageFromLocaleString.length() < 2 || !locale.getLanguage().equals(parseLanguageFromLocaleString)) {
                        return null;
                    }
                }
            } else {
                String locale2 = locale.toString();
                int i = 0;
                SpellCheckerSubtype spellCheckerSubtype2 = null;
                while (true) {
                    if (i >= currentSpellChecker.getSubtypeCount()) {
                        spellCheckerSubtype = spellCheckerSubtype2;
                        break;
                    }
                    SpellCheckerSubtype subtypeAt = currentSpellChecker.getSubtypeAt(i);
                    String locale3 = subtypeAt.getLocale();
                    String parseLanguageFromLocaleString2 = parseLanguageFromLocaleString(locale3);
                    if (locale3.equals(locale2)) {
                        spellCheckerSubtype = subtypeAt;
                        break;
                    }
                    if (parseLanguageFromLocaleString2.length() >= 2 && locale.getLanguage().equals(parseLanguageFromLocaleString2)) {
                        spellCheckerSubtype2 = subtypeAt;
                    }
                    i++;
                }
            }
            if (spellCheckerSubtype == null) {
                return null;
            }
            SpellCheckerSession spellCheckerSession = new SpellCheckerSession(currentSpellChecker, this.mService, spellCheckerSessionListener);
            try {
                this.mService.getSpellCheckerService(currentSpellChecker.getId(), spellCheckerSubtype.getLocale(), spellCheckerSession.getTextServicesSessionListener(), spellCheckerSession.getSpellCheckerSessionListener(), bundle);
                return spellCheckerSession;
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        } catch (RemoteException unused) {
            return null;
        }
    }

    public SpellCheckerInfo[] getEnabledSpellCheckers() {
        try {
            return this.mService.getEnabledSpellCheckers();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public SpellCheckerInfo getCurrentSpellChecker() {
        try {
            return this.mService.getCurrentSpellChecker((String) null);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public SpellCheckerSubtype getCurrentSpellCheckerSubtype(boolean z) {
        try {
            return this.mService.getCurrentSpellCheckerSubtype((String) null, z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean isSpellCheckerEnabled() {
        try {
            return this.mService.isSpellCheckerEnabled();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
