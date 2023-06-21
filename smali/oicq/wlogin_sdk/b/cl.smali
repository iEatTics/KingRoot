.class public Loicq/wlogin_sdk/b/cl;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/b/cl;->a:I

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/cl;->i:I

    const/16 v0, 0x400

    iput v0, p0, Loicq/wlogin_sdk/b/cl;->h:I

    return-void
.end method


# virtual methods
.method public a([BJ[B[BJJ[B)[B
    .locals 8

    const/16 v2, 0x10

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-array p1, v2, [B

    :cond_0
    if-nez p4, :cond_1

    new-array p4, v2, [B

    :cond_1
    if-nez p5, :cond_2

    new-array p5, v2, [B

    :cond_2
    if-nez p10, :cond_3

    const/16 v2, 0x8

    new-array v0, v2, [B

    move-object/from16 p10, v0

    :cond_3
    array-length v2, p4

    add-int/lit8 v2, v2, 0xa

    array-length v3, p5

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p10

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/cl;->i:I

    iget v2, p0, Loicq/wlogin_sdk/b/cl;->i:I

    new-array v2, v2, [B

    iget v3, p0, Loicq/wlogin_sdk/b/cl;->a:I

    invoke-static {v2, v6, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v3, 0x2

    invoke-static {v2, v3, p2, p3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    const/16 v3, 0xa

    array-length v4, p4

    invoke-static {p4, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p4

    add-int/lit8 v3, v3, 0xa

    array-length v4, p5

    invoke-static {p5, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p5

    add-int/2addr v3, v4

    long-to-int v4, p6

    invoke-static {v2, v3, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v3, v3, 0x4

    move-wide/from16 v0, p8

    long-to-int v4, v0

    invoke-static {v2, v3, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v3, v3, 0x4

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_server_cur_time()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p10

    array-length v4, v0

    move-object/from16 v0, p10

    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p10

    array-length v4, v0

    add-int/2addr v3, v4

    array-length v3, v2

    invoke-static {v2, v6, v3, p1}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v2

    array-length v3, v2

    iput v3, p0, Loicq/wlogin_sdk/b/cl;->i:I

    iget v3, p0, Loicq/wlogin_sdk/b/cl;->h:I

    invoke-virtual {p0, v3}, Loicq/wlogin_sdk/b/cl;->b(I)V

    array-length v3, v2

    invoke-virtual {p0, v2, v3}, Loicq/wlogin_sdk/b/cl;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cl;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cl;->b()[B

    move-result-object v2

    return-object v2
.end method
