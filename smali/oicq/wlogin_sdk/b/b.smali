.class public Loicq/wlogin_sdk/b/b;
.super Ljava/lang/Object;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:[B

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iput v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    iput v1, p0, Loicq/wlogin_sdk/b/b;->d:I

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    iput v1, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iput v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iput v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    iput v1, p0, Loicq/wlogin_sdk/b/b;->d:I

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    iput v1, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iput v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    iput p1, p0, Loicq/wlogin_sdk/b/b;->h:I

    return-void
.end method


# virtual methods
.method a([BIII)I
    .locals 4

    const/4 v0, -0x1

    array-length v2, p1

    move v1, p2

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x2

    if-le v3, v2, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-static {p1, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    if-ne v3, p4, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    if-gt v3, v2, :cond_0

    invoke-static {p1, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public a([BII[B)I
    .locals 4

    iget v0, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-virtual {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/b/b;->a([BIII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sub-int v1, v0, p2

    sub-int v1, p3, v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2, v1, p4}, Loicq/wlogin_sdk/b/b;->a([BI[B)I

    move-result v0

    goto :goto_0
.end method

.method a([BI[B)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    if-lt v2, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    invoke-static {p1, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    iput v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {p1, v0, v2, p3}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, -0x3f7

    goto :goto_0

    :cond_2
    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    array-length v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le v2, v3, :cond_3

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v2, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/b/b;->g:[B

    :cond_3
    iput v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget-object v2, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget-object v2, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/b;->c:I

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    array-length v0, v0

    iput v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, -0x3ed

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public a([BII)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p3

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    :cond_0
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {v0, v1, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    return-void
.end method

.method public b([BI)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    iget v1, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    :cond_0
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    return-void
.end method

.method public b([BII)V
    .locals 2

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le p3, v0, :cond_0

    add-int/lit16 v0, p3, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    :cond_0
    iput p3, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/b/b;->h:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    sub-int v0, p3, v0

    iput v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    return-void
.end method

.method public b()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public c([BII)I
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-virtual {p0, p1, p2, p3, v1}, Loicq/wlogin_sdk/b/b;->a([BIII)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-int v2, v1, p2

    sub-int v2, p3, v2

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    if-ge v3, v2, :cond_0

    add-int/lit8 v3, v1, 0x2

    invoke-static {p1, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    iput v3, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v4, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v3, v4

    if-gt v3, v2, :cond_0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v1, v0}, Loicq/wlogin_sdk/b/b;->b([BII)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x3ed

    goto :goto_0

    :cond_2
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public c([BI)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v1, p0, Loicq/wlogin_sdk/b/b;->e:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    :cond_0
    iput p2, p0, Loicq/wlogin_sdk/b/b;->f:I

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    return-void
.end method

.method public c()[B
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    new-array v0, v0, [B

    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    return v0
.end method

.method public d([BI)I
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-le v0, p2, :cond_0

    :goto_0
    return p2

    :cond_0
    array-length p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    return-void
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
