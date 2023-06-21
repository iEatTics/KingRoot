.class public Lcom/kingroot/kinguser/bzf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adZ:Ljava/lang/String;

.field private bVh:Lcom/kingroot/kinguser/cgb;

.field private bVi:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/kingroot/kinguser/bzf;->bVi:J

    .line 24
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/bzf;->adZ:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/kingroot/kinguser/cgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgb;

    iput-object v0, p0, Lcom/kingroot/kinguser/bzf;->bVh:Lcom/kingroot/kinguser/cgb;

    .line 26
    return-void

    .line 24
    :cond_0
    const-string v0, "no_pkg_name-"

    goto :goto_0
.end method

.method private nC(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bzf;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bzf;->bVh:Lcom/kingroot/kinguser/cgb;

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bzf;->nC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/bzf;->bVi:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/kingroot/kinguser/cgb;->a(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 42
    return-void
.end method

.method public b(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bzf;->bVh:Lcom/kingroot/kinguser/cgb;

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bzf;->nC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/bzf;->bVi:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/kingroot/kinguser/cgb;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 62
    return-void
.end method

.method public nD(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/bzf;->bVh:Lcom/kingroot/kinguser/cgb;

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bzf;->nC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/kingroot/kinguser/bzf;->bVi:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/cgb;->e(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
