.class Lcom/kingroot/kinguser/aus$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$3;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 843
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 845
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 847
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiv;->yD()V

    .line 849
    invoke-static {}, Lcom/kingroot/kinguser/ain;->xW()Lcom/kingroot/kinguser/ain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ain;->xX()V

    .line 850
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$3;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->g(Lcom/kingroot/kinguser/aus;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    .line 852
    if-nez v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootSdk;->loadRootEngine()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->cW(I)V

    goto :goto_0

    .line 864
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/aus$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aus$3$1;-><init>(Lcom/kingroot/kinguser/aus$3;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
