.class public Lcom/kingroot/kinguser/yc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static UR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/yd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "ui_skin_AttrFactory"

    sput-object v0, Lcom/kingroot/kinguser/yc;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/yc;->UR:Ljava/util/HashMap;

    .line 21
    sget-object v0, Lcom/kingroot/kinguser/yc;->UR:Ljava/util/HashMap;

    const-string v1, "background"

    new-instance v2, Lcom/kingroot/kinguser/xz;

    invoke-direct {v2}, Lcom/kingroot/kinguser/xz;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/kingroot/kinguser/yc;->UR:Ljava/util/HashMap;

    const-string v1, "textColor"

    new-instance v2, Lcom/kingroot/kinguser/yb;

    invoke-direct {v2}, Lcom/kingroot/kinguser/yb;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/kingroot/kinguser/yc;->UR:Ljava/util/HashMap;

    const-string v1, "src"

    new-instance v2, Lcom/kingroot/kinguser/ya;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ya;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/yd;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/kinguser/yc;->UR:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yd;->oA()Lcom/kingroot/kinguser/yd;

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    iput-object p0, v0, Lcom/kingroot/kinguser/yd;->US:Ljava/lang/String;

    .line 32
    iput p1, v0, Lcom/kingroot/kinguser/yd;->UT:I

    .line 33
    iput-object p2, v0, Lcom/kingroot/kinguser/yd;->UU:Ljava/lang/String;

    .line 34
    iput-object p3, v0, Lcom/kingroot/kinguser/yd;->UV:Ljava/lang/String;

    goto :goto_0
.end method

.method public static dr(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kingroot/kinguser/yc;->UR:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
