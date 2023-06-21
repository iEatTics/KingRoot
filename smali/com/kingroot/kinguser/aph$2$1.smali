.class Lcom/kingroot/kinguser/aph$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aph$2;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHM:Lcom/kingroot/kinguser/aph$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aph$2;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/aph$2$1;->aHM:Lcom/kingroot/kinguser/aph$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/aph$2$1;->yz:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/aph$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$1;->aHM:Lcom/kingroot/kinguser/aph$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2;->aHJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/aph$2$1;->yz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$1;->aHM:Lcom/kingroot/kinguser/aph$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2;->Ap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aph$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$1;->aHM:Lcom/kingroot/kinguser/aph$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2;->Ap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aph$2$1;->yz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$1;->aHM:Lcom/kingroot/kinguser/aph$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2;->Ap:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/kingroot/kinguser/aph$2$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aph$2$1$1;-><init>(Lcom/kingroot/kinguser/aph$2$1;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 58
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 59
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 62
    :cond_0
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
