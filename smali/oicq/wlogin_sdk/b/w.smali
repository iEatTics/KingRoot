.class public Loicq/wlogin_sdk/b/w;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/w;->a:I

    const/16 v0, 0x11a

    iput v0, p0, Loicq/wlogin_sdk/b/w;->h:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 5

    const/4 v4, 0x2

    new-array v0, v4, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/w;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/w;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/w;->f:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/w;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/w;->e:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    iget v1, p0, Loicq/wlogin_sdk/b/w;->f:I

    add-int/lit8 v2, v0, 0x5

    if-ge v1, v2, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput v0, p0, Loicq/wlogin_sdk/b/w;->a:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()[B
    .locals 5

    const/4 v4, 0x1

    new-array v0, v4, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/w;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/w;->e:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public h()[B
    .locals 5

    const/4 v4, 0x1

    new-array v0, v4, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/w;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/w;->e:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public i()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/w;->a:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/w;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/w;->e:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/w;->a:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
