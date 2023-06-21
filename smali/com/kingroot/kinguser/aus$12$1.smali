.class Lcom/kingroot/kinguser/aus$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aji$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSH:Lcom/kingroot/kinguser/aus$12;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus$12;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$12$1;->aSH:Lcom/kingroot/kinguser/aus$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dR(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$12$1;->aSH:Lcom/kingroot/kinguser/aus$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$12;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aus;->a(Lcom/kingroot/kinguser/aus;Z)Z

    .line 752
    packed-switch p1, :pswitch_data_0

    .line 764
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bap;->VF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bG(Z)V

    .line 767
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->es(I)V

    .line 772
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$12$1;->aSH:Lcom/kingroot/kinguser/aus$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$12;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->f(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$12$1;->aSH:Lcom/kingroot/kinguser/aus$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$12;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->f(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 774
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    return-void

    .line 755
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bG(Z)V

    .line 756
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->es(I)V

    goto :goto_1

    .line 759
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bH(Z)V

    goto :goto_0

    .line 774
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
