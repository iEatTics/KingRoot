.class Lcom/kingroot/kinguser/aus$2;
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
    .line 801
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$2;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 804
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 806
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 808
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiv;->yD()V

    .line 810
    invoke-static {}, Lcom/kingroot/kinguser/ain;->xW()Lcom/kingroot/kinguser/ain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ain;->xX()V

    .line 811
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$2;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->g(Lcom/kingroot/kinguser/aus;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    .line 813
    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootSdk;->loadRootEngine()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18765

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 822
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->cW(I)V

    goto :goto_0

    .line 825
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18766

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 828
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->checkCanRoot()Lcloudsdk/ext/kr/RootInfo;

    move-result-object v0

    .line 829
    new-instance v1, Lcom/kingroot/kinguser/aus$2$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/aus$2$1;-><init>(Lcom/kingroot/kinguser/aus$2;Lcloudsdk/ext/kr/RootInfo;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
