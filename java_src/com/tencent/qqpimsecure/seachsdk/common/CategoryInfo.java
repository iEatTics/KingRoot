package com.tencent.qqpimsecure.seachsdk.common;

import android.graphics.drawable.Drawable;
import java.io.Serializable;
/* loaded from: classes.dex */
public class CategoryInfo implements Serializable {
    private static final long serialVersionUID = 1;
    private Drawable mIcon;
    private String mIconUrl;
    private int mRank;
    private long mTime;
    private String mTitle;
    private int mType;
    private int pushType;
    private long updateTime;
    private int mID = 0;
    private int mCount = 0;
    private String mContent = "";
    private String mDescript = "";
    private int mSign = 0;
    private int mState = 0;

    public String aih() {
        return this.mIconUrl;
    }

    /* renamed from: ni */
    public void m445ni(String str) {
        this.mIconUrl = str;
    }

    public int aii() {
        return this.mID;
    }

    /* renamed from: kn */
    public void m448kn(int i) {
        this.mID = i;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public int getCount() {
        return this.mCount;
    }

    /* renamed from: ko */
    public void m447ko(int i) {
        this.mCount = i;
    }

    public String aij() {
        return this.mContent;
    }

    /* renamed from: nj */
    public void m444nj(String str) {
        this.mContent = str;
    }

    public String aik() {
        return this.mDescript;
    }

    public int getSign() {
        return this.mSign;
    }

    public int getState() {
        return this.mState;
    }

    public int getType() {
        return this.mType;
    }

    public long getTime() {
        return this.mTime;
    }

    public long ail() {
        return this.updateTime;
    }

    /* renamed from: cI */
    public void m449cI(long j) {
        this.updateTime = j;
    }

    public int aim() {
        return this.pushType;
    }

    /* renamed from: kp */
    public void m446kp(int i) {
        this.pushType = i;
    }

    public int getRank() {
        return this.mRank;
    }
}
