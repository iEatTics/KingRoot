.class public Loicq/wlogin_sdk/request/async_context;
.super Ljava/lang/Object;


# instance fields
.field public _G:[B

.field public _appid:J

.field _devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

.field public _dpwd:[B

.field _isSmslogin:Z

.field _last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

.field public _last_flowid:I

.field public _login_bitmap:I

.field public _main_sigmap:I

.field _mpasswd:Ljava/lang/String;

.field _msalt:J

.field public _sappid:J

.field public _sec_guid_flag:Z

.field _smslogin_msg:Ljava/lang/String;

.field _smslogin_msgcnt:I

.field _smslogin_timelimit:I

.field public _sub_appid:J

.field public _sub_appid_list:[J

.field public _t104:Loicq/wlogin_sdk/b/g;

.field public _t105:Loicq/wlogin_sdk/b/h;

.field public _t126:Loicq/wlogin_sdk/b/ae;

.field public _t165:Loicq/wlogin_sdk/b/az;

.field public _t174:Loicq/wlogin_sdk/b/bj;

.field public _t17b:Loicq/wlogin_sdk/b/bo;

.field public _t402:Loicq/wlogin_sdk/b/cn;

.field public _t403:Loicq/wlogin_sdk/b/co;

.field public _tgtgt_key:[B

.field public _tmp_no_pic_sig:[B

.field public _tmp_pwd:[B

.field public _tmp_pwd_type:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    iput-wide v4, p0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    iput-wide v4, p0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    new-array v0, v1, [J

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    iput v1, p0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    iput v1, p0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    iput v1, p0, Loicq/wlogin_sdk/request/async_context;->_last_flowid:I

    iput v1, p0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v0}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    new-instance v0, Loicq/wlogin_sdk/b/g;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/g;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    new-instance v0, Loicq/wlogin_sdk/b/h;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/h;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/h;

    new-instance v0, Loicq/wlogin_sdk/b/az;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/az;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    new-instance v0, Loicq/wlogin_sdk/b/ae;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/ae;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t126:Loicq/wlogin_sdk/b/ae;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/async_context;->_sec_guid_flag:Z

    new-instance v0, Loicq/wlogin_sdk/b/cn;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/cn;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/cn;

    new-instance v0, Loicq/wlogin_sdk/b/co;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/co;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/co;

    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_dpwd:[B

    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_G:[B

    new-instance v0, Loicq/wlogin_sdk/b/bj;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/bj;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t174:Loicq/wlogin_sdk/b/bj;

    new-instance v0, Loicq/wlogin_sdk/b/bo;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/bo;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_t17b:Loicq/wlogin_sdk/b/bo;

    new-instance v0, Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/devicelock/DevlockInfo;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_smslogin_msg:Ljava/lang/String;

    iput v1, p0, Loicq/wlogin_sdk/request/async_context;->_smslogin_msgcnt:I

    iput v1, p0, Loicq/wlogin_sdk/request/async_context;->_smslogin_timelimit:I

    iput-wide v4, p0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    return-void
.end method
