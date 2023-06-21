.class public Loicq/wlogin_sdk/b/cj;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x202

    iput v0, p0, Loicq/wlogin_sdk/b/cj;->h:I

    return-void
.end method


# virtual methods
.method public a([B[B)[B
    .locals 5

    const/16 v0, 0x10

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v4, [B

    :cond_1
    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/b/cj;->d([BI)I

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, p2, v1}, Loicq/wlogin_sdk/b/cj;->d([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    new-array v2, v2, [B

    invoke-static {v2, v4, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v3, 0x2

    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget v0, p0, Loicq/wlogin_sdk/b/cj;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/cj;->b(I)V

    array-length v0, v2

    invoke-virtual {p0, v2, v0}, Loicq/wlogin_sdk/b/cj;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cj;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cj;->b()[B

    move-result-object v0

    return-object v0
.end method
