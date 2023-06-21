.class public Lcom/kingroot/kinguser/ajv;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ajv$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/kingroot/kinguser/ajv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ajv$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajv;-><init>()V

    return-void
.end method

.method public static zD()Lcom/kingroot/kinguser/ajv;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingroot/kinguser/ajv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajv;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x5

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ajv;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->kF()Ljava/util/HashMap;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 70
    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x6

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ajv;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->kF()Ljava/util/HashMap;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    :cond_0
    return-void
.end method

.method public d(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 74
    const/16 v0, 0x9

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ajv;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 75
    return-void
.end method

.method public gC(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/ajv;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 48
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
    .line 106
    const-class v0, Lcom/kingroot/kinguser/ajv$a;

    return-object v0
.end method

.method public zE()I
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/ajw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajw;-><init>()V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajw;->zE()I

    move-result v0

    return v0
.end method

.method public zF()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ajv;->aX(I)V

    .line 53
    return-void
.end method

.method public zG()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ajv;->aX(I)V

    .line 58
    return-void
.end method
