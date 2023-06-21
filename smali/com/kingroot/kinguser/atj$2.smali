.class Lcom/kingroot/kinguser/atj$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atj;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kingroot/kinguser/atj$2;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v5

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/atj$2;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atj;->a(Lcom/kingroot/kinguser/atj;I)I

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v6

    .line 187
    if-nez v6, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/16 v0, 0x40

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 199
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    .line 200
    :goto_2
    if-nez v1, :cond_2

    .line 205
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/kingroot/kinguser/atj$2;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v1}, Lcom/kingroot/kinguser/atj;->b(Lcom/kingroot/kinguser/atj;)Landroid/content/Context;

    move-result-object v1

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/kingroot/kinguser/atu;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/akf;->gI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v8, Lcom/kingroot/kinguser/asr;

    invoke-direct {v8, v1, v0}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v1, v3

    .line 199
    goto :goto_2

    .line 225
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/atj$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atj$a;-><init>()V

    .line 226
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/atj$2;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atj;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 229
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
