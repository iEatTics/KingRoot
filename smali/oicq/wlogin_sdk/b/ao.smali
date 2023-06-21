.class public Loicq/wlogin_sdk/b/ao;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/ao;->a:I

    const/16 v0, 0x144

    iput v0, p0, Loicq/wlogin_sdk/b/ao;->h:I

    return-void
.end method


# virtual methods
.method public a([B[B[B[B[B)[B
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    array-length v0, p1

    if-lez v0, :cond_7

    array-length v0, p1

    add-int v1, v2, v0

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    array-length v3, p2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    array-length v3, p3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz p4, :cond_2

    array-length v3, p4

    if-lez v3, :cond_2

    array-length v3, p4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    :cond_3
    if-eqz p2, :cond_4

    array-length v3, p2

    if-lez v3, :cond_4

    array-length v3, p2

    invoke-static {p2, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p2

    add-int/2addr v0, v3

    :cond_4
    if-eqz p3, :cond_5

    array-length v3, p3

    if-lez v3, :cond_5

    array-length v3, p3

    invoke-static {p3, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p3

    add-int/2addr v0, v3

    :cond_5
    if-eqz p4, :cond_6

    array-length v3, p4

    if-lez v3, :cond_6

    array-length v3, p4

    invoke-static {p4, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p4

    add-int/2addr v0, v3

    :cond_6
    array-length v0, v1

    invoke-static {v1, v2, v0, p5}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Loicq/wlogin_sdk/b/ao;->a:I

    iget v1, p0, Loicq/wlogin_sdk/b/ao;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/ao;->b(I)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/ao;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ao;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ao;->b()[B

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v2

    move v1, v2

    goto :goto_0
.end method

.method public a([B[B[B[B[B[B[B[B)[B
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    array-length v0, p1

    if-lez v0, :cond_d

    array-length v0, p1

    add-int v1, v2, v0

    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    array-length v3, p2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    array-length v3, p3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz p4, :cond_2

    array-length v3, p4

    if-lez v3, :cond_2

    array-length v3, p4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz p5, :cond_3

    array-length v3, p5

    if-lez v3, :cond_3

    array-length v3, p5

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-eqz p6, :cond_4

    array-length v3, p6

    if-lez v3, :cond_4

    array-length v3, p6

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-eqz p7, :cond_5

    array-length v3, p7

    if-lez v3, :cond_5

    array-length v3, p7

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v0, 0x2

    if-eqz p1, :cond_6

    array-length v3, p1

    if-lez v3, :cond_6

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    :cond_6
    if-eqz p2, :cond_7

    array-length v3, p2

    if-lez v3, :cond_7

    array-length v3, p2

    invoke-static {p2, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p2

    add-int/2addr v0, v3

    :cond_7
    if-eqz p3, :cond_8

    array-length v3, p3

    if-lez v3, :cond_8

    array-length v3, p3

    invoke-static {p3, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p3

    add-int/2addr v0, v3

    :cond_8
    if-eqz p4, :cond_9

    array-length v3, p4

    if-lez v3, :cond_9

    array-length v3, p4

    invoke-static {p4, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p4

    add-int/2addr v0, v3

    :cond_9
    if-eqz p5, :cond_a

    array-length v3, p5

    if-lez v3, :cond_a

    array-length v3, p5

    invoke-static {p5, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p5

    add-int/2addr v0, v3

    :cond_a
    if-eqz p6, :cond_b

    array-length v3, p6

    if-lez v3, :cond_b

    array-length v3, p6

    invoke-static {p6, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p6

    add-int/2addr v0, v3

    :cond_b
    if-eqz p7, :cond_c

    array-length v3, p7

    if-lez v3, :cond_c

    array-length v3, p7

    invoke-static {p7, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p7

    add-int/2addr v0, v3

    :cond_c
    array-length v0, v1

    invoke-static {v1, v2, v0, p8}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Loicq/wlogin_sdk/b/ao;->a:I

    iget v1, p0, Loicq/wlogin_sdk/b/ao;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/ao;->b(I)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/ao;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ao;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ao;->b()[B

    move-result-object v0

    return-object v0

    :cond_d
    move v0, v2

    move v1, v2

    goto/16 :goto_0
.end method
