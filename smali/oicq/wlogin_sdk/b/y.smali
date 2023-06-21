.class public Loicq/wlogin_sdk/b/y;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/y;->a:I

    const/16 v0, 0x11d

    iput v0, p0, Loicq/wlogin_sdk/b/y;->h:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Loicq/wlogin_sdk/b/y;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/y;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/y;->f:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/y;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/y;->e:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/b/y;->a:I

    iget v0, p0, Loicq/wlogin_sdk/b/y;->a:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/b/y;->a:I

    iget v0, p0, Loicq/wlogin_sdk/b/y;->f:I

    iget v1, p0, Loicq/wlogin_sdk/b/y;->a:I

    add-int/lit8 v1, v1, 0x16

    if-ge v0, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()[B
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/y;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/y;->e:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public h()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/y;->a:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/y;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/y;->e:I

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
