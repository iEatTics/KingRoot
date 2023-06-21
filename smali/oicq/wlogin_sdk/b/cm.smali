.class public Loicq/wlogin_sdk/b/cm;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x401

    iput v0, p0, Loicq/wlogin_sdk/b/cm;->h:I

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/16 v0, 0x10

    new-array p1, v0, [B

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/2addr v1, v2

    iget v1, p0, Loicq/wlogin_sdk/b/cm;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/cm;->b(I)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/cm;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cm;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cm;->b()[B

    move-result-object v0

    return-object v0
.end method
