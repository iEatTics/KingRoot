.class public Loicq/wlogin_sdk/b/ak;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/b/ak;->a:I

    const/16 v0, 0x138

    iput v0, p0, Loicq/wlogin_sdk/b/ak;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x10a

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Loicq/wlogin_sdk/b/ak;->f:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/ak;->e:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/b/ak;->a:I

    iget v0, p0, Loicq/wlogin_sdk/b/ak;->f:I

    iget v1, p0, Loicq/wlogin_sdk/b/ak;->a:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public g()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x11c

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public h()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x120

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public i()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x136

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x102

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public k()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x103

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public l()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x143

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public m()I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/b/ak;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xa

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/16 v3, 0x164

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/b/ak;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/ak;->e:I

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
