package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.model.AppRuleEntity;
import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.kinguser.root.mgr.IAppRulesChangeListener;
import com.kingroot.kinguser.root.mgr.IRootManager;
import com.kingroot.kinguser.root.mgr.RootManagerService;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class bbt extends AbstractC3667tu<IRootManager> {
    private static final cce<bbt> sInstance = new cce<bbt>() { // from class: com.kingroot.kinguser.bbt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: WI */
        public bbt create() {
            return new bbt();
        }
    };

    /* renamed from: WG */
    public static bbt m7780WG() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: WH */
    public IRootManager mo2010jV() {
        return RootManagerService.getInterface();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: o */
    public IRootManager mo2013d(IBinder iBinder) {
        return RootManagerService.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KUApplication.m13453ge(), bbr.class);
    }

    public void updateRule(String str, int i, long j) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.updateRule(str, i, j);
            }
        } catch (RemoteException e) {
        }
    }

    public void addAllowRule(String str, String str2, long j) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.addAllowRule(str, str2, j);
            }
        } catch (RemoteException e) {
        }
    }

    public void addAskRule(String str, String str2, long j) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.addAskRule(str, str2, j);
            }
        } catch (RemoteException e) {
        }
    }

    public void addDenyRule(String str, String str2, long j) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.addDenyRule(str, str2, j);
            }
        } catch (RemoteException e) {
        }
    }

    public void addAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.addAppRulesChangeListener(iAppRulesChangeListener);
            }
        } catch (RemoteException e) {
        }
    }

    public void removeAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.removeAppRulesChangeListener(iAppRulesChangeListener);
            }
        } catch (RemoteException e) {
        }
    }

    public void startPrepareRootMgrList() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.startPrepareRootMgrList();
            }
        } catch (RemoteException e) {
        }
    }

    public void checkAppRules() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.checkAppRules();
            }
        } catch (RemoteException e) {
        }
    }

    public int getRuleType(String str) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                return jX.getRuleType(str);
            }
        } catch (RemoteException e) {
        }
        return -1;
    }

    public boolean inDenyRuleList(String str) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                return jX.inDenyRuleList(str);
            }
        } catch (RemoteException e) {
        }
        return false;
    }

    @NonNull
    public List<RootMgrAppModel> getAllAppsInfo() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                return jX.getAllAppsInfo();
            }
        } catch (RemoteException e) {
        }
        return new ArrayList();
    }

    public void startPrepareRootMgrListWhenInstall(String str) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.startPrepareRootMgrListWhenInstall(str);
            }
        } catch (RemoteException e) {
        }
    }

    public void addRule(long j, String str, String str2, int i, long j2) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.addRule(j, str, str2, i, j2);
            }
        } catch (RemoteException e) {
        }
    }

    public void deleteRule(String str) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.deleteRule(str);
            }
        } catch (RemoteException e) {
        }
    }

    public HashMap<String, AppRuleEntity> getAllAppRuleList() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                return (HashMap) jX.getAllAppRuleList();
            }
        } catch (RemoteException e) {
        }
        return new HashMap<>();
    }

    public HashMap<String, AppRuleEntity> getAllowAppRuleList() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                return (HashMap) jX.getAllowAppRuleList();
            }
        } catch (RemoteException e) {
        }
        return new HashMap<>();
    }

    public HashMap<String, AppRuleEntity> getDenyAppRuleList() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                return (HashMap) jX.getDenyAppRuleList();
            }
        } catch (RemoteException e) {
        }
        return new HashMap<>();
    }

    public void rootMgrToast(String str, String str2) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.rootMgrToast(str, str2);
            }
        } catch (RemoteException e) {
        }
    }

    public void doActionForCallingUid(int i, int i2, boolean z) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.doActionForCallingUid(i, i2, z);
            }
        } catch (RemoteException e) {
        }
    }

    public void setSuRequestPromptLive(boolean z) {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.setSuRequestPromptLive(z);
            }
        } catch (RemoteException e) {
        }
    }

    public void triggerSuRequestPrompt() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.triggerSuRequestPrompt();
            }
        } catch (RemoteException e) {
        }
    }

    public void startPrepareRootMgrSuggestion() {
        try {
            IRootManager jX = m2124jX();
            if (jX != null) {
                jX.startPrepareRootMgrSuggestion();
            }
        } catch (RemoteException e) {
        }
    }
}
