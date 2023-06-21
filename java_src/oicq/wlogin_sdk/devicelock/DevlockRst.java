package oicq.wlogin_sdk.devicelock;
/* loaded from: classes.dex */
public class DevlockRst {
    public static final int E_RST_UNKOWN = -1;
    public static final int E_SEND_QUERYSIG = 1201;
    public static final int E_VERIFY_QUERYSIG = 1301;
    public static final int S_OK = 0;
    public TLV_CommRsp commRsp = new TLV_CommRsp();
    public C4317k mbMobileInfo = new C4317k();
    public C4315i devSetupInfo = new C4315i();
    public C4316j mbGuideInfo = new C4316j();
    public TLV_QuerySig querySig = new TLV_QuerySig();
    public TLV_SppKey sppKey = new TLV_SppKey();
    public C4319m smsInfo = new C4319m();
    public C4314h devGuideInfo = new C4314h();
    public C4311e transferInfo = new C4311e();

    public void setSppKey(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        this.sppKey = new TLV_SppKey();
        this.sppKey.set_data(bArr, bArr.length);
    }
}
