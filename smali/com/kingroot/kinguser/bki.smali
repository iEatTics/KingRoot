.class public Lcom/kingroot/kinguser/bki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/kingroot/kinguser/bki;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bki;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 5

    .prologue
    .line 65
    sget-boolean v0, Lcom/kingroot/kinguser/bki;->a:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->aiH()Lcom/kingroot/kinguser/bwb$a;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    sget-object v1, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    .line 76
    sget-object v1, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/kingroot/kinguser/bwb$a;->xt:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeF()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    const-string v1, "-------Support Host--------"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/by;

    .line 84
    sget-object v2, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/kingroot/kinguser/by;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/kingroot/kinguser/by;->lp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/kingroot/kinguser/by;->lq:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read support msg, err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bki;->a:Z

    goto/16 :goto_0

    .line 86
    :cond_2
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    const-string v1, "------------------------------"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_3
    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/bki;->a:Z

    goto/16 :goto_0

    .line 88
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    const-string v1, "support host list is null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    const-string v1, "MeriAppGen.getMeriAppBase() is null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static aeK()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/bki;->a()V

    .line 59
    sget-object v0, Lcom/kingroot/kinguser/bki;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b(Lcom/kingroot/loader/sdk/KlInfo;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->il()I

    move-result v0

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->aiG()I

    move-result v2

    .line 28
    sget-object v3, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportKl, Pi["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] isSupport ? Host id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | ver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget v3, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    if-ne v2, v0, :cond_0

    .line 31
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportKl, Pi["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] isSupport? true, matches current host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 35
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bki;->aeK()Ljava/util/ArrayList;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/by;

    .line 38
    sget-object v3, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportKl, Pi["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] isSupport? Support host id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kingroot/kinguser/by;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | ver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kingroot/kinguser/by;->lp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/kingroot/kinguser/by;->lq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget v3, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    iget v4, v0, Lcom/kingroot/kinguser/by;->id:I

    if-ne v3, v4, :cond_1

    .line 41
    iget v3, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    iget v4, v0, Lcom/kingroot/kinguser/by;->lp:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    iget v0, v0, Lcom/kingroot/kinguser/by;->lq:I

    if-gt v3, v0, :cond_1

    .line 44
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportKl, Pi["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] isSupport? true, matches support host list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 45
    goto/16 :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/bki;->b:Ljava/lang/String;

    const-string v1, "isSupportKl, support host list is empty"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
