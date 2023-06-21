.class Lcom/kingcore/uilib/RootStatusView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RootStatusView;->a(ZLcom/android/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cf:Lcom/kingcore/uilib/RootStatusView;

.field final synthetic Cj:Lcom/android/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RootStatusView;Lcom/android/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView$3;->Cf:Lcom/kingcore/uilib/RootStatusView;

    iput-object p2, p0, Lcom/kingcore/uilib/RootStatusView$3;->Cj:Lcom/android/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$3;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RootStatusView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 272
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$3;->Cj:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method
