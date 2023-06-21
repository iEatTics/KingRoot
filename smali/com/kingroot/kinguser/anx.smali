.class public Lcom/kingroot/kinguser/anx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/anx$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aAM:Landroid/widget/TextView;

.field private aEC:Landroid/widget/ImageView;

.field private aED:Landroid/widget/ImageView;

.field private aEE:Landroid/widget/ImageView;

.field private aEF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aEG:Lcom/kingroot/kinguser/anx$a;

.field private volatile mRepeatCount:I

.field private zv:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DownloadStatusView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/anx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anx;->aEF:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/anx;->mRepeatCount:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/anx;->aU(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anx;->zv:Landroid/view/View;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anx;)Lcom/kingroot/kinguser/anx$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEG:Lcom/kingroot/kinguser/anx$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anx;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEF:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/anx;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/anx;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public JM()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    return-void
.end method

.method public JN()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anx;->JM()V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aAM:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    return-void
.end method

.method public JO()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    return-void
.end method

.method public JP()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    return-void
.end method

.method public JQ()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    const v1, 0x7f0202c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    return-void
.end method

.method public JR()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEC:Landroid/widget/ImageView;

    return-object v0
.end method

.method public Jm()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/anx$a;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/kingroot/kinguser/anx;->aEG:Lcom/kingroot/kinguser/anx$a;

    .line 183
    return-void
.end method

.method public aU(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    const v0, 0x7f0f00cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anx;->aEC:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0f00cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anx;->aAM:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f00ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0f00cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    .line 54
    return-object v1
.end method

.method public aV(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 148
    const v0, 0x7f040008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/kingroot/kinguser/anx$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/anx$2;-><init>(Lcom/kingroot/kinguser/anx;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 168
    iget-object v1, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iget-object v1, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 171
    return-void
.end method

.method public fK(I)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anx;->stopAnimation()V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEC:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aAM:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public fL(I)V
    .locals 2

    .prologue
    .line 69
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const-string v0, "99+"

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/anx;->aAM:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEC:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    return-void

    .line 69
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public fM(I)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anx;->stopAnimation()V

    .line 79
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const-string v0, "99+"

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/anx;->aAM:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEC:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    return-void

    .line 79
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWholeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->zv:Landroid/view/View;

    return-object v0
.end method

.method public l(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 90
    const v0, 0x7f040018

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 93
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 94
    new-instance v1, Lcom/kingroot/kinguser/anx$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/anx$1;-><init>(Lcom/kingroot/kinguser/anx;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iput p2, p0, Lcom/kingroot/kinguser/anx;->mRepeatCount:I

    .line 105
    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/anx;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aEE:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/anx;->aED:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    :cond_0
    return-void
.end method
