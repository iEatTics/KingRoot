.class Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/AdDownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aic:Lcom/kingroot/kinguser/activitys/AdDownloadActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/AdDownloadActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;->aic:Lcom/kingroot/kinguser/activitys/AdDownloadActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bU(Z)V

    .line 40
    new-instance v1, Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1$1;-><init>(Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;)V

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/afu;->vB()Lcom/kingroot/kinguser/afu;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/afu;->a(ZLcom/kingroot/kinguser/afu$a;)V

    .line 61
    monitor-enter v1

    .line 66
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 74
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
