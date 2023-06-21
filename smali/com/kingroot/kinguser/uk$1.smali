.class final Lcom/kingroot/kinguser/uk$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/uk;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 155
    array-length v2, v2

    if-gtz v2, :cond_0

    .line 158
    new-instance v2, Landroid/accounts/Account;

    invoke-static {}, Lcom/kingroot/kinguser/uk;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/uk;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/uk;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 168
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/uk;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/uk;->kC()J

    move-result-wide v4

    invoke-static {v2, v0, v1, v4, v5}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
