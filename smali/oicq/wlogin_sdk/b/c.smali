.class public Loicq/wlogin_sdk/b/c;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I

.field i:I

.field j:I

.field k:I

.field l:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/c;->a:I

    const/16 v0, 0xe

    iput v0, p0, Loicq/wlogin_sdk/b/c;->i:I

    iput v1, p0, Loicq/wlogin_sdk/b/c;->j:I

    const/16 v0, 0x14

    iput v0, p0, Loicq/wlogin_sdk/b/c;->k:I

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/c;->l:[B

    iput v1, p0, Loicq/wlogin_sdk/b/c;->h:I

    return-void
.end method


# virtual methods
.method public a(J[B)[B
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/c;->k:I

    new-array v0, v0, [B

    iget v1, p0, Loicq/wlogin_sdk/b/c;->j:I

    invoke-static {v0, v4, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x2

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v2

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/4 v1, 0x6

    long-to-int v2, p1

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    const/16 v1, 0xa

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_server_cur_time()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    const/16 v1, 0xe

    array-length v2, p3

    invoke-static {p3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    add-int/lit8 v1, v1, 0xe

    invoke-static {v0, v1, v4}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v1, v1, 0x2

    iget v1, p0, Loicq/wlogin_sdk/b/c;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/c;->b(I)V

    iget v1, p0, Loicq/wlogin_sdk/b/c;->k:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/c;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/c;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/c;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Loicq/wlogin_sdk/b/c;->f:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
