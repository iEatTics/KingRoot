.class public final Lcom/kingroot/kinguser/apt;
.super Lcom/kingroot/kinguser/aol;
.source "SourceFile"


# static fields
.field private static final aGq:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/apt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/apt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/apt;->aGq:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/aol;-><init>()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/apt$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/apt;-><init>()V

    return-void
.end method

.method public static LK()Lcom/kingroot/kinguser/apt;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/kinguser/apt;->aGq:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apt;

    return-object v0
.end method


# virtual methods
.method protected Ke()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5010009"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "5010010"

    goto :goto_0
.end method

.method protected Kf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "tool_box_app_dist"

    return-object v0
.end method

.method protected getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "tool_box_app_dist_info"

    return-object v0
.end method
