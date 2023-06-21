.class Lcom/kingcore/uilib/RootStatusView$2$1$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RootStatusView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ci:Lcom/kingcore/uilib/RootStatusView$2$1;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RootStatusView$2$1;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView$2$1$1;->Ci:Lcom/kingcore/uilib/RootStatusView$2$1;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$2$1$1;->Ci:Lcom/kingcore/uilib/RootStatusView$2$1;

    iget-object v0, v0, Lcom/kingcore/uilib/RootStatusView$2$1;->Ch:Lcom/kingcore/uilib/RootStatusView$2;

    iget-object v0, v0, Lcom/kingcore/uilib/RootStatusView$2;->Cf:Lcom/kingcore/uilib/RootStatusView;

    iget-object v1, p0, Lcom/kingcore/uilib/RootStatusView$2$1$1;->Ci:Lcom/kingcore/uilib/RootStatusView$2$1;

    iget-object v1, v1, Lcom/kingcore/uilib/RootStatusView$2$1;->Ch:Lcom/kingcore/uilib/RootStatusView$2;

    iget-boolean v1, v1, Lcom/kingcore/uilib/RootStatusView$2;->Cg:Z

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/RootStatusView;->setIcon(Z)V

    .line 243
    return-void
.end method
