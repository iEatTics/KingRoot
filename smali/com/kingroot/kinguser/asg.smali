.class public Lcom/kingroot/kinguser/asg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/asg$b;,
        Lcom/kingroot/kinguser/asg$a;
    }
.end annotation


# static fields
.field private static volatile aMH:Lcom/kingroot/kinguser/asg;


# instance fields
.field private final aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aMK:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/asg;->aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/asg;->aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/asg;->aMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static NO()Lcom/kingroot/kinguser/asg;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/asg;->aMH:Lcom/kingroot/kinguser/asg;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/kingroot/kinguser/asg;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/asg;->aMH:Lcom/kingroot/kinguser/asg;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/asg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/asg;->aMH:Lcom/kingroot/kinguser/asg;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/asg;->aMH:Lcom/kingroot/kinguser/asg;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private NP()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 80
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    return-object v1
.end method

.method private final ip(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final NQ()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    return-void
.end method

.method public a(Landroid/content/pm/IPackageDataObserver;)V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/kingroot/kinguser/asg;->aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    monitor-exit v1

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    invoke-virtual {p0}, Lcom/kingroot/kinguser/asg;->NQ()V

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/asi;->NS()Z

    move-result v0

    .line 170
    if-eqz p1, :cond_1

    .line 171
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/asg;->aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 180
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMI:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 165
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 173
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kinguser/asg$b;)V
    .locals 6

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/asg;->aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    monitor-exit v1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-direct {p0}, Lcom/kingroot/kinguser/asg;->NP()Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/kingroot/kinguser/asg$b;->go(I)V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/kingroot/kinguser/asg;->aMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 131
    :cond_3
    invoke-interface {p1}, Lcom/kingroot/kinguser/asg$b;->Nl()V

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/asg;->aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 136
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/asg;->aMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 118
    :cond_4
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asg;->ip(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    invoke-static {v0}, Lcom/kingroot/kinguser/asi;->iq(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v2

    .line 124
    new-instance v3, Lcom/kingroot/kinguser/asg$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/asg$a;-><init>()V

    .line 125
    if-eqz v2, :cond_5

    .line 126
    iget-wide v4, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v4, v3, Lcom/kingroot/kinguser/asg$a;->aML:J

    .line 128
    :cond_5
    iput-object v0, v3, Lcom/kingroot/kinguser/asg$a;->adZ:Ljava/lang/String;

    .line 129
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/asg$b;->a(Lcom/kingroot/kinguser/asg$a;)V

    goto :goto_1
.end method
