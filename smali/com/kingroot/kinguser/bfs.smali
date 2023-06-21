.class public Lcom/kingroot/kinguser/bfs;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bfs$a;
    }
.end annotation


# static fields
.field private static bnd:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bfs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/bfs$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfs$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfs;->bnd:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bfs$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfs;-><init>()V

    return-void
.end method

.method public static aaI()Lcom/kingroot/kinguser/bfs;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/bfs;->bnd:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfs;

    return-object v0
.end method


# virtual methods
.method public a(ZJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 52
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v0}, Lcom/kingroot/kinguser/bfs;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public aaJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfs;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x3

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 88
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x2

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 58
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 4

    .prologue
    .line 62
    const/16 v0, 0x9

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 63
    return-void
.end method

.method public dP(Z)V
    .locals 5

    .prologue
    .line 72
    const/4 v0, 0x5

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 73
    return-void
.end method

.method public deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 4

    .prologue
    .line 108
    const/16 v0, 0xb

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 109
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x7

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 78
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
    .line 47
    const-class v0, Lcom/kingroot/kinguser/bfs$a;

    return-object v0
.end method

.method public lh(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    const/16 v0, 0xa

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bfs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 68
    return-void
.end method
