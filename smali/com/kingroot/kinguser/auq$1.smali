.class Lcom/kingroot/kinguser/auq$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRV:Lcom/kingroot/kinguser/auq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auq;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method

.method private QE()V
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qo()J

    move-result-wide v0

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qp()J

    move-result-wide v2

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v2, v2

    long-to-float v0, v0

    div-float v0, v2, v0

    sub-float v0, v4, v0

    .line 76
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v1}, Lcom/kingroot/kinguser/auq;->c(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/auh$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/auh$b;->Q(II)V

    .line 78
    return-void
.end method

.method private QF()V
    .locals 6

    .prologue
    .line 81
    new-instance v0, Lcom/kingroot/kinguser/aav$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aav$a;-><init>()V

    .line 82
    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->b(Lcom/kingroot/kinguser/aav$a;)V

    .line 84
    const/high16 v1, 0x3f800000    # 1.0f

    iget-wide v2, v0, Lcom/kingroot/kinguser/aav$a;->Yv:J

    long-to-float v2, v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/aav$a;->Yw:J

    long-to-float v0, v4

    div-float v0, v2, v0

    sub-float v0, v1, v0

    .line 86
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 87
    iget-object v1, p0, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v1}, Lcom/kingroot/kinguser/auq;->c(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/auh$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/auh$b;->Q(II)V

    .line 88
    return-void
.end method

.method private QG()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/bgj;->abB()Lcom/kingroot/kinguser/bgj;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgj;->abC()I

    move-result v1

    .line 94
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgj;->abD()I

    move-result v0

    .line 96
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 97
    iget-object v1, p0, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v1}, Lcom/kingroot/kinguser/auq;->c(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/auh$b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/auq$1;->gT(I)I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/auh$b;->Q(II)V

    .line 98
    return-void
.end method

.method private gT(I)I
    .locals 2

    .prologue
    .line 101
    const/16 v0, 0x5f

    if-lt p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v0}, Lcom/kingroot/kinguser/auq;->d(Lcom/kingroot/kinguser/auq;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    .line 103
    const/16 v0, 0x3c

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/auq$1;->S(II)I

    move-result p1

    .line 108
    :cond_0
    return p1
.end method


# virtual methods
.method public S(II)I
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/auq$1;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v0}, Lcom/kingroot/kinguser/auq;->a(Lcom/kingroot/kinguser/auq;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/auq$1;->QE()V

    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/auq$1;->QF()V

    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/auq$1;->QG()V

    .line 62
    new-instance v0, Lcom/kingroot/kinguser/auq$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/auq$1$1;-><init>(Lcom/kingroot/kinguser/auq$1;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
