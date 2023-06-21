package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.loader.C3999p;
import com.kingroot.loader.multi.IKlConnectionManagerBridge;
import com.kingroot.loader.sdk.KlContext;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
/* loaded from: classes.dex */
public class bkl extends AbstractC3667tu<IKlConnectionManagerBridge> implements IKlConnectionManager {

    /* renamed from: a */
    private final IKlConnectionManager f1724a = new bjv();

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: aeN */
    public IKlConnectionManagerBridge mo2010jV() {
        return C3999p.aeN();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: a */
    public IKlConnectionManagerBridge mo2013d(IBinder iBinder) {
        return IKlConnectionManagerBridge.AbstractBinderC3993a.m1219a(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KApplication.m13453ge(), C3999p.class);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public IBinder getService(int i, Intent intent) {
        try {
            IKlConnectionManagerBridge jX = m2124jX();
            if (jX != null) {
                return jX.getService(i, intent);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
        return null;
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Bundle talkWithHost(@NonNull KlContext klContext, Bundle bundle) {
        return this.f1724a.talkWithHost(klContext, bundle);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Bundle talkWithPlugin(int i, Bundle bundle) {
        return this.f1724a.talkWithPlugin(i, bundle);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Cursor query(int i, @NonNull Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return this.f1724a.query(i, uri, strArr, str, strArr2, str2);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public String getType(int i, @NonNull Uri uri) {
        return this.f1724a.getType(i, uri);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Uri insert(int i, @NonNull Uri uri, ContentValues contentValues) {
        return this.f1724a.insert(i, uri, contentValues);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public int delete(int i, @NonNull Uri uri, String str, String[] strArr) {
        return this.f1724a.delete(i, uri, str, strArr);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public int update(int i, @NonNull Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return this.f1724a.update(i, uri, contentValues, str, strArr);
    }
}
