.class Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;->biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;->biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;I)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;->biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;

    iput v1, v0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->bif:F

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;->biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;

    iput v1, v0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->big:F

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;->biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->a(Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;Z)Z

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView$1;->biu:Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/others/RefreshRankingView;->requestLayout()V

    .line 174
    return-void
.end method
