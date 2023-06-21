.class public Loicq/wlogin_sdk/b/cf;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:[B

.field i:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/cf;->a:[B

    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/cf;->i:[B

    const/16 v0, 0x199

    iput v0, p0, Loicq/wlogin_sdk/b/cf;->h:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/b/cf;->a:[B

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/cf;->f:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/cf;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/cf;->e:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/cf;->f:I

    add-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v1, v0, [B

    iput-object v1, p0, Loicq/wlogin_sdk/b/cf;->a:[B

    iget-object v1, p0, Loicq/wlogin_sdk/b/cf;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/cf;->e:I

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Loicq/wlogin_sdk/b/cf;->a:[B

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Loicq/wlogin_sdk/b/cf;->f:I

    add-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Loicq/wlogin_sdk/b/cf;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/cf;->e:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/cf;->f:I

    add-int v3, v0, v1

    if-ge v2, v3, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-array v2, v1, [B

    iput-object v2, p0, Loicq/wlogin_sdk/b/cf;->i:[B

    iget-object v2, p0, Loicq/wlogin_sdk/b/cf;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/cf;->e:I

    add-int/2addr v3, v0

    iget-object v4, p0, Loicq/wlogin_sdk/b/cf;->i:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/b/cf;->i:[B

    return-object v0
.end method
