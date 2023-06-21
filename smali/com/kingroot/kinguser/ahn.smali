.class public Lcom/kingroot/kinguser/ahn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ahn$a;
    }
.end annotation


# direct methods
.method public static xu()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    move v1, v3

    .line 63
    :goto_0
    return v1

    .line 30
    :cond_0
    const-string v2, "currentActivityThread"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/kingroot/kinguser/aam;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    move v1, v3

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    const-string v5, "mH"

    invoke-static {v1, v5, v2}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 37
    if-nez v5, :cond_2

    move v1, v3

    .line 39
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SCHEDULE_CRASH"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aam;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_4

    :cond_3
    move v1, v3

    .line 44
    goto :goto_0

    .line 48
    :cond_4
    const-class v2, Landroid/os/Handler;

    const-string v6, "mCallback"

    invoke-static {v2, v6, v5}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 53
    if-eqz v2, :cond_5

    .line 54
    move-object v0, v2

    check-cast v0, Landroid/os/Handler$Callback;

    move-object v1, v0

    .line 56
    :goto_1
    new-instance v2, Lcom/kingroot/kinguser/ahn$a;

    invoke-direct {v2, v1, v6}, Lcom/kingroot/kinguser/ahn$a;-><init>(Landroid/os/Handler$Callback;I)V

    .line 57
    const-class v1, Landroid/os/Handler;

    const-string v4, "mCallback"

    invoke-static {v1, v4, v5, v2}, Lcom/kingroot/kinguser/aam;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    move v1, v3

    .line 63
    goto :goto_0

    :cond_5
    move-object v1, v4

    goto :goto_1
.end method
