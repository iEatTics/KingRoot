.class public Lcom/kingroot/kinguser/auq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auh$a;


# instance fields
.field private aRN:Lcom/kingroot/kinguser/auh$b;

.field private aRO:Z

.field private aRP:Z

.field private aRQ:I

.field private aRR:Lcom/kingroot/kinguser/bed;

.field private aRS:Lcom/kingroot/kinguser/bed;

.field private aRT:Lcom/kingroot/kinguser/bed;

.field private aRU:Lcom/kingroot/kinguser/bed;

.field private aRz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/auh$b;Landroid/app/Activity;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/auh$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRO:Z

    .line 46
    iput-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRP:Z

    .line 47
    iput v4, p0, Lcom/kingroot/kinguser/auq;->aRQ:I

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/auq$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auq$1;-><init>(Lcom/kingroot/kinguser/auq;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auq;->aRR:Lcom/kingroot/kinguser/bed;

    .line 135
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/auq$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auq$2;-><init>(Lcom/kingroot/kinguser/auq;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auq;->aRS:Lcom/kingroot/kinguser/bed;

    .line 171
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/auq$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auq$3;-><init>(Lcom/kingroot/kinguser/auq;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auq;->aRT:Lcom/kingroot/kinguser/bed;

    .line 212
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/auq$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auq$4;-><init>(Lcom/kingroot/kinguser/auq;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auq;->aRU:Lcom/kingroot/kinguser/bed;

    .line 121
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auh$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/auq;->aRN:Lcom/kingroot/kinguser/auh$b;

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auq;->aRz:Ljava/lang/ref/WeakReference;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auq;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRO:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRR:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/auh$b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRN:Lcom/kingroot/kinguser/auh$b;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/auq;)I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/auq;->aRQ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/auq;->aRQ:I

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/auq;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRP:Z

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/auq;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRz:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public PV()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 154
    iget-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRP:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRP:Z

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRN:Lcom/kingroot/kinguser/auh$b;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/auq;->aRP:Z

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auh$b;->cO(Z)V

    .line 156
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PW()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 240
    iget v0, p0, Lcom/kingroot/kinguser/auq;->aRQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/auq;->aRQ:I

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRR:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq;->aRS:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->d(Lcom/kingroot/kinguser/bed;)V

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq;->aRR:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->d(Lcom/kingroot/kinguser/bed;)V

    .line 246
    :cond_0
    return-void
.end method

.method public PX()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRT:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq;->aRT:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public PY()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/auq;->aRU:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq;->aRU:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 203
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public PZ()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq;->aRS:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 209
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRO:Z

    .line 133
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/auq;->aRO:Z

    .line 128
    return-void
.end method
