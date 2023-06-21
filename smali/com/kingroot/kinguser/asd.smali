.class public Lcom/kingroot/kinguser/asd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aMr:Lcom/kingroot/kinguser/asc;

.field private aMs:Lcom/kingroot/kinguser/asc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/kingroot/kinguser/asa;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asa;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/asd;->aMr:Lcom/kingroot/kinguser/asc;

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/asa;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asa;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/asd;->aMs:Lcom/kingroot/kinguser/asc;

    return-void
.end method


# virtual methods
.method public declared-synchronized NK()Lcom/kingroot/kinguser/asc;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asd;->aMr:Lcom/kingroot/kinguser/asc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/kingroot/kinguser/asc;)V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    if-nez p1, :cond_0

    .line 41
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asd;->aMr:Lcom/kingroot/kinguser/asc;

    iput-object v0, p0, Lcom/kingroot/kinguser/asd;->aMs:Lcom/kingroot/kinguser/asc;

    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/asd;->aMr:Lcom/kingroot/kinguser/asc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gs(I)Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asd;->aMr:Lcom/kingroot/kinguser/asc;

    invoke-virtual {v0, p1, p0}, Lcom/kingroot/kinguser/asc;->b(ILcom/kingroot/kinguser/asd;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
