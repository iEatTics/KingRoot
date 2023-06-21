.class Lcom/kingcore/uilib/CircleWithButton$2$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ar:Lcom/kingcore/uilib/CircleWithButton$2;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton$2;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$2$2;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 382
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$2$2;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v0, v0, Lcom/kingcore/uilib/CircleWithButton$2;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kingcore/uilib/CircleWithButton$2$2;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v1, v1, Lcom/kingcore/uilib/CircleWithButton$2;->Ap:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton$2$2;->Ar:Lcom/kingcore/uilib/CircleWithButton$2;

    iget-object v2, v2, Lcom/kingcore/uilib/CircleWithButton$2;->Aq:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    return-void
.end method
