package oicq.wlogin_sdk.devicelock;
/* loaded from: classes.dex */
public class TLV_QuerySig extends C4311e {
    public byte[] QuerySig = new byte[0];

    public TLV_QuerySig() {
        this._type = 8;
    }

    @Override // oicq.wlogin_sdk.devicelock.C4311e
    public void parse() {
        this.QuerySig = get_data();
    }
}
