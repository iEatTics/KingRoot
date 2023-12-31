package android.support.p004v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.os.Build;
import android.support.p004v4.view.accessibility.AccessibilityManagerCompatIcs;
import android.view.accessibility.AccessibilityManager;
import java.util.Collections;
import java.util.List;
/* renamed from: android.support.v4.view.accessibility.AccessibilityManagerCompat */
/* loaded from: classes.dex */
public final class AccessibilityManagerCompat {
    private static final AccessibilityManagerVersionImpl IMPL;

    /* renamed from: android.support.v4.view.accessibility.AccessibilityManagerCompat$AccessibilityManagerVersionImpl */
    /* loaded from: classes.dex */
    interface AccessibilityManagerVersionImpl {
        boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);

        List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i);

        List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager);

        boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager);

        Object newAccessiblityStateChangeListener(AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);

        boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);
    }

    /* renamed from: android.support.v4.view.accessibility.AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat */
    /* loaded from: classes.dex */
    public static abstract class AccessibilityStateChangeListenerCompat {
        final Object mListener = AccessibilityManagerCompat.IMPL.newAccessiblityStateChangeListener(this);

        public abstract void onAccessibilityStateChanged(boolean z);
    }

    /* renamed from: android.support.v4.view.accessibility.AccessibilityManagerCompat$AccessibilityManagerStubImpl */
    /* loaded from: classes.dex */
    static class AccessibilityManagerStubImpl implements AccessibilityManagerVersionImpl {
        AccessibilityManagerStubImpl() {
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public Object newAccessiblityStateChangeListener(AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return null;
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
            return Collections.emptyList();
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
            return Collections.emptyList();
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
            return false;
        }
    }

    /* renamed from: android.support.v4.view.accessibility.AccessibilityManagerCompat$AccessibilityManagerIcsImpl */
    /* loaded from: classes.dex */
    static class AccessibilityManagerIcsImpl extends AccessibilityManagerStubImpl {
        AccessibilityManagerIcsImpl() {
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerStubImpl, android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public Object newAccessiblityStateChangeListener(final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.newAccessibilityStateChangeListener(new AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge() { // from class: android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerIcsImpl.1
                @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge
                public void onAccessibilityStateChanged(boolean z) {
                    accessibilityStateChangeListenerCompat.onAccessibilityStateChanged(z);
                }
            });
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerStubImpl, android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat.mListener);
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerStubImpl, android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat.mListener);
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerStubImpl, android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
            return AccessibilityManagerCompatIcs.getEnabledAccessibilityServiceList(accessibilityManager, i);
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerStubImpl, android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.getInstalledAccessibilityServiceList(accessibilityManager);
        }

        @Override // android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerStubImpl, android.support.p004v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerVersionImpl
        public boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.isTouchExplorationEnabled(accessibilityManager);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new AccessibilityManagerIcsImpl();
        } else {
            IMPL = new AccessibilityManagerStubImpl();
        }
    }

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return IMPL.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat);
    }

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return IMPL.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat);
    }

    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return IMPL.getInstalledAccessibilityServiceList(accessibilityManager);
    }

    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
        return IMPL.getEnabledAccessibilityServiceList(accessibilityManager, i);
    }

    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return IMPL.isTouchExplorationEnabled(accessibilityManager);
    }

    private AccessibilityManagerCompat() {
    }
}
