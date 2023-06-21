.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBw:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->aBw:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->yz:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->yz:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->aBw:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;->aBv:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->aBw:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;->aBv:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->m(Lcom/kingroot/kinguser/ank;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 539
    :cond_0
    return-void
.end method
