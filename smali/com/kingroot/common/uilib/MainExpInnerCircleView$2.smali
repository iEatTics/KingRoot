.class Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpInnerCircleView;->a(IILcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

.field final synthetic OL:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

.field final synthetic OM:I

.field final synthetic ON:I


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpInnerCircleView;Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;II)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->OL:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iput-object p2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

    iput p3, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->OM:I

    iput p4, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->ON:I

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 310
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->OM:I

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;->ON:I

    invoke-interface {v0, v1, v2}, Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;->y(II)V

    .line 313
    :cond_0
    return-void
.end method
