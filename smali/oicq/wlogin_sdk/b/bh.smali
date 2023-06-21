.class public Loicq/wlogin_sdk/b/bh;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/bh;->a:I

    const/16 v0, 0x172

    iput v0, p0, Loicq/wlogin_sdk/b/bh;->h:I

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v2, [B

    :cond_0
    array-length v0, p1

    iput v0, p0, Loicq/wlogin_sdk/b/bh;->a:I

    iget v0, p0, Loicq/wlogin_sdk/b/bh;->a:I

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Loicq/wlogin_sdk/b/bh;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/bh;->b(I)V

    iget v1, p0, Loicq/wlogin_sdk/b/bh;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/bh;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bh;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bh;->b()[B

    move-result-object v0

    return-object v0
.end method
