.class public Lcom/kingroot/kinguser/awn;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/awn$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/awn$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awn$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awn;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    return-void
.end method

.method public static Ta()Lcom/kingroot/kinguser/awn;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/awn;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awn;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    .locals 9
    .param p2    # Lcom/qq/taf/jce/JceStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/qq/taf/jce/JceStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x3

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p2}, Lcom/qq/taf/jce/JceStruct;->toByteArray()[B

    move-result-object v1

    .line 89
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p3}, Lcom/qq/taf/jce/JceStruct;->toByteArray()[B

    move-result-object v3

    .line 91
    new-instance v4, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    aput-object v2, v5, v8

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    new-instance v1, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;

    invoke-direct {v1, p0, p4}, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;-><init>(Lcom/kingroot/kinguser/awn;Lcom/kingroot/kinguser/cat;)V

    .line 117
    invoke-virtual {v1}, Lcom/kingroot/kinguser/net/shark/KuSharkManager$3;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-direct {v4, v5}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v8, v4}, Lcom/kingroot/kinguser/awn;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 118
    return-void
.end method

.method public b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;",
            "Lcom/kingroot/kinguser/c;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return v1

    .line 130
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/b;

    .line 132
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/kingroot/kinguser/b;->toByteArray()[B

    move-result-object v0

    .line 136
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_2
    const/4 v0, 0x4

    new-instance v3, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    aput-object p2, v4, v2

    invoke-direct {v3, v4}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lcom/kingroot/kinguser/awn;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2
.end method

.method public bG(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/awn;->b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/awn;->aX(I)V

    .line 57
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
    const-class v0, Lcom/kingroot/kinguser/awn$a;

    return-object v0
.end method
