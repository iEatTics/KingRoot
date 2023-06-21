.class public Lcom/kingroot/kinguser/bxl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/bxl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/kingroot/kinguser/bxl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bxl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bxl;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajC()Lcom/kingroot/kinguser/bxl;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kingroot/kinguser/bxl;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxl;

    return-object v0
.end method

.method private static d(IZI)I
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    goto :goto_0
.end method


# virtual methods
.method public ajD()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/bxp;->ajK()Z

    move-result v0

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/bxo;->ajI()Z

    move-result v1

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/bxo;->ajH()Z

    move-result v2

    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/bxm;->ajF()Z

    move-result v3

    .line 35
    invoke-static {v4, v0, v4}, Lcom/kingroot/kinguser/bxl;->d(IZI)I

    move-result v0

    .line 36
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/kingroot/kinguser/bxl;->d(IZI)I

    move-result v0

    .line 37
    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bxl;->d(IZI)I

    move-result v0

    .line 38
    const/4 v1, 0x3

    invoke-static {v0, v3, v1}, Lcom/kingroot/kinguser/bxl;->d(IZI)I

    move-result v0

    .line 40
    return v0
.end method
