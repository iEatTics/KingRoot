package com.kingroot.kingmaster.toolbox.process.manager;
/* loaded from: classes.dex */
public class PackageInfoBase implements PackageInfo {
    private static final long serialVersionUID = 8981596768824037489L;
    public boolean mChecked;
    protected boolean mCloudSuggestKeep;
    protected String mDescription;
    public String mDisplayName;
    protected boolean mInBlackList;
    protected boolean mInWhiteList;
    protected String mPackageName;
    protected boolean mProtected;
    protected boolean mSelected;
    protected boolean mSystem;
    protected String mTag;

    public String getPackageName() {
        return this.mPackageName;
    }

    public String getDisplayName() {
        return this.mDisplayName;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public void setDescription(String str) {
        this.mDescription = str;
    }

    public boolean isSystem() {
        return this.mSystem;
    }

    /* renamed from: aB */
    public void m13028aB(boolean z) {
        this.mSystem = z;
    }

    /* renamed from: vk */
    public boolean m13025vk() {
        return this.mInWhiteList;
    }

    /* renamed from: aC */
    public void m13027aC(boolean z) {
        this.mInWhiteList = z;
    }

    /* renamed from: vl */
    public boolean m13024vl() {
        return this.mInBlackList;
    }

    /* renamed from: aD */
    public void m13026aD(boolean z) {
        this.mInBlackList = z;
    }
}
