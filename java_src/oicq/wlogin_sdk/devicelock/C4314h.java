package oicq.wlogin_sdk.devicelock;
/* renamed from: oicq.wlogin_sdk.devicelock.h */
/* loaded from: classes.dex */
public class C4314h extends C4311e {

    /* renamed from: a */
    public byte[] f5115a = new byte[0];

    public C4314h() {
        this._type = 18;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        this.f5115a = get_data();
    }
}
