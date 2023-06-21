package com.kingroot.kinguser;

import android.support.p007v7.widget.RecyclerView;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class amd implements amm {
    public AppDownLoadModel azI;
    public WeakReference<RecyclerView.ViewHolder> azJ;

    public amd(AppDownLoadModel appDownLoadModel) {
        this.azI = appDownLoadModel;
    }

    /* renamed from: Io */
    public AppDownLoadModel m10443Io() {
        return this.azI;
    }

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 5;
    }
}
