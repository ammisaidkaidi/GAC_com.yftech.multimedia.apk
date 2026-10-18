package android.view.accessibility;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface AccessibilityEventSource {
    void sendAccessibilityEvent(int i);

    void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent);
}
