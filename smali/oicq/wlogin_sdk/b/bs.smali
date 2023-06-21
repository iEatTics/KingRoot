.class public Loicq/wlogin_sdk/b/bs;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x16

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->a:I

    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->i:I

    const/16 v0, 0x600

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->j:I

    const/16 v0, 0x18

    iput v0, p0, Loicq/wlogin_sdk/b/bs;->h:I

    return-void
.end method


# virtual methods
.method public a(JIJI)[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/bs;->a:I

    new-array v0, v0, [B

    iget v1, p0, Loicq/wlogin_sdk/b/bs;->i:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/bs;->j:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/4 v1, 0x6

    long-to-int v2, p1

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v1, 0xa

    invoke-static {v0, v1, p3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v1, 0xe

    long-to-int v2, p4

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v1, 0x12

    invoke-static {v0, v1, p6}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/16 v1, 0x14

    invoke-static {v0, v1, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget v1, p0, Loicq/wlogin_sdk/b/bs;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/bs;->b(I)V

    iget v1, p0, Loicq/wlogin_sdk/b/bs;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/bs;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bs;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/bs;->b()[B

    move-result-object v0

    return-object v0
.end method
