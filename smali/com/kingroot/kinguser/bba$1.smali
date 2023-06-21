.class Lcom/kingroot/kinguser/bba$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bba;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Hs:Landroid/content/Intent;

.field final synthetic bey:Lcom/kingroot/kinguser/bba;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bba;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/bba$1;->bey:Lcom/kingroot/kinguser/bba;

    iput-object p2, p0, Lcom/kingroot/kinguser/bba$1;->Hs:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 58
    iget-object v4, p0, Lcom/kingroot/kinguser/bba$1;->Hs:Landroid/content/Intent;

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/ajn;->zp()Lcom/kingroot/kinguser/ajn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/ajn;->zq()V

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v12}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/bbt;->checkAppRules()V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->jS()V

    .line 72
    iget-object v5, p0, Lcom/kingroot/kinguser/bba$1;->Hs:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v12

    .line 77
    :cond_1
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/bed;

    sget-object v8, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v10, Lcom/kingroot/kinguser/bba$1$1;

    invoke-direct {v10, p0}, Lcom/kingroot/kinguser/bba$1$1;-><init>(Lcom/kingroot/kinguser/bba$1;)V

    invoke-direct {v7, v8, v9, v1, v10}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 89
    :cond_3
    iget-object v6, p0, Lcom/kingroot/kinguser/bba$1;->Hs:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 90
    if-eqz v6, :cond_0

    .line 93
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 100
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v0, v1

    .line 107
    :cond_4
    :goto_1
    if-eq v0, v3, :cond_5

    .line 108
    new-instance v7, Lcom/kingroot/kinguser/ajx;

    invoke-direct {v7}, Lcom/kingroot/kinguser/ajx;-><init>()V

    invoke-virtual {v7, v6, v0}, Lcom/kingroot/kinguser/ajx;->u(Ljava/lang/String;I)V

    .line 111
    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 113
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v7

    new-instance v8, Lcom/kingroot/kinguser/bed;

    sget-object v9, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v10, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v11, Lcom/kingroot/kinguser/bba$1$2;

    invoke-direct {v11, p0}, Lcom/kingroot/kinguser/bba$1$2;-><init>(Lcom/kingroot/kinguser/bba$1;)V

    invoke-direct {v8, v9, v10, v1, v11}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 127
    :cond_7
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v4, :cond_8

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/bba;->Wc()Lcom/kingroot/kinguser/bba$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/bba$a;->ff(Ljava/lang/String;)Z

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/bba;->Wc()Lcom/kingroot/kinguser/bba$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bba$a;->ny()Z

    .line 133
    :cond_8
    if-nez v4, :cond_0

    if-eqz v0, :cond_9

    if-ne v0, v2, :cond_0

    .line 134
    :cond_9
    iget-object v1, p0, Lcom/kingroot/kinguser/bba$1;->Hs:Landroid/content/Intent;

    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Lcom/kingroot/kinguser/ajv;->d(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_a
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 104
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 105
    goto :goto_1

    :cond_b
    move v0, v3

    goto :goto_1
.end method
