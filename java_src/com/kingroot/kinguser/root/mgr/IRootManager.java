package com.kingroot.kinguser.root.mgr;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.kinguser.root.mgr.IAppRulesChangeListener;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface IRootManager extends IInterface {
    void addAllowRule(String str, String str2, long j);

    void addAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener);

    void addAskRule(String str, String str2, long j);

    void addDenyRule(String str, String str2, long j);

    void addRule(long j, String str, String str2, int i, long j2);

    void checkAppRules();

    void deleteRule(String str);

    void doActionForCallingUid(int i, int i2, boolean z);

    Map getAllAppRuleList();

    List<RootMgrAppModel> getAllAppsInfo();

    Map getAllowAppRuleList();

    Map getDenyAppRuleList();

    int getRuleType(String str);

    boolean inDenyRuleList(String str);

    void removeAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener);

    void rootMgrToast(String str, String str2);

    void setSuRequestPromptLive(boolean z);

    void startPrepareRootMgrList();

    void startPrepareRootMgrListWhenInstall(String str);

    void startPrepareRootMgrSuggestion();

    void triggerSuRequestPrompt();

    void updateRule(String str, int i, long j);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IRootManager {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.root.mgr.IRootManager";
        static final int TRANSACTION_addAllowRule = 2;
        static final int TRANSACTION_addAppRulesChangeListener = 5;
        static final int TRANSACTION_addAskRule = 3;
        static final int TRANSACTION_addDenyRule = 4;
        static final int TRANSACTION_addRule = 13;
        static final int TRANSACTION_checkAppRules = 8;
        static final int TRANSACTION_deleteRule = 14;
        static final int TRANSACTION_doActionForCallingUid = 19;
        static final int TRANSACTION_getAllAppRuleList = 15;
        static final int TRANSACTION_getAllAppsInfo = 11;
        static final int TRANSACTION_getAllowAppRuleList = 16;
        static final int TRANSACTION_getDenyAppRuleList = 17;
        static final int TRANSACTION_getRuleType = 9;
        static final int TRANSACTION_inDenyRuleList = 10;
        static final int TRANSACTION_removeAppRulesChangeListener = 6;
        static final int TRANSACTION_rootMgrToast = 18;
        static final int TRANSACTION_setSuRequestPromptLive = 20;
        static final int TRANSACTION_startPrepareRootMgrList = 7;
        static final int TRANSACTION_startPrepareRootMgrListWhenInstall = 12;
        static final int TRANSACTION_startPrepareRootMgrSuggestion = 22;
        static final int TRANSACTION_triggerSuRequestPrompt = 21;
        static final int TRANSACTION_updateRule = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRootManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRootManager)) {
                return (IRootManager) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateRule(parcel.readString(), parcel.readInt(), parcel.readLong());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    addAllowRule(parcel.readString(), parcel.readString(), parcel.readLong());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    addAskRule(parcel.readString(), parcel.readString(), parcel.readLong());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    addDenyRule(parcel.readString(), parcel.readString(), parcel.readLong());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    addAppRulesChangeListener(IAppRulesChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeAppRulesChangeListener(IAppRulesChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    startPrepareRootMgrList();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    checkAppRules();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int ruleType = getRuleType(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(ruleType);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean inDenyRuleList = inDenyRuleList(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(inDenyRuleList ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<RootMgrAppModel> allAppsInfo = getAllAppsInfo();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allAppsInfo);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    startPrepareRootMgrListWhenInstall(parcel.readString());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRule(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readLong());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteRule(parcel.readString());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map allAppRuleList = getAllAppRuleList();
                    parcel2.writeNoException();
                    parcel2.writeMap(allAppRuleList);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map allowAppRuleList = getAllowAppRuleList();
                    parcel2.writeNoException();
                    parcel2.writeMap(allowAppRuleList);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map denyAppRuleList = getDenyAppRuleList();
                    parcel2.writeNoException();
                    parcel2.writeMap(denyAppRuleList);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    rootMgrToast(parcel.readString(), parcel.readString());
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    doActionForCallingUid(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSuRequestPromptLive(parcel.readInt() != 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    triggerSuRequestPrompt();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    startPrepareRootMgrSuggestion();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IRootManager {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void updateRule(String str, int i, long j) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void addAllowRule(String str, String str2, long j) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void addAskRule(String str, String str2, long j) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void addDenyRule(String str, String str2, long j) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void addAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iAppRulesChangeListener != null ? iAppRulesChangeListener.asBinder() : null);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void removeAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iAppRulesChangeListener != null ? iAppRulesChangeListener.asBinder() : null);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void startPrepareRootMgrList() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void checkAppRules() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public int getRuleType(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public boolean inDenyRuleList(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public List<RootMgrAppModel> getAllAppsInfo() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(RootMgrAppModel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void startPrepareRootMgrListWhenInstall(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void addRule(long j, String str, String str2, int i, long j2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    obtain.writeLong(j2);
                    this.mRemote.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void deleteRule(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(14, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public Map getAllAppRuleList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public Map getAllowAppRuleList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public Map getDenyAppRuleList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void rootMgrToast(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(18, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void doActionForCallingUid(int i, int i2, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void setSuRequestPromptLive(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(20, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void triggerSuRequestPrompt() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.mgr.IRootManager
            public void startPrepareRootMgrSuggestion() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
