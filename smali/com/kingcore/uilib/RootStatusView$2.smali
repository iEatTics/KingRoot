.class Lcom/kingcore/uilib/RootStatusView$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RootStatusView;->u(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cf:Lcom/kingcore/uilib/RootStatusView;

.field final synthetic Cg:Z


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RootStatusView;Z)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView$2;->Cf:Lcom/kingcore/uilib/RootStatusView;

    iput-boolean p2, p0, Lcom/kingcore/uilib/RootStatusView$2;->Cg:Z

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$2;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RootStatusView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v1, Lcom/kingcore/uilib/RootStatusView$2$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RootStatusView$2$1;-><init>(Lcom/kingcore/uilib/RootStatusView$2;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
