.class public Loicq/wlogin_sdk/b/cg;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    iput v0, p0, Loicq/wlogin_sdk/b/cg;->a:I

    iput v0, p0, Loicq/wlogin_sdk/b/cg;->i:I

    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/cg;->h:I

    return-void
.end method


# virtual methods
.method public a([B[B)[B
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-array p1, v3, [B

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v3, [B

    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/b/cg;->a:I

    iget v0, p0, Loicq/wlogin_sdk/b/cg;->a:I

    new-array v0, v0, [B

    iget v1, p0, Loicq/wlogin_sdk/b/cg;->i:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x2

    array-length v2, p1

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v1, 0x4

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    array-length v2, p2

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v1, v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    add-int/2addr v1, v2

    iget v1, p0, Loicq/wlogin_sdk/b/cg;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/cg;->b(I)V

    iget v1, p0, Loicq/wlogin_sdk/b/cg;->a:I

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/cg;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cg;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cg;->b()[B

    move-result-object v0

    return-object v0
.end method
