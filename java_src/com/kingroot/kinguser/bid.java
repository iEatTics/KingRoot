package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bid extends bie {
    protected Button aci;
    protected Button acj;
    protected TextView alC;
    protected View baP;
    protected TextView brb;
    private InterfaceC2303b btd;
    private InterfaceC2303b bte;
    protected View btf;
    protected View mContentView;

    /* renamed from: com.kingroot.kinguser.bid$a */
    /* loaded from: classes.dex */
    public enum EnumC2302a {
        BTN_LEFT,
        BTN_RIGHT
    }

    /* renamed from: com.kingroot.kinguser.bid$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2303b {
        /* renamed from: n */
        void mo1843n(View view);
    }

    public bid(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bie
    protected View acS() {
        this.btf = this.mLayoutInflater.inflate(R.layout.common_inside_dialog_title_template, (ViewGroup) m6926bI(0), false);
        this.brb = (TextView) this.btf.findViewById(R.id.title);
        this.brb.setText(R.string.app_name);
        return this.btf;
    }

    @Override // com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.common_dialog_content_template, (ViewGroup) m6926bI(1), false);
        this.alC = (TextView) this.mContentView.findViewById(R.id.item_content);
        return this.mContentView;
    }

    @Override // com.kingroot.kinguser.bie
    protected View acU() {
        this.baP = this.mLayoutInflater.inflate(R.layout.common_dialog_bottom_template, (ViewGroup) m6926bI(2), false);
        this.aci = (Button) this.baP.findViewById(R.id.button_left);
        this.acj = (Button) this.baP.findViewById(R.id.button_right);
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bid.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bid.this.btd != null) {
                    bid.this.btd.mo1843n(view);
                }
                bid.this.dismiss();
            }
        });
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bid.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bid.this.bte != null) {
                    bid.this.bte.mo1843n(view);
                }
                bid.this.dismiss();
            }
        });
        return this.baP;
    }

    /* renamed from: a */
    public void m6937a(InterfaceC2303b interfaceC2303b) {
        this.btd = interfaceC2303b;
    }

    /* renamed from: b */
    public void m6935b(InterfaceC2303b interfaceC2303b) {
        this.bte = interfaceC2303b;
    }

    public void setTitleText(String str) {
        if (this.brb != null) {
            this.brb.setText(str);
        }
    }

    /* renamed from: iW */
    public void m6932iW(int i) {
        this.alC.setVisibility(i);
    }

    /* renamed from: d */
    public void m6933d(CharSequence charSequence) {
        this.alC.setText(charSequence);
        if (charSequence.length() > 18) {
            this.alC.setGravity(3);
            this.alC.setGravity(7);
            return;
        }
        this.alC.setGravity(17);
    }

    /* renamed from: C */
    public void m6939C(float f) {
        this.alC.setLineSpacing(f, 1.0f);
    }

    /* renamed from: lK */
    public void mo6682lK(String str) {
        this.aci.setText(str);
    }

    /* renamed from: lL */
    public void m6930lL(String str) {
        this.acj.setText(str);
    }

    /* renamed from: a */
    public void m6938a(EnumC2302a enumC2302a) {
        int color = C3953zi.m1311pr().getColor(R.color.dialog_highlight_btn_text);
        int color2 = C3953zi.m1311pr().getColor(R.color.dialog_normal_btn_text);
        if (enumC2302a == EnumC2302a.BTN_LEFT) {
            this.aci.setTextColor(color);
            this.acj.setTextColor(color2);
        } else if (enumC2302a == EnumC2302a.BTN_RIGHT) {
            this.aci.setTextColor(color2);
            this.acj.setTextColor(color);
        }
    }

    /* renamed from: iX */
    public void m6931iX(int i) {
        this.aci.setVisibility(i);
        this.acj.setBackgroundResource(R.drawable.common_dialog_button_selector);
    }

    public Button acV() {
        return this.aci;
    }

    /* renamed from: iY */
    public void mo6683iY(int i) {
        this.acj.setVisibility(i);
        this.aci.setBackgroundResource(R.drawable.common_dialog_button_selector);
    }
}
