.class Lcom/kingroot/kinguser/alj$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field public axw:Lcom/kingroot/common/uilib/banner/BannerView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 598
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$c;->axi:Lcom/kingroot/kinguser/alj;

    .line 599
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 600
    instance-of v0, p2, Lcom/kingroot/common/uilib/banner/BannerView;

    if-eqz v0, :cond_0

    .line 601
    check-cast p2, Lcom/kingroot/common/uilib/banner/BannerView;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    .line 602
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$c;->axw:Lcom/kingroot/common/uilib/banner/BannerView;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerView;->setAutoPlayInterval(I)V

    .line 604
    :cond_0
    return-void
.end method
