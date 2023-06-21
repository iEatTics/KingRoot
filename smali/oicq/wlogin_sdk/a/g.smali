.class public Loicq/wlogin_sdk/a/g;
.super Loicq/wlogin_sdk/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/a/g;->b:I

    return-void
.end method


# virtual methods
.method public b([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/a/g;->d:I

    iget v0, p0, Loicq/wlogin_sdk/a/g;->d:I

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/a/g;->a([B)[B

    move-result-object v0

    return-object v0
.end method
