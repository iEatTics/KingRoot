.class Lcom/kingroot/kinguser/ali$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ali$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awY:Lcom/kingroot/kinguser/ali$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ali$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingroot/kinguser/ali$1$1;->awY:Lcom/kingroot/kinguser/ali$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/ali$1$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/ali$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/ali$1$1;->yz:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/ali$1$1;->awY:Lcom/kingroot/kinguser/ali$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ali$1;->awX:Lcom/kingroot/kinguser/ali;

    invoke-static {v0}, Lcom/kingroot/kinguser/ali;->a(Lcom/kingroot/kinguser/ali;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ali$1$1;->awY:Lcom/kingroot/kinguser/ali$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/ali$1;->awW:Lcom/kingroot/kinguser/ali$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/ali$a;->afU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/kingroot/kinguser/ali$1$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ali$1$1$1;-><init>(Lcom/kingroot/kinguser/ali$1$1;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method
