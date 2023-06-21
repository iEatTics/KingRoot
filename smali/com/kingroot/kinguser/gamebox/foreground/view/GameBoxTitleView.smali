.class public Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private aFj:Landroid/widget/TextView;

.field private aQh:Landroid/widget/TextView;

.field private aQi:Lcom/kingcore/uilib/TypeWriterTextView;

.field private aQj:Lcom/kingcore/uilib/LoadingCircle;

.field private aQk:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQk:Z

    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->Lc()V

    .line 41
    return-void
.end method

.method private Lc()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030080

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    const v0, 0x7f0f01b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aFj:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0f01af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/LoadingCircle;

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQj:Lcom/kingcore/uilib/LoadingCircle;

    .line 48
    const v0, 0x7f0f01b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TypeWriterTextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQi:Lcom/kingcore/uilib/TypeWriterTextView;

    .line 49
    const v0, 0x7f0f01b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQh:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f01b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 53
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 56
    :cond_0
    return-void
.end method

.method private setSecondTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQi:Lcom/kingcore/uilib/TypeWriterTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TypeWriterTextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQi:Lcom/kingcore/uilib/TypeWriterTextView;

    invoke-virtual {v0, p1}, Lcom/kingcore/uilib/TypeWriterTextView;->a(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method


# virtual methods
.method public Px()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQk:Z

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQj:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/LoadingCircle;->gJ()V

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setSecondTitle(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public Py()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQk:Z

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07047a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setSecondTitle(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQh:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQj:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/LoadingCircle;->gL()V

    .line 94
    return-void
.end method

.method public Pz()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQk:Z

    return v0
.end method

.method public gC(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setSecondTitle(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQh:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQj:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/LoadingCircle;->gM()V

    .line 80
    return-void
.end method

.method public setArrowState(Z)V
    .locals 7

    .prologue
    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 101
    .line 103
    if-nez p1, :cond_0

    move v1, v0

    .line 107
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 108
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 109
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 110
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQh:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    return-void

    :cond_0
    move v1, v2

    move v2, v0

    goto :goto_0
.end method

.method public setOkState(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    iput-boolean v3, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQk:Z

    .line 84
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setSecondTitle(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQh:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->aQj:Lcom/kingcore/uilib/LoadingCircle;

    invoke-virtual {v0}, Lcom/kingcore/uilib/LoadingCircle;->gL()V

    .line 87
    return-void
.end method
