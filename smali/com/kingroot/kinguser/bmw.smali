.class final Lcom/kingroot/kinguser/bmw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bCy:Lcom/kingroot/kinguser/bmw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bmw;->bCy:Lcom/kingroot/kinguser/bmw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    array-length v0, p1

    if-lez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/bmw;->b([BZ)[I

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->T([B)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bmw;->b([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bmu;->b([I[I)[I

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmw;->a([IZ)[B

    move-result-object p1

    .line 40
    :cond_0
    return-object p1
.end method

.method private static a([IZ)[B
    .locals 5

    .prologue
    .line 253
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x2

    .line 255
    if-eqz p1, :cond_0

    .line 256
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    .line 258
    if-le v0, v1, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 265
    :cond_1
    new-array v1, v0, [B

    .line 267
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 268
    ushr-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    and-int/lit8 v4, v2, 0x3

    shl-int/lit8 v4, v4, 0x3

    ushr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 270
    goto :goto_0
.end method

.method static agb()Lcom/kingroot/kinguser/bmw;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kingroot/kinguser/bmw;->bCy:Lcom/kingroot/kinguser/bmw;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/kingroot/kinguser/bmw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bmw;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bmw;->bCy:Lcom/kingroot/kinguser/bmw;

    .line 26
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bmw;->bCy:Lcom/kingroot/kinguser/bmw;

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    array-length v0, p1

    if-lez v0, :cond_0

    .line 66
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/bmw;->b([BZ)[I

    move-result-object v0

    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->T([B)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bmw;->b([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bmu;->a([I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bmw;->a([IZ)[B

    move-result-object p1

    .line 68
    :cond_0
    return-object p1
.end method

.method private static b([BZ)[I
    .locals 7

    .prologue
    .line 224
    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 230
    :goto_0
    if-eqz p1, :cond_1

    .line 231
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    .line 232
    array-length v2, p0

    aput v2, v0, v1

    .line 237
    :goto_1
    array-length v2, p0

    .line 238
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 239
    ushr-int/lit8 v3, v1, 0x2

    aget v4, v0, v3

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v1, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 224
    :cond_0
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :cond_1
    new-array v0, v1, [I

    goto :goto_1

    .line 242
    :cond_2
    return-object v0
.end method
