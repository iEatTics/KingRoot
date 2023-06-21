.class public Lcom/kingroot/kinguser/auy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/auy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/kingroot/kinguser/auy$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auy$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/auy;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/auy$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/auy;-><init>()V

    return-void
.end method

.method public static Ra()Lcom/kingroot/kinguser/auy;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/auy;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auy;

    return-object v0
.end method


# virtual methods
.method public bb(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "123"

    invoke-static {p1, v0, v1, v1, v1}, Lcom/kingroot/kinguser/bnu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/bnu;->agu()Lcom/kingroot/kinguser/bol;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/kingroot/kinguser/bon;->bFq:Lcom/kingroot/kinguser/bon;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bol;->a(Lcom/kingroot/kinguser/bon;I)V

    .line 34
    sget-object v1, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bol;->a(Lcom/kingroot/kinguser/bon;I)V

    .line 36
    return-void
.end method
