.class Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/afu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aid:Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1$1;->aid:Lcom/kingroot/kinguser/activitys/AdDownloadActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cT(I)V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
