.class Lcom/kingroot/kinguser/axi$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axi$7;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZc:Lcom/kingroot/kinguser/axi$7;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axi$7;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iput-object p2, p0, Lcom/kingroot/kinguser/axi$7$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/axi$7$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->yz:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$7$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->e(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->e(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->f(Lcom/kingroot/kinguser/axi;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->e(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$7$1;->yz:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$7$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->g(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->g(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->h(Lcom/kingroot/kinguser/axi;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$7$1;->aZc:Lcom/kingroot/kinguser/axi$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/axi$7;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->g(Lcom/kingroot/kinguser/axi;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
