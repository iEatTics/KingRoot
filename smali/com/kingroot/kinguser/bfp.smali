.class public Lcom/kingroot/kinguser/bfp;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bfp$a;
    }
.end annotation


# static fields
.field private static bnd:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bfp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/bfp$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfp$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfp;->bnd:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bfp$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfp;-><init>()V

    return-void
.end method

.method public static aay()Lcom/kingroot/kinguser/bfp;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/bfp;->bnd:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfp;

    return-object v0
.end method


# virtual methods
.method public a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v0}, Lcom/kingroot/kinguser/bfp;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 57
    return-void
.end method

.method public aaz()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfp;->aX(I)V

    goto :goto_0
.end method

.method public addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 4

    .prologue
    .line 67
    const/4 v0, 0x3

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfp;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 68
    return-void
.end method

.method public bP(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x7

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfp;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 92
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfp;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
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
    .line 51
    const-class v0, Lcom/kingroot/kinguser/bfp$a;

    return-object v0
.end method
