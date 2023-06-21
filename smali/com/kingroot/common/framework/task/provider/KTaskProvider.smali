.class public Lcom/kingroot/common/framework/task/provider/KTaskProvider;
.super Lcom/kingroot/common/framework/provider/KBaseProvider;
.source "SourceFile"


# static fields
.field private static Ip:I

.field private static Iq:Lcom/kingroot/kinguser/ui$a;

.field private static volatile Ir:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ip:I

    .line 22
    sput-boolean v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ir:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;-><init>()V

    return-void
.end method

.method private static declared-synchronized M(Z)V
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/kingroot/common/framework/task/provider/KTaskProvider;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    sget v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ip:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ip:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v1

    return-void

    .line 69
    :cond_0
    :try_start_1
    sget v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ip:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ip:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic N(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->M(Z)V

    return-void
.end method

.method public static declared-synchronized isRunning()Z
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/kingroot/common/framework/task/provider/KTaskProvider;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ip:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static kz()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ir:Z

    return v0
.end method

.method private x(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ui;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Iq:Lcom/kingroot/kinguser/ui$a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/framework/task/provider/KTaskProvider$1;-><init>(Lcom/kingroot/common/framework/task/provider/KTaskProvider;)V

    sput-object v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Iq:Lcom/kingroot/kinguser/ui$a;

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ui;

    .line 52
    sget-object v2, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Iq:Lcom/kingroot/kinguser/ui$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ui;->a(Lcom/kingroot/kinguser/ui$a;)V

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->iq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jb()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/kingroot/kinguser/tl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v1, Lcom/kingroot/kinguser/ug;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ug;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0, v0}, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->x(Ljava/util/List;)V

    .line 36
    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->Ir:Z

    .line 27
    invoke-virtual {p0}, Lcom/kingroot/common/framework/task/provider/KTaskProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/uf;->J(Landroid/content/Context;)V

    .line 28
    invoke-super {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;->onCreate()Z

    move-result v0

    return v0
.end method
