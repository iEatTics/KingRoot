.class public Loicq/wlogin_sdk/tools/cryptor;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BII[B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    new-array v1, v1, [B

    array-length v2, p3

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Loicq/wlogin_sdk/tools/a;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/a;-><init>()V

    invoke-virtual {v2, v0, v1}, Loicq/wlogin_sdk/tools/a;->a([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encrypt([BII[B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    new-array v1, v1, [B

    array-length v2, p3

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Loicq/wlogin_sdk/tools/a;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/a;-><init>()V

    invoke-virtual {v2, v0, v1}, Loicq/wlogin_sdk/tools/a;->b([B[B)[B

    move-result-object v0

    goto :goto_0
.end method
