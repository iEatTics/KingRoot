package cloudsdk.ext.p008kr;
/* renamed from: cloudsdk.ext.kr.OnRootListener */
/* loaded from: classes.dex */
public interface OnRootListener {
    void onCheckRoot();

    void onCheckRootFinish(RootExtInfo rootExtInfo, RootExtInfo rootExtInfo2);

    void onRootFail(RootExtInfo rootExtInfo, RootExtInfo rootExtInfo2);

    void onRootSuc(int i);

    void onRooting(int i, int i2, int i3, int i4);

    void onSettingNetwork();
}
