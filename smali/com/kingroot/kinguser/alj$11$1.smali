.class Lcom/kingroot/kinguser/alj$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$11;->a(Lcom/kingroot/common/uilib/banner/BannerView;Landroid/widget/ImageView;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axn:Landroid/widget/ImageView;

.field final synthetic axo:Lcom/kingroot/kinguser/alj$11;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$11;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$11$1;->axo:Lcom/kingroot/kinguser/alj$11;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$11$1;->axn:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/kingroot/kinguser/alj$11$1$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/alj$11$1$1;-><init>(Lcom/kingroot/kinguser/alj$11$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method
