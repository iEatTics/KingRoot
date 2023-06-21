package oicq.wlogin_sdk.request;

import oicq.wlogin_sdk.devicelock.DevlockInfo;
import oicq.wlogin_sdk.p027b.C4210ae;
import oicq.wlogin_sdk.p027b.C4231az;
import oicq.wlogin_sdk.p027b.C4242bj;
import oicq.wlogin_sdk.p027b.C4247bo;
import oicq.wlogin_sdk.p027b.C4273cn;
import oicq.wlogin_sdk.p027b.C4274co;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4282h;
import oicq.wlogin_sdk.tools.ErrMsg;
/* loaded from: classes.dex */
public class async_context {
    public long _sappid = 0;
    public long _appid = 0;
    public long _sub_appid = 0;
    public long[] _sub_appid_list = new long[0];
    public int _main_sigmap = 0;
    public byte[] _tmp_pwd = new byte[16];
    public int _tmp_pwd_type = 0;
    public byte[] _tmp_no_pic_sig = new byte[0];
    public int _last_flowid = 0;
    public int _login_bitmap = 0;
    ErrMsg _last_err_msg = new ErrMsg();
    public byte[] _tgtgt_key = new byte[16];
    public C4281g _t104 = new C4281g();
    public C4282h _t105 = new C4282h();
    public C4231az _t165 = new C4231az();
    public C4210ae _t126 = new C4210ae();
    public boolean _sec_guid_flag = false;
    public C4273cn _t402 = new C4273cn();
    public C4274co _t403 = new C4274co();
    public byte[] _dpwd = new byte[16];

    /* renamed from: _G */
    public byte[] f5179_G = new byte[16];
    public C4242bj _t174 = new C4242bj();
    public C4247bo _t17b = new C4247bo();
    DevlockInfo _devlock_info = new DevlockInfo();
    String _smslogin_msg = "";
    int _smslogin_msgcnt = 0;
    int _smslogin_timelimit = 0;
    long _msalt = 0;
    String _mpasswd = "";
    boolean _isSmslogin = false;
}
