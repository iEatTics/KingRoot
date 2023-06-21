.class Lcom/kingroot/kinguser/bjo$b;
.super Lcom/kingroot/kinguser/wr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field ajB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bxv:Lcom/kingroot/kinguser/bjo;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bjo;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$b;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/bjo$1;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjo$b;-><init>(Lcom/kingroot/kinguser/bjo;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$b;->ajB:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$b;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjo$b;->jo(I)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 495
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjo$b;->jo(I)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    move-result-object v2

    .line 502
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 503
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/aey$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aey$a;-><init>()V

    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$b;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030049

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 506
    const v0, 0x7f0f0148

    .line 507
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aey$a;->afU:Landroid/widget/ImageView;

    .line 508
    const v0, 0x7f0f00d1

    .line 509
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aey$a;->age:Landroid/widget/TextView;

    .line 510
    const v0, 0x7f0f014a

    .line 511
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aey$a;->afW:Landroid/widget/TextView;

    .line 512
    const v0, 0x7f0f0149

    .line 513
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aey$a;->afY:Landroid/widget/TextView;

    move-object v0, v1

    .line 519
    :goto_0
    iget-object v1, v0, Lcom/kingroot/kinguser/aey$a;->age:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo$b;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    .line 523
    if-eqz v1, :cond_1

    .line 524
    iget-object v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingroot/kinguser/aey$a;->afU:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    const v6, 0x7f020110

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v1

    .line 528
    iget-object v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, v0, Lcom/kingroot/kinguser/aey$a;->afY:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_1
    iget-object v1, v0, Lcom/kingroot/kinguser/aey$a;->afW:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjo$b;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 536
    return-object p2

    .line 516
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aey$a;

    goto :goto_0

    .line 531
    :cond_3
    iget-object v1, v0, Lcom/kingroot/kinguser/aey$a;->afY:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjo$b;->bxv:Lcom/kingroot/kinguser/bjo;

    const-wide/32 v4, 0x7f070356

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public jo(I)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$b;->ajB:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$b;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 489
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$b;->ajB:Ljava/util/List;

    .line 474
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo$b;->notifyDataSetChanged()V

    .line 475
    return-void
.end method
