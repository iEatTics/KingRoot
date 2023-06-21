package com.kingroot.kinguser;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public abstract class adf extends bij {
    private Button aci;
    private Button acj;
    private ImageView ack;
    private LinearLayout acl;
    private InterfaceC0715b acm;
    private InterfaceC0715b acn;
    private InterfaceC0714a aco;
    protected ViewStub acp;
    private ImageView mIconView;
    private String mTitle;
    private TextView mTitleView;

    /* renamed from: com.kingroot.kinguser.adf$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0714a {
        /* renamed from: a */
        boolean m12545a(int i, KeyEvent keyEvent);
    }

    /* renamed from: com.kingroot.kinguser.adf$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0715b {
        /* renamed from: m */
        boolean mo6627m(View view);
    }

    /* renamed from: a */
    protected abstract View m12549a(ViewGroup viewGroup);

    /* renamed from: sj */
    protected void m12546sj() {
        this.acp = (ViewStub) findViewById(R.id.scroll_container);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_base_common);
        setCanceledOnTouchOutside(false);
        m12546sj();
        this.acp.inflate();
        this.acl = (LinearLayout) findViewById(R.id.container);
        this.mIconView = (ImageView) findViewById(R.id.item_icon);
        this.mTitleView = (TextView) findViewById(R.id.item_title);
        this.aci = (Button) findViewById(R.id.button_left);
        this.acj = (Button) findViewById(R.id.button_right);
        this.ack = (ImageView) findViewById(R.id.button_line);
        setIcon(R.drawable.dialog_logo);
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.adf.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (adf.this.acm == null || adf.this.acm.mo6627m(view)) {
                    adf.this.dismiss();
                }
            }
        });
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.adf.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (adf.this.acn == null || adf.this.acn.mo6627m(view)) {
                    adf.this.dismiss();
                }
            }
        });
        View m12549a = m12549a(this.acl);
        if (m12549a != null) {
            if (m12549a.getLayoutParams() != null) {
                this.acl.addView(m12549a);
            } else {
                this.acl.addView(m12549a, new ViewGroup.LayoutParams(-1, -2));
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mTitleView.setText(this.mTitle == null ? "" : this.mTitle);
    }

    public void setIcon(int i) {
        this.mIconView.setImageResource(i);
        this.mIconView.setVisibility(0);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mTitle = charSequence.toString();
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        this.mTitle = C3953zi.m1311pr().getString(i);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            boolean z = true;
            if (this.aco != null) {
                z = this.aco.m12545a(i, keyEvent);
            }
            if (z) {
                dismiss();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Throwable th) {
        }
    }
}
