package com.kingroot.kinguser.ztool.autostartmgr;

import android.text.TextUtils;
import com.kingroot.kingmaster.toolbox.process.manager.PackageInfoBase;
import com.kingroot.kinguser.InterfaceC3562rr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class AutoStartAppItemInfo extends PackageInfoBase {
    private static final long serialVersionUID = 3799311520707064872L;
    private ArrayList<String> mActions;
    private ArrayList<String> mBackgroundStartReceiverRecords;
    private ArrayList<String> mBootStartReceiverRecords;
    private int mCurEnabled;
    private int mEnabled;
    private ArrayList<AutoStartReceiver> mReceivers;
    private int mType;
    private int mUid;
    private boolean mHasBootStartEnabled = false;
    private boolean mHasBackgroundStartEnabled = false;
    private boolean mAsUserWillEnabled = false;
    private int mFlag = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class AutoStartAction implements InterfaceC3562rr, Comparable<AutoStartAction> {
        private static final long serialVersionUID = -9198851029438857519L;
        private final String mDescription;
        private final String mName;

        AutoStartAction(String str, String str2) {
            this.mName = str;
            this.mDescription = str2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(AutoStartAction autoStartAction) {
            return this.mDescription.length() - autoStartAction.mDescription.length();
        }
    }

    /* loaded from: classes.dex */
    public static final class AutoStartReceiver implements InterfaceC3562rr {
        private static final long serialVersionUID = -7590720312107995656L;
        private ArrayList<AutoStartAction> mActions;
        private final boolean mEnabled;
        private final String mName;

        public AutoStartReceiver(String str, boolean z) {
            this.mName = str;
            this.mEnabled = z;
        }

        /* renamed from: aN */
        public void m1250aN(String str, String str2) {
            if (m1247lW(str) == null) {
                m1248d(new AutoStartAction(str, str2));
            }
        }

        /* renamed from: d */
        private void m1248d(AutoStartAction autoStartAction) {
            if (this.mActions == null) {
                this.mActions = new ArrayList<>();
            }
            this.mActions.add(autoStartAction);
        }

        /* renamed from: lW */
        public AutoStartAction m1247lW(String str) {
            if (this.mActions != null) {
                Iterator<AutoStartAction> it = this.mActions.iterator();
                while (it.hasNext()) {
                    AutoStartAction next = it.next();
                    if (next.mName.equals(str)) {
                        return next;
                    }
                }
            }
            return null;
        }

        public int adz() {
            if (this.mActions == null) {
                return 0;
            }
            return this.mActions.size();
        }

        public List<AutoStartAction> getActions() {
            return this.mActions;
        }

        public String getName() {
            return this.mName;
        }
    }

    /* renamed from: h */
    public static AutoStartAppItemInfo m1256h(String str, String str2, int i) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        return new AutoStartAppItemInfo(str, str2, i);
    }

    private AutoStartAppItemInfo(String str, String str2, int i) {
        this.mDisplayName = TextUtils.isEmpty(str) ? str2 : str;
        this.mPackageName = str2;
        this.mUid = i;
    }

    public ArrayList<String> ady() {
        return this.mActions;
    }

    public int adz() {
        if (this.mActions == null) {
            return 0;
        }
        return this.mActions.size();
    }

    public ArrayList<AutoStartReceiver> adA() {
        return this.mReceivers;
    }

    /* renamed from: a */
    public void m1257a(AutoStartReceiver autoStartReceiver) {
        if (this.mReceivers == null) {
            this.mReceivers = new ArrayList<>();
        }
        this.mReceivers.add(autoStartReceiver);
    }

    public int adB() {
        return this.mCurEnabled;
    }

    /* renamed from: jj */
    public void m1255jj(int i) {
        this.mCurEnabled = i;
    }

    public int adC() {
        return this.mEnabled;
    }

    /* renamed from: jk */
    public void m1254jk(int i) {
        this.mEnabled = i;
    }

    public void populate() {
        boolean z;
        HashMap hashMap = new HashMap();
        if (this.mReceivers != null) {
            Iterator<AutoStartReceiver> it = this.mReceivers.iterator();
            z = false;
            while (it.hasNext()) {
                AutoStartReceiver next = it.next();
                z |= next.mEnabled;
                if (next.adz() > 0) {
                    for (AutoStartAction autoStartAction : next.getActions()) {
                        if (!hashMap.containsKey(autoStartAction.mName)) {
                            hashMap.put(autoStartAction.mName, autoStartAction.mDescription);
                        }
                    }
                }
            }
        } else {
            z = false;
        }
        m1254jk(z ? 0 : 1);
        this.mActions = new ArrayList<>(hashMap.values());
    }
}
