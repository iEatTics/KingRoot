.class Lcom/kingroot/common/uilib/MainExpCircleView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpCircleView;->a(JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

.field final synthetic Og:Lcom/android/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpCircleView;Lcom/android/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpCircleView$3;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    iput-object p2, p0, Lcom/kingroot/common/uilib/MainExpCircleView$3;->Og:Lcom/android/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$3;->Og:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 208
    return-void
.end method
