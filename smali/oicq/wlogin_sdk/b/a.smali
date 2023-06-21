.class public Loicq/wlogin_sdk/b/a;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/a;->a:I

    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/a;->a([BI)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/a;->a([BI)V

    return-void
.end method

.method public a([BI)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/a;->a:I

    add-int/2addr v0, p2

    iget v1, p0, Loicq/wlogin_sdk/b/a;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Loicq/wlogin_sdk/b/a;->a:I

    add-int/2addr v0, p2

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/a;->b:I

    iget v0, p0, Loicq/wlogin_sdk/b/a;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/a;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/a;->a:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Loicq/wlogin_sdk/b/a;->g:[B

    :cond_0
    iget v0, p0, Loicq/wlogin_sdk/b/a;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/b/a;->c:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/a;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/a;->a:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Loicq/wlogin_sdk/b/a;->f:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/a;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/a;->h:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    iget-object v0, p0, Loicq/wlogin_sdk/b/a;->g:[B

    const/4 v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/b/a;->f:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    return-void
.end method

.method public a()[B
    .locals 1

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/a;->b()[B

    move-result-object v0

    return-object v0
.end method
