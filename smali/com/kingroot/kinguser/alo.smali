.class public Lcom/kingroot/kinguser/alo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/alo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppMarketMgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alo;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/alo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alo;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alo$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/alo;-><init>()V

    return-void
.end method

.method public static GW()Lcom/kingroot/kinguser/alo;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/kinguser/alo;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alo;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/alo$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/alo$2;-><init>(Lcom/kingroot/kinguser/alo;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/btx;->a(Landroid/content/Context;Lcom/kingroot/kinguser/buk;Z)V

    .line 104
    return-void
.end method
