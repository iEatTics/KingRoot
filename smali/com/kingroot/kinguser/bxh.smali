.class public Lcom/kingroot/kinguser/bxh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/bxh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/bxh$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bxh$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bxh;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajA()Lcom/kingroot/kinguser/bxh;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/bxh;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxh;

    return-object v0
.end method

.method private static d(IZI)I
    .locals 1

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    .line 58
    :goto_0
    return v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method public ch(Landroid/content/Context;)Lcom/kingroot/kinguser/bym;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->aju()I

    move-result v3

    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->ajw()I

    move-result v4

    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->ajx()Z

    move-result v5

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->ajy()Z

    move-result v6

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->ajz()Z

    move-result v7

    .line 32
    invoke-static {p1}, Lcom/kingroot/kinguser/bxe;->cg(Landroid/content/Context;)I

    move-result v8

    .line 34
    new-instance v9, Lcom/kingroot/kinguser/bym;

    invoke-direct {v9}, Lcom/kingroot/kinguser/bym;-><init>()V

    .line 37
    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0, v2}, Lcom/kingroot/kinguser/bxh;->d(IZI)I

    move-result v10

    .line 38
    if-lez v4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v10, v0, v1}, Lcom/kingroot/kinguser/bxh;->d(IZI)I

    move-result v10

    .line 39
    if-nez v5, :cond_2

    move v0, v1

    :goto_2
    const/4 v5, 0x2

    invoke-static {v10, v0, v5}, Lcom/kingroot/kinguser/bxh;->d(IZI)I

    move-result v5

    .line 40
    if-nez v6, :cond_3

    move v0, v1

    :goto_3
    const/4 v6, 0x3

    invoke-static {v5, v0, v6}, Lcom/kingroot/kinguser/bxh;->d(IZI)I

    move-result v0

    .line 41
    if-nez v7, :cond_4

    :goto_4
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bxh;->d(IZI)I

    move-result v0

    .line 43
    shl-int/lit8 v1, v8, 0x5

    or-int/2addr v0, v1

    .line 45
    iput v0, v9, Lcom/kingroot/kinguser/bym;->bUz:I

    .line 46
    int-to-long v0, v3

    iput-wide v0, v9, Lcom/kingroot/kinguser/bym;->bUA:J

    .line 47
    int-to-long v0, v4

    iput-wide v0, v9, Lcom/kingroot/kinguser/bym;->bUB:J

    .line 49
    return-object v9

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    :cond_1
    move v0, v2

    .line 38
    goto :goto_1

    :cond_2
    move v0, v2

    .line 39
    goto :goto_2

    :cond_3
    move v0, v2

    .line 40
    goto :goto_3

    :cond_4
    move v1, v2

    .line 41
    goto :goto_4
.end method
