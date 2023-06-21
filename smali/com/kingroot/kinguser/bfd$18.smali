.class Lcom/kingroot/kinguser/bfd$18;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 325
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 327
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atu;->v(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atu;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->b(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bfd;->c(Lcom/kingroot/kinguser/bfd;I)I

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 334
    if-nez v0, :cond_1

    .line 336
    new-instance v0, Lcom/kingroot/kinguser/bfd$18$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bfd$18$1;-><init>(Lcom/kingroot/kinguser/bfd$18;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 344
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$18;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    goto :goto_0

    .line 354
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/bfd$18$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bfd$18$2;-><init>(Lcom/kingroot/kinguser/bfd$18;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
