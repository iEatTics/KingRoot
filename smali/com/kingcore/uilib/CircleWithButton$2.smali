.class Lcom/kingcore/uilib/CircleWithButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton;->setCentreViewDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic An:Lcom/kingcore/uilib/CircleWithButton;

.field final synthetic Ap:Landroid/widget/ImageView;

.field final synthetic Aq:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    iput-object p2, p0, Lcom/kingcore/uilib/CircleWithButton$2;->Ap:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/kingcore/uilib/CircleWithButton$2;->Aq:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$2$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$2$1;-><init>(Lcom/kingcore/uilib/CircleWithButton$2;)V

    invoke-static {v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$2$2;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$2$2;-><init>(Lcom/kingcore/uilib/CircleWithButton$2;)V

    invoke-static {v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->b(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    goto :goto_0
.end method
