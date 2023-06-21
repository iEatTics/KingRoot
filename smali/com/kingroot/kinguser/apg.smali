.class public Lcom/kingroot/kinguser/apg;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apg$a;
    }
.end annotation


# instance fields
.field private aHF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private aHG:Lcom/kingroot/kinguser/apg$a;

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 33
    iput p1, p0, Lcom/kingroot/kinguser/apg;->size:I

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/apg;->aHF:Ljava/util/Map;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/apg;)Lcom/kingroot/kinguser/apg$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/apg;->aHG:Lcom/kingroot/kinguser/apg$a;

    return-object v0
.end method

.method private aX(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 95
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setId(I)V

    .line 96
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->enable()V

    .line 97
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v2, Lcom/kingroot/kinguser/apg$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/apg$1;-><init>(Lcom/kingroot/kinguser/apg;Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v1
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/apg$a;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/apg;->aHG:Lcom/kingroot/kinguser/apg$a;

    .line 78
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public gc(I)Landroid/widget/ImageView;
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/apg;->aHF:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 60
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 64
    instance-of v5, v1, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 65
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    :goto_1
    return-object v0

    .line 62
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/apg;->size:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/apg;->aHF:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/apg;->aX(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/kingroot/kinguser/apg;->aHF:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 44
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
