.class Lcom/kingroot/kinguser/aoe$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoe$2;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFh:Lcom/kingroot/kinguser/aoe$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoe$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingroot/kinguser/aoe$2$1;->aFh:Lcom/kingroot/kinguser/aoe$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/aoe$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$2$1;->aFh:Lcom/kingroot/kinguser/aoe$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoe$2;->aFg:Lcom/kingroot/kinguser/aoe;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoe$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoe$2$1;->aFh:Lcom/kingroot/kinguser/aoe$2;

    iget-object v2, v2, Lcom/kingroot/kinguser/aoe$2;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoe;->b(Lcom/kingroot/kinguser/aoe;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aoe;->a(Lcom/kingroot/kinguser/aoe;Landroid/graphics/Bitmap;Landroid/view/ViewGroup;)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$2$1;->aFh:Lcom/kingroot/kinguser/aoe$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aoe$2;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->c(Lcom/kingroot/kinguser/aoe;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoe$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    return-void
.end method
