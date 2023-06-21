.class Lcom/kingroot/kinguser/alj$11$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj$11$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axp:Lcom/kingroot/kinguser/alj$11$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj$11$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$11$1$1;->axp:Lcom/kingroot/kinguser/alj$11$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$11$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$11$1$1;->axp:Lcom/kingroot/kinguser/alj$11$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$11$1;->axn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$11$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$11$1$1;->axp:Lcom/kingroot/kinguser/alj$11$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/alj$11$1;->axn:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 276
    return-void
.end method
