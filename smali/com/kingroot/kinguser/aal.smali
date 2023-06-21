.class Lcom/kingroot/kinguser/aal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aal$c;,
        Lcom/kingroot/kinguser/aal$a;,
        Lcom/kingroot/kinguser/aal$b;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/aal$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aal$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aal;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aal$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/aal;-><init>()V

    return-void
.end method

.method public static G([B)[B
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Lcom/kingroot/kinguser/aah;->E([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static b([IZ)[B
    .locals 5

    .prologue
    .line 256
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x2

    .line 258
    if-eqz p1, :cond_0

    .line 259
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    .line 261
    if-le v0, v1, :cond_1

    .line 262
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 268
    :cond_1
    new-array v1, v0, [B

    .line 270
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 271
    ushr-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    and-int/lit8 v4, v2, 0x3

    shl-int/lit8 v4, v4, 0x3

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 273
    goto :goto_0
.end method

.method private static c([BZ)[I
    .locals 7

    .prologue
    .line 227
    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 233
    :goto_0
    if-eqz p1, :cond_1

    .line 234
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    .line 235
    array-length v2, p0

    aput v2, v0, v1

    .line 240
    :goto_1
    array-length v2, p0

    .line 241
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 242
    ushr-int/lit8 v3, v1, 0x2

    aget v4, v0, v3

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v1, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    :cond_0
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 237
    :cond_1
    new-array v0, v1, [I

    goto :goto_1

    .line 245
    :cond_2
    return-object v0
.end method

.method public static pN()Lcom/kingroot/kinguser/aal;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/kinguser/aal;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aal;

    return-object v0
.end method


# virtual methods
.method public N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aal;->G([B)[B

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aal;->encrypt([B[B)[B

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->w([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aal;->G([B)[B

    move-result-object v0

    .line 85
    invoke-static {p2}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aal;->decrypt([B[B)[B

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public decrypt([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    array-length v0, p2

    if-lez v0, :cond_0

    .line 69
    invoke-static {p2, v2}, Lcom/kingroot/kinguser/aal;->c([BZ)[I

    move-result-object v0

    invoke-static {p1}, Lcom/kingroot/kinguser/aal$c;->I([B)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aal;->c([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aal$a;->e([I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aal;->b([IZ)[B

    move-result-object p2

    .line 71
    :cond_0
    return-object p2
.end method

.method public encrypt([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    array-length v0, p2

    if-lez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/kingroot/kinguser/aal;->c([BZ)[I

    move-result-object v0

    invoke-static {p1}, Lcom/kingroot/kinguser/aal$c;->I([B)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aal;->c([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aal$b;->g([I[I)[I

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aal;->b([IZ)[B

    move-result-object p2

    .line 43
    :cond_0
    return-object p2
.end method
