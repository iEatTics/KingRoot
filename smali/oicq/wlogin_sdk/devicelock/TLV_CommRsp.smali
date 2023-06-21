.class public Loicq/wlogin_sdk/devicelock/TLV_CommRsp;
.super Loicq/wlogin_sdk/devicelock/e;


# instance fields
.field public ErrInfo:[B

.field public ErrInfoType:I

.field public ErrMsg:[B

.field public ErrTitle:[B

.field public Reason:I

.field public RetCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/devicelock/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->RetCode:I

    iput v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->Reason:I

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrTitle:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrMsg:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfo:[B

    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_type:I

    return-void
.end method


# virtual methods
.method public parse()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_head_len:I

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->RetCode:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->Reason:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrTitle:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrTitle:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrMsg:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrMsg:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfoType:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfo:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfo:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    return-void
.end method
