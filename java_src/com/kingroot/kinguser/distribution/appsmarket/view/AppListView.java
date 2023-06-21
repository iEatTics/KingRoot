package com.kingroot.kinguser.distribution.appsmarket.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kingroot.common.uilib.TransparentListView;
import com.kingroot.kinguser.C3857ws;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguses.R;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class AppListView extends TransparentListView implements AbsListView.OnScrollListener {
    private InterfaceC2928a aCH;
    private AtomicBoolean aCI;
    private AtomicBoolean aCJ;
    private View aCK;
    private ProgressBar aCL;
    private View mHeaderView;
    private TextView mTextView;

    /* renamed from: com.kingroot.kinguser.distribution.appsmarket.view.AppListView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2928a {
        /* renamed from: Je */
        void mo4128Je();
    }

    public AppListView(Context context) {
        super(context);
        this.aCI = new AtomicBoolean(false);
        this.aCJ = new AtomicBoolean(false);
        m4135G(context);
    }

    public AppListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aCI = new AtomicBoolean(false);
        this.aCJ = new AtomicBoolean(false);
        m4135G(context);
    }

    public AppListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aCI = new AtomicBoolean(false);
        this.aCJ = new AtomicBoolean(false);
        m4135G(context);
    }

    /* renamed from: G */
    private void m4135G(Context context) {
        this.aCK = LayoutInflater.from(context).inflate(R.layout.app_load_more_view, (ViewGroup) this, false);
        this.aCL = (ProgressBar) this.aCK.findViewById(R.id.progress);
        this.mTextView = (TextView) this.aCK.findViewById(R.id.app_download_text);
        addFooterView(this.aCK);
        this.aCL.setVisibility(8);
        this.mTextView.setText("");
        setOnScrollListener(this);
        if (Build.VERSION.SDK_INT >= 11) {
            setFriction(ViewConfiguration.getScrollFriction() * 4.0f);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (this.aCI.get() && !this.aCJ.get() && i == 0 && this.aCH != null) {
            this.aCJ.set(true);
            m4132Jr();
            this.aCH.mo4128Je();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.aCI.set(i3 == i + i2);
        if (this.mHeaderView != null) {
            C3857ws.m1499a(this, this.mHeaderView, computeVerticalScrollOffset());
        }
    }

    public void setLoadMoreListener(InterfaceC2928a interfaceC2928a) {
        this.aCH = interfaceC2928a;
    }

    /* renamed from: Jp */
    public void m4134Jp() {
        this.aCJ.set(false);
        m4131Js();
    }

    /* renamed from: Jq */
    public void m4133Jq() {
        this.aCJ.set(false);
        m4131Js();
    }

    /* renamed from: Jr */
    private void m4132Jr() {
        anf.m10295a(this.aCL, this.mTextView);
    }

    /* renamed from: Js */
    private void m4131Js() {
        anf.m10288b(this.aCL, this.mTextView);
    }

    /* renamed from: i */
    public void m4129i(View view) {
        this.mHeaderView = view;
    }

    /* renamed from: Jt */
    public void m4130Jt() {
        removeFooterView(this.aCK);
    }
}
