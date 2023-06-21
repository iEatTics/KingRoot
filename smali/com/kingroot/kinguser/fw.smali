.class Lcom/kingroot/kinguser/fw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic qd:Lcom/kingroot/kinguser/fv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/fv;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    :goto_0
    if-lez p1, :cond_1

    .line 108
    const-wide/16 v0, 0x3a98

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    iget-object v1, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v1}, Lcom/kingroot/kinguser/fv;->b(Lcom/kingroot/kinguser/fv;)Lcom/tencent/tps/client/AbsTPSClientBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/fv;->a(Lcom/tencent/tps/client/AbsTPSClientBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0}, Lcom/kingroot/kinguser/fv;->c(Lcom/kingroot/kinguser/fv;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->enableAutoPatch()Z

    .line 117
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0}, Lcom/kingroot/kinguser/fv;->d(Lcom/kingroot/kinguser/fv;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->d()Z

    .line 128
    :cond_1
    :goto_2
    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0}, Lcom/kingroot/kinguser/fv;->c(Lcom/kingroot/kinguser/fv;)I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->disableAutoPatch()Z

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 126
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0}, Lcom/kingroot/kinguser/fv;->d(Lcom/kingroot/kinguser/fv;)I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/fv;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/fv;->a(Lcom/kingroot/kinguser/fv;Z)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0}, Lcom/kingroot/kinguser/fv;->a(Lcom/kingroot/kinguser/fv;)La/aq;

    move-result-object v0

    invoke-interface {v0}, La/aq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/fw;->qd:Lcom/kingroot/kinguser/fv;

    invoke-static {v0}, Lcom/kingroot/kinguser/fv;->b(Lcom/kingroot/kinguser/fv;)Lcom/tencent/tps/client/AbsTPSClientBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tps/client/AbsTPSClientBase;->onTPSServiceStop()V

    .line 96
    new-instance v0, Lcom/kingroot/kinguser/ex;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    .line 102
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/fw;->a(I)V

    .line 103
    return-void
.end method
