.class final Lcom/kingroot/kinguser/aki$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/aki;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Az()Lcom/kingroot/kinguser/aki;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 26
    .line 28
    :try_start_0
    const-class v0, Landroid/app/NotificationManager;

    const-string v1, "getService"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v0, Landroid/app/NotificationManager;

    const-string v1, "sService"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    .line 30
    new-instance v1, Lcom/kingroot/kinguser/aki;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/kingroot/kinguser/aki;-><init>(Landroid/app/INotificationManager;Lcom/kingroot/kinguser/aki$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    const-class v0, Landroid/app/NotificationManager;

    const-string v2, "sService"

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/kingroot/kinguser/aki;->a(Lcom/kingroot/kinguser/aki;)Landroid/app/INotificationManager;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 36
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aki$1;->Az()Lcom/kingroot/kinguser/aki;

    move-result-object v0

    return-object v0
.end method
