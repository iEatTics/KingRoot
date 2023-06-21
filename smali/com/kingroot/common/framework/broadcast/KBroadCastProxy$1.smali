.class public final Lcom/kingroot/common/framework/broadcast/KBroadCastProxy$1;
.super Lcom/kingroot/common/framework/broadcast/IBroadCastServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/tg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/common/framework/broadcast/IBroadCastServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/th;

    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/th;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0
.end method
