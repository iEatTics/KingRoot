.class public Lcom/kingroot/kinguser/bjf;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjf$a;
    }
.end annotation


# instance fields
.field private akz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/bjf$a;",
            ">;"
        }
    .end annotation
.end field

.field private bwx:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bjf$a;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bjf;->bwx:I

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjf;->akz:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjf;)Lcom/kingroot/common/utils/ui/ImageViewDot;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bjf;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjf;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjf;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjf;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bjf;->akz:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private r(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 56
    new-instance v1, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/bjf;->bwx:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f070082

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjf;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 62
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 64
    new-instance v0, Lcom/kingroot/kinguser/bjf$2;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bjf$2;-><init>(Lcom/kingroot/kinguser/bjf;Lcom/kingroot/kinguser/aic;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aic;->show()V

    .line 90
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f070083

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public jn(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/kingroot/kinguser/bjf;->bwx:I

    .line 53
    return-void
.end method

.method protected oI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjf;->ar(Z)V

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjf;->c(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bjf;->aq(Z)V

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/bjf$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjf$1;-><init>(Lcom/kingroot/kinguser/bjf;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjf;->b(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjf;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method
