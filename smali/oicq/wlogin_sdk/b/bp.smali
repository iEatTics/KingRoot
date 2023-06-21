.class public Loicq/wlogin_sdk/b/bp;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/bp;->a:I

    const/16 v0, 0x17c

    iput v0, p0, Loicq/wlogin_sdk/b/bp;->h:I

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-array p1, v3, [B

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/bp;->a:I

    iget v0, p0, Loicq/wlogin_sdk/b/bp;->a:I

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x2

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    iget v1, p0, Loicq/wlogin_sdk/b/bp;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/bp;->b(I)V

    iget v1, p0, Loicq/wlogin_sdk/b/bp;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/bp;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bp;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bp;->b()[B

    move-result-object v0

    return-object v0
.end method
