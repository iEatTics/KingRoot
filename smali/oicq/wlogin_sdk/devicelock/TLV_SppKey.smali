.class public Loicq/wlogin_sdk/devicelock/TLV_SppKey;
.super Loicq/wlogin_sdk/devicelock/e;


# instance fields
.field public SppKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/devicelock/e;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/TLV_SppKey;->SppKey:[B

    const/16 v0, 0xb

    iput v0, p0, Loicq/wlogin_sdk/devicelock/TLV_SppKey;->_type:I

    return-void
.end method


# virtual methods
.method public parse()V
    .locals 1

    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/TLV_SppKey;->get_data()[B

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/TLV_SppKey;->SppKey:[B

    return-void
.end method
