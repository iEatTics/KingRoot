.class public Loicq/wlogin_sdk/a/i;
.super Loicq/wlogin_sdk/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/a/i;->b:I

    return-void
.end method


# virtual methods
.method public b([B[B)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/a/i;->a([B[B)[B

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Loicq/wlogin_sdk/a/i;->d:I

    iget v1, p0, Loicq/wlogin_sdk/a/i;->d:I

    new-array v1, v1, [B

    array-length v2, p1

    invoke-static {v1, v4, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/a/i;->a([B)[B

    move-result-object v0

    return-object v0
.end method
