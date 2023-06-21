.class Lcom/kingroot/kinguser/ald$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ald$8;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awa:Lcom/kingroot/kinguser/ald$8;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ald$8;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/kingroot/kinguser/ald$8$1;->awa:Lcom/kingroot/kinguser/ald$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/ald$8$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/ald$8$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$8$1;->awa:Lcom/kingroot/kinguser/ald$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$8;->avU:Lcom/kingroot/kinguser/ald;

    invoke-static {v0}, Lcom/kingroot/kinguser/ald;->c(Lcom/kingroot/kinguser/ald;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 393
    iget-object v2, p0, Lcom/kingroot/kinguser/ald$8$1;->yz:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/ald$8$1;->awa:Lcom/kingroot/kinguser/ald$8;

    iget-object v3, v3, Lcom/kingroot/kinguser/ald$8;->avU:Lcom/kingroot/kinguser/ald;

    invoke-static {v3}, Lcom/kingroot/kinguser/ald;->c(Lcom/kingroot/kinguser/ald;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/kingroot/kinguser/ald$8$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    iget-object v1, p0, Lcom/kingroot/kinguser/ald$8$1;->yz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 400
    :cond_1
    return-void
.end method
