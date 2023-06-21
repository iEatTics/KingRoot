.class final Lcom/kingroot/kinguser/apb;
.super Lcom/kingroot/kinguser/aol;
.source "SourceFile"


# static fields
.field private static final aGq:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/apb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/apb$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apb$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/apb;->aGq:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/aol;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/apb$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/apb;-><init>()V

    return-void
.end method

.method public static KQ()Lcom/kingroot/kinguser/apb;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/apb;->aGq:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apb;

    return-object v0
.end method


# virtual methods
.method protected Ke()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5010007"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "5010008"

    goto :goto_0
.end method

.method protected Kf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "security_protect_app_dist"

    return-object v0
.end method

.method protected getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "security_protect_app_dist_info"

    return-object v0
.end method
