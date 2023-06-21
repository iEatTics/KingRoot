package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.widget.ImageView;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ape {
    private List<ImageView> aHe;
    private int aHf;
    private int aHg;
    private int aHh;
    private int aHi;
    private apl aHj;
    private apk aHk;
    private apj aHl;
    private InterfaceC1428api aHm;
    private ImageView aHn;
    private List<String> aHo;
    private int backgroundColor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: aU */
    public void m9817aU(List<ImageView> list) {
        this.aHe = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackgroundColor(int i) {
        if (i == 0) {
            this.backgroundColor = ViewCompat.MEASURED_STATE_MASK;
        } else {
            this.backgroundColor = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: KU */
    public List<String> m9829KU() {
        return this.aHo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: aV */
    public void m9816aV(List<String> list) {
        this.aHo = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: KV */
    public apl m9828KV() {
        return this.aHj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m9818a(apl aplVar) {
        this.aHj = aplVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: KW */
    public apk m9827KW() {
        return this.aHk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m9819a(apk apkVar) {
        this.aHk = apkVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: KX */
    public apj m9826KX() {
        return this.aHl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m9820a(apj apjVar) {
        this.aHl = apjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: KY */
    public InterfaceC1428api m9825KY() {
        return this.aHm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m9821a(InterfaceC1428api interfaceC1428api) {
        this.aHm = interfaceC1428api;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: KZ */
    public int m9824KZ() {
        return this.aHf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: fU */
    public void m9814fU(int i) {
        if (i < this.aHo.size()) {
            this.aHf = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: La */
    public int m9823La() {
        return this.aHg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: fV */
    public void m9813fV(int i) {
        this.aHg = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Lb */
    public ImageView m9822Lb() {
        return this.aHn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m9815b(ImageView imageView) {
        this.aHn = imageView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOffscreenPageLimit() {
        return this.aHh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOffscreenPageLimit(int i) {
        this.aHh = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: fW */
    public void m9812fW(int i) {
        this.aHi = i;
    }
}
