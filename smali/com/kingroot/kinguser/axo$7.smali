.class Lcom/kingroot/kinguser/axo$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 7
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 202
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 207
    :try_start_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 214
    instance-of v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 217
    :cond_2
    :try_start_2
    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 218
    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 223
    :cond_3
    const/4 v3, 0x0

    .line 225
    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 227
    :goto_1
    if-nez v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    .line 232
    :cond_4
    :try_start_4
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 234
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/aff;->V(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    move v2, v0

    .line 241
    :goto_3
    if-eqz v2, :cond_5

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v1}, Lcom/kingroot/kinguser/axo;->c(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbt;->addAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V

    .line 246
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->checkAppRules()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 234
    goto :goto_2

    .line 237
    :cond_7
    :try_start_5
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fb(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    goto :goto_3

    .line 248
    :catch_1
    move-exception v0

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo$7;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method
