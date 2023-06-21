.class public final Lcom/kingroot/kinguser/apy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

.field private aKl:I

.field private aKm:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    iput v0, p0, Lcom/kingroot/kinguser/apy;->aKm:I

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/apy$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/apy$1;-><init>(Lcom/kingroot/kinguser/apy;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apy;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apy;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apy;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKm:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apy;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/kingroot/kinguser/apy;->aKm:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/apy;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/apy;)Lcom/kingroot/common/uilib/MainExpCircleView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MainExpCircleView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpCircleView;->setTitleText(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public Mj()Lcom/kingroot/common/uilib/MainExpCircleView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    return-object v0
.end method

.method public Mk()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpCircleView;->setState(Lcom/kingroot/common/uilib/MainExpCircleView$a;)V

    .line 106
    return-void
.end method

.method public Ml()J
    .locals 2

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Mm()I
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 119
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    if-lt v0, v1, :cond_0

    .line 120
    iput v1, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    .line 123
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    return v0
.end method

.method public Mn()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->nJ()V

    .line 138
    return-void
.end method

.method public Mo()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->nK()V

    .line 142
    return-void
.end method

.method public a(Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-virtual {v0, p1}, Lcom/kingroot/common/uilib/MainExpCircleView;->a(Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 150
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aqs;)V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/kingroot/kinguser/apy$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/apy$2;-><init>(Lcom/kingroot/kinguser/apy;Lcom/kingroot/kinguser/aqs;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/aqs;)V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/kingroot/kinguser/apy$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/apy$3;-><init>(Lcom/kingroot/kinguser/apy;Lcom/kingroot/kinguser/aqs;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public gD()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->gD()V

    .line 80
    return-void
.end method

.method public gl(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x64

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    if-ne p1, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    if-gt v0, v1, :cond_0

    .line 91
    iput p1, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    if-lt v0, v1, :cond_2

    .line 93
    iput v1, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public gm(I)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 129
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    if-lt v0, v1, :cond_0

    .line 131
    iput v1, p0, Lcom/kingroot/kinguser/apy;->aKl:I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    return-void
.end method

.method public nL()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/apy;->aKk:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->nL()V

    .line 146
    return-void
.end method
