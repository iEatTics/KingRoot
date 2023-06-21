.class Lcom/kingroot/kinguser/bxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bxn;


# instance fields
.field private final bTv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bxv$a;",
            ">;"
        }
    .end annotation
.end field

.field private final bTw:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bxq;->bTv:Ljava/util/List;

    .line 23
    const-string v0, "^/system/xbin/ku\\.sud$|^daemonsu:|^k_worker/[1-9]\\d*:[1-9]\\d*$|^kr_worker/[1-9]\\d*:[1-9]\\d*$|^km_worker/[1-9]\\d*:[1-9]\\d*$|^tworker/[1-9]\\d*:[1-9]\\d*$|^tu_worker/[1-9]\\d*:[1-9]\\d*$|^tq_worker/[1-9]\\d*:[1-9]\\d*$|^kworker/[1-9]\\d{2}$|^permmgrd$|^360sguard$|^/data/data/[\\w\\-\\.]+/|^/system/bin/\\.|^/system/xbin/\\.|^\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bxq;->bTw:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bxv$a;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/bxv$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iget v0, p1, Lcom/kingroot/kinguser/bxv$a;->uid:I

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget v0, p1, Lcom/kingroot/kinguser/bxv$a;->ppid:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bxq;->bTv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public ajG()Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bxq;->bTv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxv$a;

    .line 58
    iget-object v2, v0, Lcom/kingroot/kinguser/bxv$a;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/bxq;->bTw:Ljava/util/regex/Pattern;

    iget-object v0, v0, Lcom/kingroot/kinguser/bxv$a;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
