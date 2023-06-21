.class public Loicq/wlogin_sdk/b/bl;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field public a:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    iput v0, p0, Loicq/wlogin_sdk/b/bl;->a:I

    iput v0, p0, Loicq/wlogin_sdk/b/bl;->i:I

    const/16 v0, 0x178

    iput v0, p0, Loicq/wlogin_sdk/b/bl;->h:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/bl;->a:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->e:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/bl;->a:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/bl;->f:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->f:I

    add-int/lit8 v2, v0, 0xc

    if-ge v1, v2, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput v0, p0, Loicq/wlogin_sdk/b/bl;->a:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->e:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->a:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->f:I

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->a:I

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput v0, p0, Loicq/wlogin_sdk/b/bl;->i:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/bl;->i:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->e:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/b/bl;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/bl;->i:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public h()I
    .locals 3

    iget-object v0, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->e:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->i:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->e:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->i:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 3

    iget-object v0, p0, Loicq/wlogin_sdk/b/bl;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/bl;->e:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bl;->i:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    return v0
.end method
