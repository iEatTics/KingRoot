.class public Loicq/wlogin_sdk/sharemem/WloginSigInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginSigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIG_RESERVE_LENGTH:I = 0xf

.field public static final SIG_RESERVE_VALID_LENGTH:I = 0x7

.field public static _LHSig:[B = null

.field public static _QRPUSHSig:[B = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public _A2_create_time:J

.field public _A2_expire_time:J

.field public _D2:[B

.field public _D2Key:[B

.field public _D2_create_time:J

.field public _D2_expire_time:J

.field public _DA2:[B

.field public _G:[B

.field public _TGT:[B

.field public _TGTKey:[B

.field public _access_token:[B

.field public _access_token_create_time:J

.field public _app_pri:J

.field public _aqSig:[B

.field public _aqSig_create_time:J

.field public _create_time:J

.field public _dpwd:[B

.field public _en_A1:[B

.field public _login_bitmap:I

.field public _lsKey:[B

.field public _lsKey_create_time:J

.field public _lsKey_expire_time:J

.field public _noPicSig:[B

.field public _openid:[B

.field public _openkey:[B

.field public _openkey_create_time:J

.field public _pay_token:[B

.field public _pf:[B

.field public _pfKey:[B

.field public _psKey:[B

.field public _psKey_create_time:J

.field public _pt4Token:[B

.field public _randseed:[B

.field public _sKey:[B

.field public _sKey_create_time:J

.field public _sKey_expire_time:J

.field public _sid:[B

.field public _sid_create_time:J

.field public _sid_expire_time:J

.field public _superKey:[B

.field public _userA5:[B

.field public _userA5_create_time:J

.field public _userA8:[B

.field public _userA8_create_time:J

.field public _userA8_expire_time:J

.field public _userSig64:[B

.field public _userSig64_create_time:J

.field public _userStSig:[B

.field public _userStSig_create_time:J

.field public _userStWebSig:[B

.field public _userStWebSig_create_time:J

.field public _userStWebSig_expire_time:J

.field public _userSt_Key:[B

.field public _vKey_expire_time:J

.field public _vkey:[B

.field public _vkey_create_time:J

.field public transient cacheTickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/request/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field public transient cacheUpdateStamp:J

.field public mainSigMap:I

.field public wtSessionTicket:[B

.field public wtSessionTicketCreatTime:J

.field public wtSessionTicketKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    new-instance v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo$1;

    invoke-direct {v0}, Loicq/wlogin_sdk/sharemem/WloginSigInfo$1;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    invoke-virtual/range {p0 .. p23}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->SetSigInfo(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)V

    return-void
.end method

.method public constructor <init>(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JII)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    const/4 v2, 0x0

    iput v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    const/4 v2, 0x0

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    move/from16 v0, p24

    iput v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->mainSigMap:I

    invoke-virtual/range {p0 .. p23}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->SetSigInfo(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)V

    return-void
.end method

.method public constructor <init>(JJ[B[B)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    iput v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    if-eqz p5, :cond_0

    array-length v0, p5

    if-lez v0, :cond_0

    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iput-wide p1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    :cond_0
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    :cond_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    iput v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->cacheTickets:Ljava/util/List;

    invoke-virtual {p0, p1}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Loicq/wlogin_sdk/sharemem/WloginSigInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Set(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 1

    invoke-virtual/range {p0 .. p23}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->SetSigInfo(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)V

    return-object p0
.end method

.method public Set([[BJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    array-length v0, v0

    if-lez v0, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    iput-wide p2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    aget-object v0, p1, v3

    if-eqz v0, :cond_4

    aget-object v0, p1, v3

    array-length v0, v0

    if-lez v0, :cond_4

    aget-object v0, p1, v3

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    :cond_0
    :goto_0
    aget-object v0, p1, v4

    if-eqz v0, :cond_1

    aget-object v0, p1, v4

    array-length v0, v0

    if-lez v0, :cond_1

    aget-object v0, p1, v4

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    :cond_1
    aget-object v0, p1, v5

    if-eqz v0, :cond_2

    aget-object v0, p1, v5

    array-length v0, v0

    if-lez v0, :cond_2

    aget-object v0, p1, v5

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    :cond_2
    aget-object v0, p1, v6

    if-eqz v0, :cond_3

    aget-object v0, p1, v6

    array-length v0, v0

    if-lez v0, :cond_3

    aget-object v0, p1, v6

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    :cond_3
    return-object p0

    :cond_4
    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    goto :goto_0
.end method

.method public SetSigInfo(JJJJ[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)V
    .locals 7

    if-eqz p21, :cond_0

    move-object/from16 v0, p21

    array-length v2, v0

    const/16 v3, 0xf

    if-eq v2, v3, :cond_2

    :cond_0
    const-string v2, "ERROR:reserve null or length not right"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p22, :cond_3

    move-object/from16 v0, p22

    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    :cond_3
    const-string v2, "reserve_valid null or length not right"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iput-wide p1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    iput-wide p7, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    iget v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    or-int v2, v2, p23

    iput v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    if-eqz p9, :cond_5

    move-object/from16 v0, p9

    array-length v2, v0

    if-lez v2, :cond_5

    invoke-virtual/range {p9 .. p9}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    :cond_5
    if-eqz p10, :cond_6

    move-object/from16 v0, p10

    array-length v2, v0

    if-lez v2, :cond_6

    invoke-virtual/range {p10 .. p10}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    :cond_6
    if-eqz p11, :cond_7

    move-object/from16 v0, p11

    array-length v2, v0

    if-lez v2, :cond_7

    invoke-virtual/range {p11 .. p11}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    :cond_7
    if-eqz p12, :cond_8

    move-object/from16 v0, p12

    array-length v2, v0

    if-lez v2, :cond_8

    invoke-virtual/range {p12 .. p12}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    :cond_8
    if-eqz p13, :cond_9

    move-object/from16 v0, p13

    array-length v2, v0

    if-lez v2, :cond_9

    invoke-virtual/range {p13 .. p13}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    const/4 v2, 0x4

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    :cond_9
    if-eqz p14, :cond_a

    move-object/from16 v0, p14

    array-length v2, v0

    if-lez v2, :cond_a

    invoke-virtual/range {p14 .. p14}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    :cond_a
    if-eqz p15, :cond_b

    move-object/from16 v0, p15

    array-length v2, v0

    if-lez v2, :cond_b

    invoke-virtual/range {p15 .. p15}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    const/4 v2, 0x3

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    :cond_b
    if-eqz p16, :cond_c

    move-object/from16 v0, p16

    array-length v2, v0

    if-lez v2, :cond_c

    invoke-virtual/range {p16 .. p16}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    const/4 v2, 0x0

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    :cond_c
    if-eqz p17, :cond_d

    move-object/from16 v0, p17

    array-length v2, v0

    if-lez v2, :cond_d

    invoke-virtual/range {p17 .. p17}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    const/4 v2, 0x1

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    :cond_d
    if-eqz p18, :cond_e

    move-object/from16 v0, p18

    array-length v2, v0

    if-lez v2, :cond_e

    invoke-virtual/range {p18 .. p18}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    :cond_e
    if-eqz p19, :cond_f

    move-object/from16 v0, p19

    array-length v2, v0

    if-lez v2, :cond_f

    invoke-virtual/range {p19 .. p19}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    :cond_f
    if-eqz p20, :cond_10

    move-object/from16 v0, p20

    array-length v2, v0

    if-lez v2, :cond_10

    invoke-virtual/range {p20 .. p20}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    :cond_10
    const/4 v2, 0x0

    aget-object v2, p21, v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_11

    const/4 v2, 0x0

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    const/4 v2, 0x2

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    :cond_11
    const/4 v2, 0x1

    aget-object v2, p21, v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    :cond_12
    const/4 v2, 0x2

    aget-object v2, p21, v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_13

    const/4 v2, 0x2

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    const/4 v2, 0x5

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    :cond_13
    const/4 v2, 0x3

    aget-object v2, p21, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_14

    const/4 v2, 0x3

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    :cond_14
    const/4 v2, 0x4

    aget-object v2, p21, v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_15

    const/4 v2, 0x4

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    const/4 v2, 0x6

    aget-wide v2, p22, v2

    add-long/2addr v2, p3

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    :cond_15
    const/4 v2, 0x5

    aget-object v2, p21, v2

    if-eqz v2, :cond_16

    const/4 v2, 0x5

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_16

    const/4 v2, 0x5

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    :cond_16
    const/4 v2, 0x6

    aget-object v2, p21, v2

    if-eqz v2, :cond_17

    const/4 v2, 0x6

    aget-object v2, p21, v2

    array-length v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_17

    const/4 v2, 0x6

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    :cond_17
    const/4 v2, 0x7

    aget-object v2, p21, v2

    if-eqz v2, :cond_18

    const/4 v2, 0x7

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_18

    const/4 v2, 0x7

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    iput-wide p3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    :cond_18
    const/16 v2, 0x8

    aget-object v2, p21, v2

    if-eqz v2, :cond_19

    const/16 v2, 0x8

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_19

    const/16 v2, 0x8

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    :cond_19
    const/16 v2, 0x9

    aget-object v2, p21, v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x9

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_1a

    const/16 v2, 0x9

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    :cond_1a
    const/16 v2, 0xa

    aget-object v2, p21, v2

    if-eqz v2, :cond_1b

    const/16 v2, 0xa

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_1b

    const/16 v2, 0xa

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    :cond_1b
    iget-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    if-nez v2, :cond_1e

    const-string v2, "_DA2 is null"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xb

    aget-object v3, p21, v3

    if-nez v3, :cond_1f

    const-string v3, "reserve[11] is null"

    const-string v4, ""

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainSigMap 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->mainSigMap:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file da2 len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rsp da2 len "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aget-object v2, p21, v2

    if-eqz v2, :cond_1c

    const/16 v2, 0xb

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_20

    const/16 v2, 0xb

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    const-string v2, "get _DA2"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_3
    const/16 v2, 0xc

    aget-object v2, p21, v2

    if-eqz v2, :cond_1d

    const/16 v2, 0xc

    aget-object v2, p21, v2

    array-length v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1d

    const/16 v2, 0xc

    aget-object v2, p21, v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    :cond_1d
    const/16 v2, 0xd

    aget-object v2, p21, v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_1

    const/16 v2, 0xe

    aget-object v2, p21, v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    aget-object v2, p21, v2

    array-length v2, v2

    if-lez v2, :cond_1

    const/16 v2, 0xd

    aget-object v2, p21, v2

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    const/16 v2, 0xe

    aget-object v2, p21, v2

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v2

    iput-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketCreatTime:J

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    array-length v2, v2

    goto/16 :goto_1

    :cond_1f
    const/16 v3, 0xb

    aget-object v3, p21, v3

    array-length v3, v3

    goto/16 :goto_2

    :cond_20
    const/high16 v2, 0x2000000

    iget v3, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->mainSigMap:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    const-string v2, "clear _DA2"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllTicketString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A1["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\nA2["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0]\nPskey["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\nPt4token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0]\nWtST["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0]\nWtSTKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iSExpireA2(J)Z
    .locals 3

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWtSessionTicketExpired()Z
    .locals 8

    const-wide/32 v6, 0x278d00

    const/4 v0, 0x1

    iget-wide v2, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketCreatTime:J

    add-long/2addr v2, v6

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-long/2addr v6, v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time for system may be  modified manually expireTime "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketCreatTime:J

    return-void
.end method

.method public setDA2([B)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "WloginSiginfo.setDA2 da2 0"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    goto :goto_0
.end method

.method public setRandSeed([B)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "{A1:%d,%d A2:%d pskey:%d,%d pt4token:%d wtST:%d da2:%d}"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v6, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    if-nez v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x7

    iget-object v4, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "WloginSigInfo"

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_login_bitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_app_pri:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vKey_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_A2_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStWebSig_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA5_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userA8_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_lsKey_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSig64_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_openkey_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_vkey_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_access_token_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sid_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_aqSig_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey_create_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pay_token:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pf:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pfKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_DA2:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_pt4Token:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-wide v0, p0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketCreatTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
