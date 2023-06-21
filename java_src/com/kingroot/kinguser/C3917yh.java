package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.yh */
/* loaded from: classes.dex */
public class C3917yh implements InterfaceC3915yf<InterfaceC3918yi> {

    /* renamed from: UW */
    private volatile InterfaceC3918yi f4007UW = new C3914ye();

    /* renamed from: UX */
    private ArrayList<InterfaceC3916yg> f4008UX;

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    /* renamed from: a */
    public void mo1424a(InterfaceC3916yg interfaceC3916yg) {
        if (this.f4008UX == null) {
            this.f4008UX = new ArrayList<>();
        }
        if (!this.f4008UX.contains(interfaceC3916yg)) {
            this.f4008UX.add(interfaceC3916yg);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    /* renamed from: b */
    public void mo1423b(InterfaceC3916yg interfaceC3916yg) {
        if (this.f4008UX != null && this.f4008UX.contains(interfaceC3916yg)) {
            this.f4008UX.remove(interfaceC3916yg);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    public int getColor(int i) {
        C3953zi m1311pr = C3953zi.m1311pr();
        int color = m1311pr.getColor(i);
        try {
            return this.f4007UW.getColor(m1311pr.getIdentifier(m1311pr.getResourceEntryName(i), "color", KApplication.m13453ge().getPackageName()));
        } catch (Resources.NotFoundException e) {
            return color;
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    @SuppressLint({"NewApi"})
    public Drawable getDrawable(int i) {
        C3953zi m1311pr = C3953zi.m1311pr();
        Drawable drawable = m1311pr.getDrawable(i);
        try {
            Drawable drawable2 = this.f4007UW.getDrawable(m1311pr.getIdentifier(m1311pr.getResourceEntryName(i), "drawable", KApplication.m13453ge().getPackageName()));
            return drawable2 == null ? drawable : drawable2;
        } catch (Throwable th) {
            if (0 != 0) {
                return null;
            }
            return drawable;
        }
    }
}
