.class public Lcom/kingroot/kingmaster/baseui/SelectPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private abV:Landroid/widget/TextView;

.field private abW:Landroid/widget/TextView;

.field private abX:I

.field private abY:I

.field private abZ:Z

.field private aca:Lcom/kingroot/kinguser/adb;

.field private acb:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->ap(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private ap(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->acb:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->acb:Landroid/view/View;

    const v2, 0x7f0e00a0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    iget-object v2, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->acb:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    const v0, 0x7f0f01a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abV:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0f01a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abW:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->setId(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->setOrientation(I)V

    .line 72
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sh()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    const/4 v0, 0x0

    .line 116
    const v1, 0x7f070093

    :try_start_0
    invoke-direct {p0, v1}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    if-nez v0, :cond_0

    .line 121
    const-string v0, ""

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abY:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abX:I

    if-eqz v0, :cond_1

    .line 127
    iput-boolean v6, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abZ:Z

    .line 131
    :goto_1
    return-void

    .line 129
    :cond_1
    iput-boolean v5, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abZ:Z

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public setCurrentSelectedNum(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abY:I

    .line 103
    invoke-direct {p0}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->sh()V

    .line 104
    return-void
.end method

.method public setIsAllSelected(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abZ:Z

    .line 76
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/kingroot/kinguser/adb;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->aca:Lcom/kingroot/kinguser/adb;

    .line 108
    return-void
.end method

.method public setSelectedMaxNum(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/kingroot/kingmaster/baseui/SelectPanel;->abX:I

    .line 84
    invoke-direct {p0}, Lcom/kingroot/kingmaster/baseui/SelectPanel;->sh()V

    .line 85
    return-void
.end method
