.class public Loicq/wlogin_sdk/a/h;
.super Loicq/wlogin_sdk/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Loicq/wlogin_sdk/a/h;->b:I

    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/a/h;->e:I

    return-void
.end method


# virtual methods
.method public a([B[B[BIIIJJ[B[B[B[BJ[B[B[B)[B
    .locals 9

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez p14, :cond_0

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p14, v0

    :cond_0
    if-nez p19, :cond_1

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p19, v0

    :cond_1
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    array-length v5, p3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p12

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p13

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p14

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p17

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p18

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p19

    array-length v5, v0

    add-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Loicq/wlogin_sdk/a/h;->d:I

    iget v4, p0, Loicq/wlogin_sdk/a/h;->d:I

    new-array v4, v4, [B

    array-length v5, p1

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Loicq/wlogin_sdk/a/h;->c:I

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v6, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    array-length v3, p2

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, p2

    invoke-static {p2, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p2

    add-int/2addr v2, v3

    array-length v3, p3

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    array-length v5, p3

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p3

    add-int/2addr v2, v3

    invoke-static {v4, v2, p4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2, p5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2, p6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, p7

    invoke-static {v4, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    if-eqz p11, :cond_3

    move-object/from16 v0, p11

    array-length v3, v0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p11

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p12

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p12

    array-length v5, v0

    move-object/from16 v0, p12

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p12

    array-length v3, v0

    add-int/2addr v2, v3

    move-object/from16 v0, p13

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p13

    array-length v5, v0

    move-object/from16 v0, p13

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p13

    array-length v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x7

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p14

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p14

    array-length v5, v0

    move-object/from16 v0, p14

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p14

    array-length v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x2

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, p15

    invoke-static {v4, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    add-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p17

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p17

    array-length v5, v0

    move-object/from16 v0, p17

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p17

    array-length v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x4

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p18

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p18

    array-length v5, v0

    move-object/from16 v0, p18

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p18

    array-length v3, v0

    add-int/2addr v2, v3

    const/16 v3, 0xd

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v0, p9

    invoke-static {v4, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x6

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p19

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    invoke-static {v4, v3, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p19

    array-length v2, v0

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    move-object/from16 v0, p19

    array-length v2, v0

    invoke-static {v4, v3, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v3, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p19

    array-length v5, v0

    move-object/from16 v0, p19

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p19

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x7

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    add-int/lit8 v5, v3, 0x1

    const/4 v2, 0x4

    invoke-static {v4, v3, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    sget-boolean v6, Loicq/wlogin_sdk/request/u;->ag:Z

    if-ne v3, v6, :cond_2

    const/4 v2, 0x3

    :cond_2
    invoke-static {v4, v5, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {p0, v4}, Loicq/wlogin_sdk/a/h;->a([B)[B

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1
.end method
