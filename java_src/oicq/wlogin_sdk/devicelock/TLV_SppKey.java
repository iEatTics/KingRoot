package oicq.wlogin_sdk.devicelock;
/* loaded from: classes.dex */
public class TLV_SppKey extends C4311e {
    public byte[] SppKey = new byte[0];

    public TLV_SppKey() {
        this._type = 11;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        this.SppKey = get_data();
    }
}
