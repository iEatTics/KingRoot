.class Lcom/applisto/appcloner/classes/NotificationOptions$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/NotificationOptions;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/NotificationOptions;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/NotificationOptions;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    .line 807
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 809
    invoke-static {}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$400()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    const-string v0, "id"

    const/4 v1, 0x0

    .line 792
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 793
    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$000(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-eqz v0, :cond_1

    const-string v1, "notification"

    .line 798
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 799
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 801
    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$100(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 803
    iget-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v2}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$200(Lcom/applisto/appcloner/classes/NotificationOptions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 805
    :cond_0
    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;

    invoke-direct {v1, p1, p2, v0}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;-><init>(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 812
    iget-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$200(Lcom/applisto/appcloner/classes/NotificationOptions;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$300(Lcom/applisto/appcloner/classes/NotificationOptions;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    iget-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions$1;->this$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$100(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 817
    invoke-static {}, Lcom/applisto/appcloner/classes/NotificationOptions;->access$400()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
