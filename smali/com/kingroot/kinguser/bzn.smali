.class public Lcom/kingroot/kinguser/bzn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bVL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/cch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzn;->bVL:Ljava/util/HashMap;

    return-void
.end method

.method public static V(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/cch;
    .locals 3

    .prologue
    .line 56
    sget-object v1, Lcom/kingroot/kinguser/bzn;->bVL:Ljava/util/HashMap;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bzn;->bVL:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cch;

    .line 59
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/bzm;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/kingroot/kinguser/bzm;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 62
    sget-object v2, Lcom/kingroot/kinguser/bzn;->bVL:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
