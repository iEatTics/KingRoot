.class public Loicq/wlogin_sdk/b/ac;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/ac;->a:I

    const/16 v0, 0x124

    iput v0, p0, Loicq/wlogin_sdk/b/ac;->h:I

    return-void
.end method


# virtual methods
.method public a([B[BI[B[B[B)[B
    .locals 8

    const/16 v4, 0x10

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-array p1, v7, [B

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v7, [B

    :cond_1
    if-nez p4, :cond_2

    new-array p4, v7, [B

    :cond_2
    if-nez p5, :cond_3

    new-array p5, v7, [B

    :cond_3
    if-nez p6, :cond_4

    new-array p6, v7, [B

    :cond_4
    invoke-virtual {p0, p1, v4}, Loicq/wlogin_sdk/b/ac;->d([BI)I

    move-result v0

    invoke-virtual {p0, p2, v4}, Loicq/wlogin_sdk/b/ac;->d([BI)I

    move-result v1

    invoke-virtual {p0, p4, v4}, Loicq/wlogin_sdk/b/ac;->d([BI)I

    move-result v2

    const/16 v3, 0x20

    invoke-virtual {p0, p5, v3}, Loicq/wlogin_sdk/b/ac;->d([BI)I

    move-result v3

    invoke-virtual {p0, p6, v4}, Loicq/wlogin_sdk/b/ac;->d([BI)I

    move-result v4

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iput v5, p0, Loicq/wlogin_sdk/b/ac;->a:I

    iget v5, p0, Loicq/wlogin_sdk/b/ac;->a:I

    new-array v5, v5, [B

    invoke-static {v5, v7, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v6, 0x2

    invoke-static {p1, v7, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v7, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    invoke-static {v5, v0, p3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p4, v7, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    invoke-static {v5, v0, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p5, v7, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    invoke-static {v5, v0, v4}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p6, v7, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    iget v0, p0, Loicq/wlogin_sdk/b/ac;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/ac;->b(I)V

    iget v0, p0, Loicq/wlogin_sdk/b/ac;->a:I

    invoke-virtual {p0, v5, v0}, Loicq/wlogin_sdk/b/ac;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ac;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ac;->b()[B

    move-result-object v0

    return-object v0
.end method
