.class public Loicq/wlogin_sdk/b/as;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x148

    iput v0, p0, Loicq/wlogin_sdk/b/as;->h:I

    return-void
.end method


# virtual methods
.method public a([BJJJ[B[B)[B
    .locals 6

    const/16 v2, 0x20

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array p1, v5, [B

    :cond_0
    if-nez p8, :cond_1

    new-array p8, v5, [B

    :cond_1
    if-nez p9, :cond_2

    new-array p9, v5, [B

    :cond_2
    invoke-virtual {p0, p1, v2}, Loicq/wlogin_sdk/b/as;->d([BI)I

    move-result v0

    invoke-virtual {p0, p8, v2}, Loicq/wlogin_sdk/b/as;->d([BI)I

    move-result v1

    invoke-virtual {p0, p9, v2}, Loicq/wlogin_sdk/b/as;->d([BI)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    new-array v3, v3, [B

    invoke-static {v3, v5, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v4, 0x2

    invoke-static {p1, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0, p2, p3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v0, v0, 0x4

    invoke-static {v3, v0, p4, p5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v0, v0, 0x4

    invoke-static {v3, v0, p6, p7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v0, v0, 0x4

    invoke-static {v3, v0, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p8, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    invoke-static {v3, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p9, v5, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget v0, p0, Loicq/wlogin_sdk/b/as;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/as;->b(I)V

    array-length v0, v3

    invoke-virtual {p0, v3, v0}, Loicq/wlogin_sdk/b/as;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/as;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/as;->b()[B

    move-result-object v0

    return-object v0
.end method
