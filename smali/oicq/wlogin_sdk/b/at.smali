.class public Loicq/wlogin_sdk/b/at;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field public a:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    iput v0, p0, Loicq/wlogin_sdk/b/at;->a:I

    iput v0, p0, Loicq/wlogin_sdk/b/at;->i:I

    iput v0, p0, Loicq/wlogin_sdk/b/at;->j:I

    const/16 v0, 0x149

    iput v0, p0, Loicq/wlogin_sdk/b/at;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/at;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/at;->f:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/at;->e:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/at;->f:I

    add-int/lit8 v2, v0, 0x8

    if-ge v1, v2, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput v0, p0, Loicq/wlogin_sdk/b/at;->a:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/at;->e:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/at;->a:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/at;->f:I

    iget v2, p0, Loicq/wlogin_sdk/b/at;->a:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput v0, p0, Loicq/wlogin_sdk/b/at;->i:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/at;->e:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/at;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/at;->i:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/at;->f:I

    iget v2, p0, Loicq/wlogin_sdk/b/at;->a:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Loicq/wlogin_sdk/b/at;->i:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    iput v0, p0, Loicq/wlogin_sdk/b/at;->j:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/at;->a:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/at;->e:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/at;->a:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public h()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/at;->i:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/at;->e:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/b/at;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/at;->i:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public i()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/at;->j:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/at;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/at;->e:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/b/at;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/b/at;->i:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/at;->j:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
