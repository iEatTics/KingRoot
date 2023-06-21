.class public Lcom/kingroot/kinguser/aaq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aaq$a;
    }
.end annotation


# static fields
.field private static It:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/kingroot/kinguser/aaq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aaq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aaq;->It:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/aaq$a;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/aaq$a;->ab(Z)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    if-eqz p1, :cond_2

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    sget-object v1, Lcom/kingroot/kinguser/aaq;->It:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    goto :goto_0
.end method

.method public static dM(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aaq;->a(Ljava/lang/String;Lcom/kingroot/kinguser/aaq$a;)V

    .line 64
    return-void
.end method

.method private static dN(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a2t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    return v0
.end method

.method static synthetic dO(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/kingroot/kinguser/aaq;->dN(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
