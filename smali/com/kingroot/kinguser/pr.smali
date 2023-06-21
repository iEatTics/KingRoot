.class Lcom/kingroot/kinguser/pr;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic val$id:I

.field final synthetic yF:Lcom/kingroot/kinguser/cbe;

.field final synthetic yQ:Lcom/kingroot/kinguser/x;

.field final synthetic yU:Lcom/kingroot/kinguser/pk;

.field final synthetic yr:Lcom/kingroot/kinguser/u;

.field final synthetic zb:Lcom/kingroot/kinguser/pv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pk;ILcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/kingroot/kinguser/pr;->yU:Lcom/kingroot/kinguser/pk;

    iput p2, p0, Lcom/kingroot/kinguser/pr;->val$id:I

    iput-object p3, p0, Lcom/kingroot/kinguser/pr;->zb:Lcom/kingroot/kinguser/pv;

    iput-object p4, p0, Lcom/kingroot/kinguser/pr;->yF:Lcom/kingroot/kinguser/cbe;

    iput-object p5, p0, Lcom/kingroot/kinguser/pr;->yQ:Lcom/kingroot/kinguser/x;

    iput-object p6, p0, Lcom/kingroot/kinguser/pr;->yr:Lcom/kingroot/kinguser/u;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 306
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    const/4 v2, 0x0

    .line 311
    const/4 v0, 0x2

    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 315
    iget-object v4, p0, Lcom/kingroot/kinguser/pr;->yU:Lcom/kingroot/kinguser/pk;

    invoke-static {v4}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/pk;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 316
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 317
    iget-object v4, p0, Lcom/kingroot/kinguser/pr;->yU:Lcom/kingroot/kinguser/pk;

    invoke-static {v4}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/pk;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/kingroot/kinguser/pr;->val$id:I

    iget-object v5, p0, Lcom/kingroot/kinguser/pr;->yU:Lcom/kingroot/kinguser/pk;

    invoke-static {v5}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/pk;)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 318
    const-string v0, "1"

    move-object v2, v0

    move v0, v1

    .line 325
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/pr;->zb:Lcom/kingroot/kinguser/pv;

    const-string v5, "dumpsys notification"

    invoke-interface {v4, v5}, Lcom/kingroot/kinguser/pv;->cj(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v4

    .line 326
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/kingroot/kinguser/cby;->mStdOut:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 328
    iget-object v4, v4, Lcom/kingroot/kinguser/cby;->mStdOut:Ljava/lang/String;

    .line 330
    iget v5, p0, Lcom/kingroot/kinguser/pr;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/kingroot/kinguser/pr;->val$id:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    :cond_1
    const-string v2, "1"

    move v0, v1

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/pr;->yF:Lcom/kingroot/kinguser/cbe;

    iget-object v4, p0, Lcom/kingroot/kinguser/pr;->yQ:Lcom/kingroot/kinguser/x;

    iget-wide v4, v4, Lcom/kingroot/kinguser/x;->gt:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/kingroot/kinguser/cbe;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/kingroot/kinguser/pr;->yU:Lcom/kingroot/kinguser/pk;

    iget-object v3, p0, Lcom/kingroot/kinguser/pr;->yQ:Lcom/kingroot/kinguser/x;

    iget-object v4, p0, Lcom/kingroot/kinguser/pr;->yr:Lcom/kingroot/kinguser/u;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/kingroot/kinguser/pk;->a(Lcom/kingroot/kinguser/pk;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;II)V

    .line 341
    return-void

    .line 307
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
