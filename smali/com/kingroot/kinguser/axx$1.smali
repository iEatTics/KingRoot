.class Lcom/kingroot/kinguser/axx$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcp:Lcom/kingroot/kinguser/axx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axx;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 193
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v0}, Lcom/kingroot/kinguser/axx;->a(Lcom/kingroot/kinguser/axx;)Lcom/kingroot/kinguser/akc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {}, Lcom/kingroot/kinguser/akc;->Ai()Lcom/kingroot/kinguser/akc;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axx;->a(Lcom/kingroot/kinguser/axx;Lcom/kingroot/kinguser/akc;)Lcom/kingroot/kinguser/akc;

    .line 200
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v2}, Lcom/kingroot/kinguser/axx;->a(Lcom/kingroot/kinguser/axx;)Lcom/kingroot/kinguser/akc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/akc;->Ak()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    if-eqz v1, :cond_3

    .line 205
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v4}, Lcom/kingroot/kinguser/axx;->b(Lcom/kingroot/kinguser/axx;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/axx;->a(Lcom/kingroot/kinguser/axx;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v4}, Lcom/kingroot/kinguser/axx;->b(Lcom/kingroot/kinguser/axx;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v4}, Lcom/kingroot/kinguser/axx;->a(Lcom/kingroot/kinguser/axx;)Lcom/kingroot/kinguser/akc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/akc;->gF(Ljava/lang/String;)V

    .line 211
    :cond_2
    iget-object v4, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-static {v4}, Lcom/kingroot/kinguser/axx;->b(Lcom/kingroot/kinguser/axx;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 216
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    new-instance v5, Lcom/kingroot/kinguser/afk;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v4, v0}, Lcom/kingroot/kinguser/afk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axx$1;->bcp:Lcom/kingroot/kinguser/axx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axx;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 228
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method
