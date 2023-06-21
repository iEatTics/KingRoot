.class Lcom/kingroot/kinguser/axt$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbB:Lcom/kingroot/kinguser/axt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axt;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 204
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 207
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-static {v2}, Lcom/kingroot/kinguser/axt;->a(Lcom/kingroot/kinguser/axt;)Lcom/kingroot/kinguser/akg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/akg;->Ak()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    iget-object v4, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-static {v4}, Lcom/kingroot/kinguser/axt;->b(Lcom/kingroot/kinguser/axt;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/axt;->a(Lcom/kingroot/kinguser/axt;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-static {v4}, Lcom/kingroot/kinguser/axt;->b(Lcom/kingroot/kinguser/axt;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v4, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-static {v4}, Lcom/kingroot/kinguser/axt;->a(Lcom/kingroot/kinguser/axt;)Lcom/kingroot/kinguser/akg;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/akg;->gF(Ljava/lang/String;)V

    .line 218
    :cond_1
    iget-object v4, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-static {v4}, Lcom/kingroot/kinguser/axt;->b(Lcom/kingroot/kinguser/axt;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 228
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    const-string v6, "com.android.shell"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "com.android.shell"

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070345

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    const v6, 0x7f0202bd

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 236
    new-instance v6, Lcom/kingroot/kinguser/afk;

    invoke-direct {v6, v4, v0, v5}, Lcom/kingroot/kinguser/afk;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/afk;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Lcom/kingroot/kinguser/afk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axt$2;->bbB:Lcom/kingroot/kinguser/axt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axt;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void

    .line 224
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
