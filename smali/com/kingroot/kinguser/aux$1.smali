.class Lcom/kingroot/kinguser/aux$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aux;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aux$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTh:Lcom/kingroot/kinguser/aux;

.field final synthetic anx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aux;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/aux$1;->aTh:Lcom/kingroot/kinguser/aux;

    iput-object p2, p0, Lcom/kingroot/kinguser/aux$1;->anx:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 45
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/eq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eq;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/kingroot/kinguser/aux$1;->anx:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/eq;->nk:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/kingroot/kinguser/aux$1;->aTh:Lcom/kingroot/kinguser/aux;

    iget-object v2, v2, Lcom/kingroot/kinguser/aux;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/eq;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/dj;

    .line 52
    if-eqz v6, :cond_0

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/aux$1;->aTh:Lcom/kingroot/kinguser/aux;

    iget-object v0, v0, Lcom/kingroot/kinguser/aux;->aTg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/kingroot/kinguser/aux$a;

    .line 54
    if-eqz v7, :cond_0

    .line 56
    iget-wide v0, v6, Lcom/kingroot/kinguser/dj;->nl:J

    iget-wide v2, v6, Lcom/kingroot/kinguser/dj;->nn:J

    iget-wide v4, v6, Lcom/kingroot/kinguser/dj;->nm:J

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aux;->c(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-wide v0, v6, Lcom/kingroot/kinguser/dj;->nl:J

    iget-wide v2, v6, Lcom/kingroot/kinguser/dj;->nn:J

    add-long/2addr v0, v2

    iget-wide v2, v6, Lcom/kingroot/kinguser/dj;->nm:J

    add-long/2addr v0, v2

    .line 58
    iget-wide v2, v6, Lcom/kingroot/kinguser/dj;->nl:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    .line 59
    iget-object v2, p0, Lcom/kingroot/kinguser/aux$1;->anx:Ljava/lang/String;

    const/4 v3, 0x1

    long-to-int v0, v0

    invoke-interface {v7, v2, v3, v0}, Lcom/kingroot/kinguser/aux$a;->a(Ljava/lang/String;ZI)V

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/awd;->SG()Lcom/kingroot/kinguser/awd;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aux$1;->anx:Ljava/lang/String;

    iget-wide v2, v6, Lcom/kingroot/kinguser/dj;->nl:J

    iget-wide v4, v6, Lcom/kingroot/kinguser/dj;->nn:J

    iget-wide v6, v6, Lcom/kingroot/kinguser/dj;->nm:J

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/awd;->a(Ljava/lang/String;JJJ)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aux$1;->anx:Ljava/lang/String;

    invoke-interface {v7, v0, v8, v8}, Lcom/kingroot/kinguser/aux$a;->a(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aux$1;->aTh:Lcom/kingroot/kinguser/aux;

    iget-object v0, v0, Lcom/kingroot/kinguser/aux;->aTg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aux$a;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/kingroot/kinguser/aux$1;->anx:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v8}, Lcom/kingroot/kinguser/aux$a;->a(Ljava/lang/String;ZI)V

    goto :goto_0
.end method
