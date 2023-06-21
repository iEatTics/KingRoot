.class public Loicq/wlogin_sdk/b/ag;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/ag;->a:I

    const/16 v0, 0x128

    iput v0, p0, Loicq/wlogin_sdk/b/ag;->h:I

    return-void
.end method


# virtual methods
.method public a(IIII[B[B[B)[B
    .locals 6

    const/16 v2, 0x10

    const/4 v5, 0x0

    if-nez p5, :cond_0

    new-array p5, v5, [B

    :cond_0
    if-nez p6, :cond_1

    new-array p6, v5, [B

    :cond_1
    if-nez p7, :cond_2

    new-array p7, v5, [B

    :cond_2
    const/16 v0, 0x20

    invoke-virtual {p0, p5, v0}, Loicq/wlogin_sdk/b/ag;->d([BI)I

    move-result v0

    invoke-virtual {p0, p6, v2}, Loicq/wlogin_sdk/b/ag;->d([BI)I

    move-result v1

    invoke-virtual {p0, p7, v2}, Loicq/wlogin_sdk/b/ag;->d([BI)I

    move-result v2

    add-int/lit8 v3, v0, 0xb

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Loicq/wlogin_sdk/b/ag;->a:I

    iget v3, p0, Loicq/wlogin_sdk/b/ag;->a:I

    new-array v3, v3, [B

    invoke-static {v3, v5, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v4, 0x3

    invoke-static {v3, v4, p2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v4, 0x4

    invoke-static {v3, v4, p3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v4, 0x5

    invoke-static {v3, v4, p4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v4, 0x9

    invoke-static {v3, v4, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v4, 0xb

    invoke-static {p5, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0xb

    invoke-static {v3, v0, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p6, v5, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    invoke-static {v3, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {p7, v5, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget v0, p0, Loicq/wlogin_sdk/b/ag;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/ag;->b(I)V

    iget v0, p0, Loicq/wlogin_sdk/b/ag;->a:I

    invoke-virtual {p0, v3, v0}, Loicq/wlogin_sdk/b/ag;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ag;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ag;->b()[B

    move-result-object v0

    return-object v0
.end method
