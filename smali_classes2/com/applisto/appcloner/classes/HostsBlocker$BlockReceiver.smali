.class public Lcom/applisto/appcloner/classes/HostsBlocker$BlockReceiver;
.super Lcom/applisto/appcloner/classes/HostsBlocker$HostReceiver;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/HostsBlocker$HostReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleHost(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 457
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockReceiver; handleHost; host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p2}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$400(Ljava/lang/String;)V

    .line 460
    invoke-static {p2}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$300(Ljava/lang/String;)V

    return-void
.end method
