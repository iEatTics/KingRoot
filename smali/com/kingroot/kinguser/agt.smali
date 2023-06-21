.class public Lcom/kingroot/kinguser/agt;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agt$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/agt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/agt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/agt;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/agt$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/agt;-><init>()V

    return-void
.end method

.method public static wb()Lcom/kingroot/kinguser/agt;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/agt;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agt;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/advance/install/IInjectCallback;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/agt;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 43
    return-void
.end method

.method public kD()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Lcom/kingroot/kinguser/agt$a;

    return-object v0
.end method

.method public wc()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/agt;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
