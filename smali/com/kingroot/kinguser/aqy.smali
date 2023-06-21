.class public abstract Lcom/kingroot/kinguser/aqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/arl;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/aqb;"
    }
.end annotation


# instance fields
.field protected aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected aLB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected aLC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aLE:Ljava/lang/String;

.field private aLe:J

.field private aLf:Z

.field protected aLz:Lcom/kingroot/kinguser/arl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLE:Ljava/lang/String;

    .line 45
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/kingroot/kinguser/aqy;->aLe:J

    .line 46
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aqy;->aLf:Z

    return-void
.end method


# virtual methods
.method public Au()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public LY()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arl;->LY()V

    .line 127
    :cond_0
    return-void
.end method

.method public final ME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqy;->Nb()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqy;->Nc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public MJ()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    iget-object v1, p0, Lcom/kingroot/kinguser/aqy;->aLC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLB:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/arl;->MJ()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MK()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public ML()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/kingroot/kinguser/aqy;->aLe:J

    return-wide v0
.end method

.method public final MU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqy;->Nd()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqy;->Nf()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public My()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 54
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 57
    new-instance v3, Lcom/kingroot/kinguser/aqy$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/kingroot/kinguser/aqy$1;-><init>(Lcom/kingroot/kinguser/aqy;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v3}, Lcom/kingroot/kinguser/ash;->execute(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqy;->ML()J

    move-result-wide v4

    .line 82
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 84
    :goto_0
    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aqy;->cH(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    return v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 94
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_1
.end method

.method protected Na()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract Nb()Ljava/lang/String;
.end method

.method protected abstract Nc()Ljava/lang/String;
.end method

.method protected abstract Nd()Ljava/lang/String;
.end method

.method public Ne()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract Nf()Ljava/lang/String;
.end method

.method public Ng()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/aqy;->aLf:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Nh()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Ni()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy;->aLE:Ljava/lang/String;

    return-object v0
.end method

.method public bV(J)V
    .locals 1

    .prologue
    .line 272
    iput-wide p1, p0, Lcom/kingroot/kinguser/aqy;->aLe:J

    .line 273
    return-void
.end method

.method public cH(Z)V
    .locals 0

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aqy;->aLf:Z

    .line 281
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public im(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/kingroot/kinguser/aqy;->aLE:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method
