.class public Loicq/wlogin_sdk/devicelock/i;
.super Loicq/wlogin_sdk/devicelock/e;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/devicelock/e;-><init>()V

    iput v1, p0, Loicq/wlogin_sdk/devicelock/i;->a:I

    iput v1, p0, Loicq/wlogin_sdk/devicelock/i;->b:I

    iput v1, p0, Loicq/wlogin_sdk/devicelock/i;->c:I

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/i;->d:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/i;->e:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/i;->f:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/i;->g:[B

    const/4 v0, 0x3

    iput v0, p0, Loicq/wlogin_sdk/devicelock/i;->_type:I

    return-void
.end method


# virtual methods
.method public parse()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/devicelock/i;->_head_len:I

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/i;->a:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->d:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/i;->d:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->e:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/i;->e:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->f:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/i;->f:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/i;->c:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->g:[B

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/i;->_buf:[B

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/i;->g:[B

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    return-void
.end method
