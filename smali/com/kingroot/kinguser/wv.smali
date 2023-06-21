.class public Lcom/kingroot/kinguser/wv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Rs:Lcom/kingroot/common/uilib/ShadowProperty;

.field private Rt:Lcom/kingroot/kinguser/wu;

.field private Ru:Lcom/kingroot/kinguser/wu;

.field private Rv:I

.field private Rw:F

.field private Rx:F

.field private Ry:Landroid/graphics/drawable/StateListDrawable;

.field private color:I

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/kingroot/common/uilib/ShadowProperty;Landroid/view/View;IIFF)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 51
    iput-object p2, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    .line 52
    iput p3, p0, Lcom/kingroot/kinguser/wv;->color:I

    .line 53
    iput p4, p0, Lcom/kingroot/kinguser/wv;->Rv:I

    .line 54
    iput p5, p0, Lcom/kingroot/kinguser/wv;->Rw:F

    .line 55
    iput p6, p0, Lcom/kingroot/kinguser/wv;->Rx:F

    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/wv;->color:I

    iget v1, p0, Lcom/kingroot/kinguser/wv;->Rv:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/wv;->init(Z)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/wv;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    return-object v0
.end method

.method public static a(Lcom/kingroot/common/uilib/ShadowProperty;Landroid/view/View;I)Lcom/kingroot/kinguser/wv;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/wv;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/wv;-><init>(Lcom/kingroot/common/uilib/ShadowProperty;Landroid/view/View;IIFF)V

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/wv;)Lcom/kingroot/kinguser/wu;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->Rt:Lcom/kingroot/kinguser/wu;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/wv;)Lcom/kingroot/kinguser/wu;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->Ru:Lcom/kingroot/kinguser/wu;

    return-object v0
.end method

.method private init(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/wu;

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/ShadowProperty;->ob()I

    move-result v3

    .line 68
    iget-object v4, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 69
    invoke-virtual {v0}, Lcom/kingroot/common/uilib/ShadowProperty;->nX()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v3

    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 70
    invoke-virtual {v1}, Lcom/kingroot/common/uilib/ShadowProperty;->nY()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v3

    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 71
    invoke-virtual {v2}, Lcom/kingroot/common/uilib/ShadowProperty;->nZ()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v3

    :goto_2
    iget-object v5, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 72
    invoke-virtual {v5}, Lcom/kingroot/common/uilib/ShadowProperty;->oa()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    .line 68
    :goto_3
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/wu;

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    iget v2, p0, Lcom/kingroot/kinguser/wv;->color:I

    iget v3, p0, Lcom/kingroot/kinguser/wv;->Rw:F

    iget v4, p0, Lcom/kingroot/kinguser/wv;->Rx:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/wu;-><init>(Lcom/kingroot/common/uilib/ShadowProperty;IFF)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wv;->Rt:Lcom/kingroot/kinguser/wu;

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/wv$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/wv$1;-><init>(Lcom/kingroot/kinguser/wv;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    if-eqz p1, :cond_2

    .line 90
    new-instance v0, Lcom/kingroot/kinguser/wu;

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Rs:Lcom/kingroot/common/uilib/ShadowProperty;

    iget v2, p0, Lcom/kingroot/kinguser/wv;->Rv:I

    iget v3, p0, Lcom/kingroot/kinguser/wv;->Rw:F

    iget v4, p0, Lcom/kingroot/kinguser/wv;->Rx:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/wu;-><init>(Lcom/kingroot/common/uilib/ShadowProperty;IFF)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wv;->Ru:Lcom/kingroot/kinguser/wu;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/wv$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/wv$2;-><init>(Lcom/kingroot/kinguser/wv;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    .line 105
    new-array v0, v7, [I

    const v1, 0x10100a7

    aput v1, v0, v6

    .line 106
    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Ru:Lcom/kingroot/kinguser/wu;

    .line 107
    iget-object v2, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 109
    new-array v0, v6, [I

    .line 110
    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Rt:Lcom/kingroot/kinguser/wu;

    .line 111
    iget-object v2, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_4
    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto/16 :goto_0

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto/16 :goto_1

    .line 71
    :cond_5
    iget-object v2, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    goto/16 :goto_2

    .line 72
    :cond_6
    iget-object v3, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto/16 :goto_3

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Rt:Lcom/kingroot/kinguser/wu;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Ry:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 124
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/wv;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/wv;->Rt:Lcom/kingroot/kinguser/wu;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method
