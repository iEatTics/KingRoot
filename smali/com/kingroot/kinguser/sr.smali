.class public Lcom/kingroot/kinguser/sr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/sr$b;,
        Lcom/kingroot/kinguser/sr$a;
    }
.end annotation


# static fields
.field private static GF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/sr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/sr;->GF:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized h(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 45
    const-class v1, Lcom/kingroot/kinguser/sr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    .line 46
    const/4 v2, 0x2

    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 51
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/sr;->GF:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/sr$a;

    .line 52
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/kingroot/kinguser/sr$a;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/sr$a;-><init>(Ljava/lang/String;)V

    .line 54
    sget-object v2, Lcom/kingroot/kinguser/sr;->GF:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
