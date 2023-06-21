.class Lcom/kingcore/uilib/ExpandableTextView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/ExpandableTextView;->gH()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AM:Lcom/kingcore/uilib/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/kingcore/uilib/ExpandableTextView$3;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$3;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    iget-object v0, p0, Lcom/kingcore/uilib/ExpandableTextView$3;->AM:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method
