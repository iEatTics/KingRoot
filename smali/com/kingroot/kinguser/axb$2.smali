.class Lcom/kingroot/kinguser/axb$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXk:Lcom/kingroot/kinguser/axb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axb;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 208
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 209
    new-instance v2, Lcom/kingroot/kinguser/afl;

    iget-object v0, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/afl;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_5

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    const-wide/32 v4, 0x7f070355

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/axb;->V(J)Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    const-wide/32 v6, 0x7f0703b2

    invoke-virtual {v0, v6, v7}, Lcom/kingroot/kinguser/axb;->V(J)Ljava/lang/String;

    move-result-object v5

    .line 218
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_2

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 222
    iget-object v7, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v7}, Lcom/kingroot/kinguser/axb;->c(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/akd;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/akd;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 226
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/afl;->d(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 229
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    new-instance v8, Lcom/kingroot/kinguser/afk;

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Lcom/kingroot/kinguser/afk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 233
    iput-object v4, v8, Lcom/kingroot/kinguser/afk;->mDescription:Ljava/lang/String;

    .line 237
    :goto_1
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    iput-object v5, v8, Lcom/kingroot/kinguser/afk;->mDescription:Ljava/lang/String;

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v0}, Lcom/kingroot/kinguser/axb;->a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v0}, Lcom/kingroot/kinguser/axb;->a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axb$b;->ab(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 246
    :goto_2
    new-instance v1, Lcom/kingroot/kinguser/axb$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/axb$a;-><init>()V

    .line 247
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    iget-object v1, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v1}, Lcom/kingroot/kinguser/axb;->a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v1}, Lcom/kingroot/kinguser/axb;->a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/axb$b;->ac(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 256
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/kingroot/kinguser/axb$2;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axb;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 257
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 259
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method
