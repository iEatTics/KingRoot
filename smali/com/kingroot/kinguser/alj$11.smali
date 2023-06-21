.class Lcom/kingroot/kinguser/alj$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/uilib/banner/BannerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/common/uilib/banner/BannerView$a",
        "<",
        "Landroid/widget/ImageView;",
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$11;->axi:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/kingroot/common/uilib/banner/BannerView;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 262
    check-cast p2, Landroid/widget/ImageView;

    check-cast p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/alj$11;->a(Lcom/kingroot/common/uilib/banner/BannerView;Landroid/widget/ImageView;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;I)V

    return-void
.end method

.method public a(Lcom/kingroot/common/uilib/banner/BannerView;Landroid/widget/ImageView;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;I)V
    .locals 3

    .prologue
    .line 267
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/alj$11$1;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/alj$11$1;-><init>(Lcom/kingroot/kinguser/alj$11;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 285
    return-void
.end method
