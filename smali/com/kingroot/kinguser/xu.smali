.class public Lcom/kingroot/kinguser/xu;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final UK:I

.field private final UL:I

.field private final UM:I

.field private final verticalSpacing:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 37
    iput p1, p0, Lcom/kingroot/kinguser/xu;->UK:I

    .line 38
    iput p2, p0, Lcom/kingroot/kinguser/xu;->UL:I

    .line 39
    iput p3, p0, Lcom/kingroot/kinguser/xu;->UM:I

    .line 40
    iput p4, p0, Lcom/kingroot/kinguser/xu;->verticalSpacing:I

    .line 41
    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/xv;IIII)I
    .locals 2

    .prologue
    .line 120
    invoke-static {p0, p2, p3, p4}, Lcom/kingroot/kinguser/xu;->a(Lcom/kingroot/kinguser/xv;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;IIILcom/kingroot/kinguser/xv;)V
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/kingroot/kinguser/xu;->verticalSpacing:I

    invoke-static {p5, v0, p2, p4, p3}, Lcom/kingroot/kinguser/xu;->a(Lcom/kingroot/kinguser/xv;IIII)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/xu;->verticalSpacing:I

    invoke-static {p5, v0, p2, p3}, Lcom/kingroot/kinguser/xu;->b(Lcom/kingroot/kinguser/xv;III)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 65
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/xv;ILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/xu;->c(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 70
    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 97
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/xu;->d(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 76
    iget v0, p0, Lcom/kingroot/kinguser/xu;->UL:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/xu;->e(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget v0, p0, Lcom/kingroot/kinguser/xu;->UL:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 82
    iput v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/xu;->a(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/xu;->UM:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 92
    :goto_1
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/xu;->b(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget v0, p0, Lcom/kingroot/kinguser/xu;->UM:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 89
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/xu;->UK:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 95
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/xu;->UK:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/xv;I)Z
    .locals 1

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/xu;->d(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/xu;->d(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/xv;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 148
    .line 149
    add-int/lit8 v1, p2, -0x1

    move v2, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 151
    invoke-interface {p0, v1}, Lcom/kingroot/kinguser/xv;->bT(I)I

    move-result v2

    .line 152
    if-nez v2, :cond_1

    .line 156
    :goto_1
    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 149
    :cond_1
    add-int/lit8 v2, v1, -0x1

    move v3, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static a(Lcom/kingroot/kinguser/xv;III)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 128
    move v1, v0

    move v2, v0

    .line 129
    :goto_0
    if-ge v1, p3, :cond_2

    .line 131
    invoke-interface {p0, v1}, Lcom/kingroot/kinguser/xv;->bT(I)I

    move-result v2

    invoke-interface {p0, v1}, Lcom/kingroot/kinguser/xv;->getSpanSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 132
    add-int/lit8 v3, p2, -0x1

    if-ne v2, v3, :cond_1

    .line 136
    :goto_1
    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 129
    :cond_1
    add-int/lit8 v2, v1, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static b(Lcom/kingroot/kinguser/xv;III)I
    .locals 2

    .prologue
    .line 140
    invoke-static {p0, p2, p3}, Lcom/kingroot/kinguser/xu;->a(Lcom/kingroot/kinguser/xv;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static b(Lcom/kingroot/kinguser/xv;I)Z
    .locals 1

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/xu;->e(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/xu;->e(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/kingroot/kinguser/xv;I)Z
    .locals 1

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/xu;->d(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/kingroot/kinguser/xu;->e(Lcom/kingroot/kinguser/xv;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/kingroot/kinguser/xv;I)Z
    .locals 1

    .prologue
    .line 112
    invoke-interface {p0, p1}, Lcom/kingroot/kinguser/xv;->bT(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(III)Lcom/kingroot/kinguser/xu;
    .locals 4

    .prologue
    .line 26
    add-int/lit8 v0, p2, -0x1

    .line 27
    mul-int/2addr v0, p0

    .line 29
    const/high16 v1, 0x3f000000    # 0.5f

    int-to-float v2, p0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 30
    div-int/2addr v0, p2

    .line 31
    sub-int v2, p0, v0

    .line 33
    new-instance v3, Lcom/kingroot/kinguser/xu;

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/kingroot/kinguser/xu;-><init>(IIII)V

    return-object v3
.end method

.method private static e(Lcom/kingroot/kinguser/xv;I)Z
    .locals 2

    .prologue
    .line 116
    invoke-interface {p0, p1}, Lcom/kingroot/kinguser/xv;->bT(I)I

    move-result v0

    invoke-interface {p0, p1}, Lcom/kingroot/kinguser/xv;->getSpanSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p0}, Lcom/kingroot/kinguser/xv;->getSpanCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Lcom/kingroot/kinguser/xv;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 56
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {v0}, Lcom/kingroot/kinguser/xw;->a(Landroid/support/v7/widget/GridLayoutManager;)Lcom/kingroot/kinguser/xv;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/xw;->ow()Lcom/kingroot/kinguser/xv;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 46
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v2

    .line 47
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    .line 49
    invoke-virtual {p0, p2, p3}, Lcom/kingroot/kinguser/xu;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Lcom/kingroot/kinguser/xv;

    move-result-object v5

    .line 50
    invoke-direct {p0, v5, v2, p1}, Lcom/kingroot/kinguser/xu;->a(Lcom/kingroot/kinguser/xv;ILandroid/graphics/Rect;)V

    .line 51
    invoke-interface {v5}, Lcom/kingroot/kinguser/xv;->getSpanCount()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/xu;->a(Landroid/graphics/Rect;IIILcom/kingroot/kinguser/xv;)V

    .line 52
    return-void
.end method
