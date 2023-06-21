.class public Loicq/wlogin_sdk/devicelock/k;
.super Loicq/wlogin_sdk/devicelock/e;


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/devicelock/e;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/k;->a:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/k;->b:[B

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/devicelock/k;->_type:I

    return-void
.end method


# virtual methods
.method public parse()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/devicelock/k;->_head_len:I

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/k;->a:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/k;->a:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/k;->b:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/k;->b:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/k;->c:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/k;->d:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/k;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/k;->e:I

    add-int/lit8 v0, v0, 0x2

    return-void
.end method
