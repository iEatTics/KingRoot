.class Lcom/applisto/appcloner/classes/LogcatViewer$2;
.super Ljava/lang/Thread;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/LogcatViewer;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/LogcatViewer;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$2;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 112
    iget-object v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$2;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$400(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    .line 113
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    goto :goto_2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
