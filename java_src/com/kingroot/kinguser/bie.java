package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.kingroot.kinguses.R;
import java.security.InvalidParameterException;
/* loaded from: classes.dex */
public abstract class bie extends bij {
    protected FrameLayout btk;
    protected FrameLayout btl;
    protected FrameLayout btm;
    protected InterfaceC2304a btn;
    protected InterfaceC2305b bto;
    protected LayoutInflater mLayoutInflater;

    /* renamed from: com.kingroot.kinguser.bie$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2304a {
        /* renamed from: a */
        boolean mo6924a(int i, KeyEvent keyEvent);
    }

    /* renamed from: com.kingroot.kinguser.bie$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2305b {
        /* renamed from: b */
        boolean mo6923b(int i, KeyEvent keyEvent);
    }

    protected abstract View acQ();

    protected abstract View acS();

    protected abstract View acU();

    public bie(Context context) {
        super((Context) C3948zd.m1327k(context), 2131558505);
        this.mLayoutInflater = LayoutInflater.from(context);
    }

    /* renamed from: al */
    public void m6927al(@LayoutRes int i, int i2) {
        m6925s(this.mLayoutInflater.inflate(i, (ViewGroup) m6926bI(i2), false), i2);
    }

    /* renamed from: s */
    public void m6925s(View view, int i) {
        if (view != null) {
            m6926bI(i).removeAllViews();
            m6926bI(i).addView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.common_dialog_template);
        getWindow().setLayout(-1, -2);
        this.btk = (FrameLayout) findViewById(R.id.title_layout);
        this.btl = (FrameLayout) findViewById(R.id.content_layout);
        this.btm = (FrameLayout) findViewById(R.id.bottom_layout);
        m6925s(acS(), 0);
        m6925s(acQ(), 1);
        m6925s(acU(), 2);
    }

    /* renamed from: bI */
    public FrameLayout m6926bI(int i) {
        switch (i) {
            case 0:
                return this.btk;
            case 1:
                return this.btl;
            case 2:
                return this.btm;
            default:
                throw new InvalidParameterException("invalid type: " + i);
        }
    }

    /* renamed from: a */
    public void m6929a(InterfaceC2304a interfaceC2304a) {
        this.btn = interfaceC2304a;
    }

    /* renamed from: a */
    public void m6928a(InterfaceC2305b interfaceC2305b) {
        this.bto = interfaceC2305b;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.btn != null ? this.btn.mo6924a(i, keyEvent) : true) {
                dismiss();
            }
        } else if (this.bto != null && this.bto.mo6923b(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
