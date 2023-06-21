.class public Lcom/kingroot/kinguser/mg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/mg$a;,
        Lcom/kingroot/kinguser/mg$b;
    }
.end annotation


# static fields
.field private static vH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile vI:Lcom/kingroot/kinguser/mg$b;

.field private final vJ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/mg;->vH:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mg;->vJ:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/mg;Lcom/kingroot/kinguser/mg$b;)Lcom/kingroot/kinguser/mg$b;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/mg;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/mg;)Lcom/kingroot/kinguser/mg$b;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    return-object v0
.end method

.method static synthetic eB()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/kingroot/kinguser/mg;->vH:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mg$a;)V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/kingroot/kinguser/mg;->run()V

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 90
    const/4 v0, 0x0

    .line 91
    iget-object v2, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    if-nez v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/kingroot/kinguser/mg;->vJ:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    if-nez v3, :cond_2

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/mh;

    invoke-direct {v0, p0, p3, p4}, Lcom/kingroot/kinguser/mh;-><init>(Lcom/kingroot/kinguser/mg;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    if-nez p1, :cond_0

    const-string p1, "SingleThread"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/mg$b;->setName(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/mg$b;->setPriority(I)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/mg$b;->setDaemon(Z)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/mg$b;->start()V

    .line 122
    if-eqz p4, :cond_1

    .line 123
    sget-object v0, Lcom/kingroot/kinguser/mg;->vH:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    .line 127
    :cond_2
    monitor-exit v2

    .line 129
    :cond_3
    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/kingroot/kinguser/mg;->a(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public eA()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/kingroot/kinguser/mg;->vJ:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    .line 154
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/mg;->vI:Lcom/kingroot/kinguser/mg$b;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 157
    :cond_0
    monitor-exit v1

    .line 159
    :cond_1
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ez()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/kingroot/kinguser/mg;->a(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public n(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/kingroot/kinguser/mg;->a(Ljava/lang/String;ILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
