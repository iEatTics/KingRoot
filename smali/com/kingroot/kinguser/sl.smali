.class public Lcom/kingroot/kinguser/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static GF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/sk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/sl;->GF:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/kingroot/kinguser/sl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/sl;->GF:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/sk;

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/kingroot/kinguser/sl;->cI(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 27
    sget-object v2, Lcom/kingroot/kinguser/sl;->GF:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static cI(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    .line 35
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    invoke-static {p0}, Lcom/kingroot/kinguser/sp;->cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/sm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/sm;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
