.class public Lcom/kingroot/kinguser/ku;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ur:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ku;->ur:Ljava/util/HashMap;

    .line 20
    sget-object v0, Lcom/kingroot/kinguser/ku;->ur:Ljava/util/HashMap;

    const-string v1, "com.kingroot.kinguser"

    const-string v2, "105511"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/kingroot/kinguser/ku;->ur:Ljava/util/HashMap;

    const-string v1, "com.kingroot.master"

    const-string v2, "105512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/kingroot/kinguser/ku;->ur:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqpimsecure"

    const-string v2, "105513"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static aS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/kingroot/kinguser/ku;->ur:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v0, "105510"

    .line 45
    :cond_0
    return-object v0
.end method
