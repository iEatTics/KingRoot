.class Lcom/kingroot/common/uilib/banner/BannerView$1;
.super Lcom/kingroot/kinguser/xa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TG:Lcom/kingroot/common/uilib/banner/BannerView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView$1;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/xa;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$1;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->a(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$1;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->a(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/common/uilib/banner/BannerView$d;->ov()V

    .line 103
    :cond_0
    return-void
.end method
