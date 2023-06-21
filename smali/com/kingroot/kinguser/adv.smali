.class public abstract Lcom/kingroot/kinguser/adv;
.super Lcom/kingroot/kinguser/adr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/adv$a;,
        Lcom/kingroot/kinguser/adv$b;
    }
.end annotation


# instance fields
.field private adD:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/adr;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adv;->sW()Lcom/kingroot/kinguser/adq;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized n(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/adv;->adD:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sW()Lcom/kingroot/kinguser/adq;
    .locals 0

    .prologue
    .line 130
    return-object p0
.end method

.method public declared-synchronized ta()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adv;->adD:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
