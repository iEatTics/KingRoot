.class Lcom/kingroot/kinguser/alj$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$14;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axr:Lcom/kingroot/kinguser/alj$14;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$14;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$14$1;->axr:Lcom/kingroot/kinguser/alj$14;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$14$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$14$1;->axr:Lcom/kingroot/kinguser/alj$14;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$14;->axj:Lcom/kingroot/common/uilib/ShapedImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$14$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/ShapedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    return-void
.end method
