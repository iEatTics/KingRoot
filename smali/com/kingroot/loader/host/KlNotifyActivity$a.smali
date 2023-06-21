.class Lcom/kingroot/loader/host/KlNotifyActivity$a;
.super Lcom/kingroot/kinguser/bkv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/host/KlNotifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private byV:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/kingroot/kinguser/bkv;-><init>()V

    .line 106
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/host/KlNotifyActivity$a;->byV:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/loader/host/KlNotifyActivity$1;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/kingroot/loader/host/KlNotifyActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method o(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return v0

    .line 203
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/loader/host/KlNotifyActivity$a;->byV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    invoke-static {v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 113
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/loader/host/KlNotifyActivity$a;->byV:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 114
    if-nez v0, :cond_1

    .line 197
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Process intent"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "com.kingroot.loader.plugin_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 122
    if-ne v4, v9, :cond_2

    .line 123
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must specify plugin id!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "com.kingroot.loader.fragment_start_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 130
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-class v1, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v1}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    .line 134
    invoke-interface {v1, v4}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v2

    .line 135
    if-nez v2, :cond_a

    .line 136
    invoke-interface {v1, v4}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->launchPlugin(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Try launch plugin fail!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-interface {v1, v4}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 151
    :goto_1
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    invoke-virtual {v3}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getMainKlFragmentClass()Ljava/lang/Class;

    move-result-object v2

    .line 153
    if-nez v2, :cond_4

    .line 154
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No main fragment!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v6, "com.kingroot.loader.fragment_name"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment class = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 169
    :goto_2
    const/4 v1, 0x0

    .line 170
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/kingroot/kinguser/bko;->B(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->vt()Landroid/app/Activity;

    move-result-object v1

    .line 176
    :cond_5
    if-nez v1, :cond_6

    .line 177
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v5, "use application context and add FLAG_ACTIVITY_NEW_TASK"

    invoke-static {v1, v5}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v1

    .line 179
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    :cond_6
    const-string v5, "com.kingroot.loader.argv"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 184
    if-eqz v5, :cond_7

    .line 185
    const-string v6, "com.kingroot.loader.argv"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 191
    :cond_7
    invoke-virtual {v3, v2}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getLaunchMode(Ljava/lang/String;)I

    move-result v3

    .line 190
    invoke-static {v4, v2, v3}, Lcom/kingroot/kinguser/bke;->f(ILjava/lang/String;I)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :cond_8
    const-string v1, "com.kingroot.loader.fragment_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 163
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, " Must specify fragment entry!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_9
    invoke-static {}, Lcom/kingroot/loader/host/KlNotifyActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_2

    :cond_a
    move-object v3, v2

    goto/16 :goto_1
.end method
