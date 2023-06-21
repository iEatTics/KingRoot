.class public Loicq/wlogin_sdk/b/d;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/b/d;->a:I

    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/b/d;->i:I

    const/16 v0, 0x16

    iput v0, p0, Loicq/wlogin_sdk/b/d;->j:I

    const/16 v0, 0x100

    iput v0, p0, Loicq/wlogin_sdk/b/d;->h:I

    return-void
.end method


# virtual methods
.method public a(JJII)[B
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Loicq/wlogin_sdk/b/d;->j:I

    new-array v1, v1, [B

    iget v2, p0, Loicq/wlogin_sdk/b/d;->a:I

    invoke-static {v1, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v0, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/d;->i:I

    invoke-static {v1, v0, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/4 v0, 0x6

    long-to-int v2, p1

    invoke-static {v1, v0, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v0, 0xa

    long-to-int v2, p3

    invoke-static {v1, v0, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v0, 0xe

    invoke-static {v1, v0, p5}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v0, 0x12

    invoke-static {v1, v0, p6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    iget v0, p0, Loicq/wlogin_sdk/b/d;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/d;->b(I)V

    iget v0, p0, Loicq/wlogin_sdk/b/d;->j:I

    invoke-virtual {p0, v1, v0}, Loicq/wlogin_sdk/b/d;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/d;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/d;->b()[B

    move-result-object v0

    return-object v0
.end method
