package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bih extends bid {
    private ImageView ahP;
    private TextView btr;
    private ImageView bts;

    public bih(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acS() {
        this.btf = this.mLayoutInflater.inflate(R.layout.common_outside_dialog_title_template, (ViewGroup) m6926bI(0), false);
        this.ahP = (ImageView) this.btf.findViewById(R.id.title_icon);
        this.brb = (TextView) this.btf.findViewById(R.id.title);
        this.btr = (TextView) this.btf.findViewById(R.id.secondary_title);
        this.bts = (ImageView) this.btf.findViewById(R.id.app_icon);
        return this.btf;
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.common_outside_dialog_content_template, (ViewGroup) m6926bI(1), false);
        this.alC = (TextView) this.mContentView.findViewById(R.id.item_content);
        return this.mContentView;
    }

    /* renamed from: ja */
    public void m6917ja(int i) {
        if (this.btf != null) {
            this.btf.setBackgroundResource(i);
        }
    }

    /* renamed from: a */
    public void m6919a(bid.EnumC2302a enumC2302a, int i) {
        int color = C3953zi.m1311pr().getColor(i);
        if (enumC2302a == bid.EnumC2302a.BTN_LEFT) {
            this.aci.setTextColor(color);
        } else if (enumC2302a == bid.EnumC2302a.BTN_RIGHT) {
            this.acj.setTextColor(color);
        }
    }

    public void setIcon(Drawable drawable) {
        this.ahP.setImageDrawable(drawable);
        this.ahP.setVisibility(0);
    }

    public void setIcon(int i) {
        this.ahP.setImageResource(i);
        this.ahP.setVisibility(0);
    }

    /* renamed from: h */
    public void m6918h(Bitmap bitmap) {
        this.ahP.setImageBitmap(bitmap);
        this.ahP.setVisibility(0);
    }

    /* renamed from: lM */
    public void m6914lM(String str) {
        this.btr.setText(str);
    }

    /* renamed from: jb */
    public void m6916jb(int i) {
        this.btr.setVisibility(i);
    }

    /* renamed from: jc */
    public void m6915jc(int i) {
        this.bts.setImageResource(i);
        this.bts.setVisibility(0);
    }
}
