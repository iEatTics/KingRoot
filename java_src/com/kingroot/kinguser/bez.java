package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public abstract class bez {
    protected bfc blM;
    protected ToolBoxView.C3655a blN;
    protected View blO;
    protected View blP;
    protected Context mContext;
    protected View mView;

    /* renamed from: ZD */
    protected abstract int mo7287ZD();

    /* renamed from: ZE */
    protected abstract void mo7286ZE();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onResume();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public abstract void mo7285r(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public abstract void mo7284s(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m7350a(bfc bfcVar) {
        this.blM = bfcVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: ZC */
    public bfc m7352ZC() {
        return this.blM;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7293a(ToolBoxView.C3655a c3655a) {
        this.blN = c3655a;
    }

    /* renamed from: a */
    public View m7351a(LayoutInflater layoutInflater) {
        if (layoutInflater == null) {
            return null;
        }
        this.mContext = layoutInflater.getContext();
        this.mView = layoutInflater.inflate(mo7287ZD(), (ViewGroup) null);
        this.blO = this.mView.findViewById(R.id.margin_divider);
        this.blP = this.mView.findViewById(R.id.full_divider);
        mo7286ZE();
        return this.mView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDestroy() {
    }
}
