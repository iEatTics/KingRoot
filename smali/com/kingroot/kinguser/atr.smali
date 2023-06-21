.class public Lcom/kingroot/kinguser/atr;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private aPY:I

.field private aPZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aQa:Landroid/graphics/Bitmap;

.field private aQb:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/GridView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/atr;->mContext:Landroid/content/Context;

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atr;->aPY:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    iput-object p4, p0, Lcom/kingroot/kinguser/atr;->aQa:Landroid/graphics/Bitmap;

    .line 40
    iput-object p2, p0, Lcom/kingroot/kinguser/atr;->aQb:Landroid/widget/GridView;

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/GridView;FLandroid/graphics/Bitmap;)Lcom/kingroot/kinguser/atr;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/kingroot/kinguser/atr;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/kingroot/kinguser/atr;-><init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    .line 64
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    .line 65
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/atr;->aPZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/abg;->qc()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 77
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 78
    if-nez p2, :cond_1

    .line 79
    new-instance p2, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;

    iget-object v3, p0, Lcom/kingroot/kinguser/atr;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    iget v3, p0, Lcom/kingroot/kinguser/atr;->aPY:I

    iget v4, p0, Lcom/kingroot/kinguser/atr;->aPY:I

    iget v5, p0, Lcom/kingroot/kinguser/atr;->aPY:I

    iget v6, p0, Lcom/kingroot/kinguser/atr;->aPY:I

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setPadding(IIII)V

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/kingroot/kinguser/atr;->aQa:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v3, p0, Lcom/kingroot/kinguser/atr;->aQb:Landroid/widget/GridView;

    invoke-virtual {p2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setContainer(Landroid/widget/GridView;)V

    .line 88
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atr;->getCount()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;->setShotCountInContainer(I)V

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    new-instance v3, Lcom/kingroot/kinguser/atv$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/atv$a;-><init>()V

    .line 91
    iput-object v0, v3, Lcom/kingroot/kinguser/atv$a;->ok:Ljava/lang/String;

    .line 92
    int-to-float v1, v1

    iput v1, v3, Lcom/kingroot/kinguser/atv$a;->aQu:F

    .line 93
    int-to-float v1, v2

    iput v1, v3, Lcom/kingroot/kinguser/atv$a;->aQv:F

    .line 94
    iput-object p2, v3, Lcom/kingroot/kinguser/atv$a;->aQw:Landroid/widget/ImageView;

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/atv;->PA()Lcom/kingroot/kinguser/atv;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/atr;->aQa:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, p2, v0, v2}, Lcom/kingroot/kinguser/atv;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-object p2

    .line 84
    :cond_1
    check-cast p2, Lcom/kingroot/kinguser/gamebox/foreground/view/GameScreenShotImage;

    goto :goto_0
.end method
