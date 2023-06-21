.class public Lcom/kingroot/kinguser/receiver/MediaMountedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 18
    if-nez p2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    const-string v0, "mounted"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgr;->lp(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_2
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const-string v0, "removed"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgr;->lp(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    const-string v0, "unmounted"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgr;->lp(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_4
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    const-string v0, "checking"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgr;->lp(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_5
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "bad_removal"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgr;->lp(Ljava/lang/String;)V

    goto :goto_0
.end method
