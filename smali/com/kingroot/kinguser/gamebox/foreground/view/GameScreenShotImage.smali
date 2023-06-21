.class public Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private aQl:Landroid/widget/GridView;

.field private aQm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private P(II)V
    .locals 6

    .prologue
    .line 51
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-gt p1, p2, :cond_2

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    div-double/2addr v0, v2

    double-to-int v1, v0

    .line 58
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 66
    if-nez v2, :cond_3

    .line 67
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 72
    :goto_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->aQl:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->aQm:I

    mul-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->aQl:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    div-double/2addr v0, v2

    double-to-int v1, v0

    .line 61
    int-to-float v0, v1

    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 69
    :cond_3
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public setContainer(Landroid/widget/GridView;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->aQl:Landroid/widget/GridView;

    .line 42
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->P(II)V

    .line 38
    :cond_0
    return-void
.end method

.method public setShotCountInContainer(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->aQm:I

    .line 46
    return-void
.end method
