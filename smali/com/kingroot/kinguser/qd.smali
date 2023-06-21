.class public Lcom/kingroot/kinguser/qd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private CX:Landroid/widget/ImageView;

.field private CY:Landroid/widget/ImageView;

.field private CZ:Landroid/widget/ImageView;

.field private Da:Landroid/widget/ImageView;

.field private Db:Landroid/widget/ImageView;

.field private zv:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qd;->gy()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/qd;->zv:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public getWholeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/qd;->zv:Landroid/view/View;

    return-object v0
.end method

.method public gy()Landroid/view/View;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    const v0, 0x7f0f00b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/qd;->CX:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0f00b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/qd;->CY:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f0f00b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/qd;->CZ:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f0f00b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/qd;->Da:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0f00b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/qd;->Db:Landroid/widget/ImageView;

    .line 37
    return-object v1
.end method

.method public r(II)V
    .locals 11

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    .line 41
    if-eqz p2, :cond_2

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 43
    :goto_0
    cmpg-float v1, v0, v6

    if-ltz v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    :cond_0
    move v3, v4

    .line 44
    :goto_1
    const v2, 0x7f0202a7

    .line 45
    const v0, 0x7f0202a6

    .line 46
    const v1, 0x7f0202a5

    .line 52
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_4

    cmpg-float v5, v3, v7

    if-gez v5, :cond_4

    .line 53
    cmpl-float v2, v3, v6

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    move v2, v1

    move v3, v1

    move v4, v0

    move v0, v1

    .line 73
    :goto_2
    iget-object v5, p0, Lcom/kingroot/kinguser/qd;->CX:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v4, p0, Lcom/kingroot/kinguser/qd;->CY:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v3, p0, Lcom/kingroot/kinguser/qd;->CZ:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/qd;->Da:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/qd;->Db:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    return-void

    .line 41
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_3
    move v3, v0

    .line 43
    goto :goto_1

    .line 55
    :cond_4
    cmpl-float v5, v3, v7

    if-ltz v5, :cond_6

    cmpg-float v5, v3, v8

    if-gez v5, :cond_6

    .line 57
    cmpl-float v3, v3, v7

    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    move v3, v0

    move v4, v2

    move v2, v1

    move v0, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_6
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_8

    cmpg-float v5, v3, v9

    if-gez v5, :cond_8

    .line 61
    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    move v0, v1

    :cond_7
    move v3, v2

    move v4, v2

    move v2, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_8
    cmpl-float v5, v3, v9

    if-ltz v5, :cond_a

    cmpg-float v5, v3, v4

    if-gez v5, :cond_a

    .line 65
    cmpl-float v3, v3, v9

    if-nez v3, :cond_9

    move v0, v1

    :cond_9
    move v3, v2

    move v4, v2

    move v10, v0

    move v0, v2

    move v2, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_a
    cmpl-float v5, v3, v4

    if-ltz v5, :cond_c

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_c

    .line 69
    cmpl-float v3, v3, v4

    if-nez v3, :cond_b

    :goto_3
    move v0, v2

    move v3, v2

    move v4, v2

    goto :goto_2

    :cond_b
    move v1, v0

    goto :goto_3

    :cond_c
    move v1, v2

    move v0, v2

    move v3, v2

    move v4, v2

    .line 71
    goto :goto_2
.end method
