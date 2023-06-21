.class public Lcom/kingroot/kinguser/bdr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bjM:I

.field public bjN:[B

.field public bjO:I

.field public content:[B

.field private index:I

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/kingroot/kinguser/bdr;->length:I

    .line 19
    iput-object v1, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    .line 21
    iput v0, p0, Lcom/kingroot/kinguser/bdr;->bjM:I

    .line 23
    iput-object v1, p0, Lcom/kingroot/kinguser/bdr;->bjN:[B

    .line 24
    iput v0, p0, Lcom/kingroot/kinguser/bdr;->bjO:I

    .line 26
    iput v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    return-void
.end method

.method public static K([B)Lcom/kingroot/kinguser/bdr;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/kingroot/kinguser/bdr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bdr;-><init>()V

    .line 233
    array-length v1, p0

    iput v1, v0, Lcom/kingroot/kinguser/bdr;->length:I

    .line 234
    iput-object p0, v0, Lcom/kingroot/kinguser/bdr;->content:[B

    .line 237
    invoke-direct {v0}, Lcom/kingroot/kinguser/bdr;->YL()V

    .line 239
    return-object v0
.end method

.method private YL()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    array-length v0, v0

    if-lt v0, v4, :cond_0

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    invoke-static {v0}, Lcom/kingroot/kinguser/bds;->L([B)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bdr;->bjM:I

    .line 50
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bdr;->bjN:[B

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    iget-object v1, p0, Lcom/kingroot/kinguser/bdr;->bjN:[B

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bdr;->bjM:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    array-length v0, v0

    if-lt v0, v4, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdr;->YM()V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/bdr;->bjM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    iget v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    goto :goto_0
.end method

.method private YM()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 71
    iput v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    .line 72
    iget-object v1, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    if-nez v1, :cond_2

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bdr;->bjO:I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/bdr;->bjO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/bdr;->bjO:I

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bds;->g([BI)I

    move-result v1

    .line 83
    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 291
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    move v0, v1

    .line 303
    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 296
    :cond_3
    :goto_0
    if-ge v0, p3, :cond_1

    if-eq v2, v1, :cond_1

    .line 297
    sub-int v2, p3, v0

    invoke-virtual {p0, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 298
    if-lez v2, :cond_3

    .line 299
    add-int/2addr p2, v2

    .line 300
    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/io/OutputStream;[BII)I
    .locals 3

    .prologue
    const/16 v1, 0x2000

    .line 307
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gtz p3, :cond_2

    .line 308
    :cond_0
    const/4 v0, -0x1

    .line 324
    :cond_1
    return v0

    .line 311
    :cond_2
    const/4 v0, 0x0

    move v2, p3

    .line 313
    :goto_0
    if-lez v2, :cond_1

    .line 314
    if-le v2, v1, :cond_3

    move v0, v1

    .line 319
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 321
    add-int/2addr p2, v0

    .line 322
    sub-int/2addr v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 317
    goto :goto_1
.end method

.method public static j(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 244
    if-nez p0, :cond_0

    move-object v0, v1

    .line 287
    :goto_0
    return-object v0

    .line 248
    :cond_0
    new-array v2, v5, [B

    .line 253
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_0
    invoke-static {p0, v2, v3, v4}, Lcom/kingroot/kinguser/bdr;->a(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 258
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readRawPacket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V

    .line 261
    if-ge v0, v5, :cond_1

    move-object v0, v1

    .line 262
    goto :goto_0

    .line 254
    :catch_0
    move-exception v3

    .line 255
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 265
    :cond_1
    invoke-static {v2}, Lcom/kingroot/kinguser/bds;->L([B)I

    move-result v3

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V

    .line 269
    if-le v3, v5, :cond_2

    const/high16 v2, 0x200000

    if-le v3, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 270
    goto :goto_0

    .line 273
    :cond_3
    add-int/lit8 v2, v3, -0x4

    new-array v2, v2, [B

    .line 276
    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x4

    :try_start_1
    invoke-static {p0, v2, v4, v5}, Lcom/kingroot/kinguser/bdr;->a(Ljava/io/InputStream;[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 281
    :goto_2
    add-int/lit8 v3, v3, -0x4

    if-ge v0, v3, :cond_4

    move-object v0, v1

    .line 282
    goto :goto_0

    .line 277
    :catch_1
    move-exception v4

    .line 278
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 285
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "real read length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->write(Ljava/lang/String;)V

    move-object v0, v2

    .line 287
    goto :goto_0
.end method


# virtual methods
.method public YN()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/bdr;->bjO:I

    return v0
.end method

.method public YO()I
    .locals 2

    .prologue
    .line 114
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    iget v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bds;->g([BI)I

    .line 116
    iget v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    iget v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bds;->g([BI)I

    move-result v0

    .line 118
    iget v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    .line 119
    return v0
.end method

.method public YP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    iget v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bds;->g([BI)I

    move-result v0

    .line 168
    iget v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/kingroot/kinguser/bdr;->index:I

    .line 169
    iget-object v1, p0, Lcom/kingroot/kinguser/bdr;->content:[B

    iget v2, p0, Lcom/kingroot/kinguser/bdr;->index:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bds;->e([BII)Ljava/lang/String;

    move-result-object v1

    .line 170
    iget v2, p0, Lcom/kingroot/kinguser/bdr;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/kingroot/kinguser/bdr;->index:I

    .line 171
    return-object v1
.end method
