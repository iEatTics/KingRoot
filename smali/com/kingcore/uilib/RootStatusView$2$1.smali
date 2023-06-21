.class Lcom/kingcore/uilib/RootStatusView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RootStatusView$2;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ch:Lcom/kingcore/uilib/RootStatusView$2;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RootStatusView$2;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView$2$1;->Ch:Lcom/kingcore/uilib/RootStatusView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$2$1;->Ch:Lcom/kingcore/uilib/RootStatusView$2;

    iget-object v0, v0, Lcom/kingcore/uilib/RootStatusView$2;->Cf:Lcom/kingcore/uilib/RootStatusView;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingcore/uilib/RootStatusView$2$1$1;

    invoke-direct {v2, p0}, Lcom/kingcore/uilib/RootStatusView$2$1$1;-><init>(Lcom/kingcore/uilib/RootStatusView$2$1;)V

    invoke-static {v0, v1, v2}, Lcom/kingcore/uilib/RootStatusView;->a(Lcom/kingcore/uilib/RootStatusView;ZLcom/android/animation/Animator$AnimatorListener;)V

    .line 245
    return-void
.end method
