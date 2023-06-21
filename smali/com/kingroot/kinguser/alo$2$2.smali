.class Lcom/kingroot/kinguser/alo$2$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alo$2;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aya:Lcom/kingroot/kinguser/alo$2;

.field final synthetic ayb:Lcom/kingroot/kinguser/bvp;

.field final synthetic ayc:Lcom/kingroot/kinguser/buh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alo$2;Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/alo$2$2;->aya:Lcom/kingroot/kinguser/alo$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iput-object p3, p0, Lcom/kingroot/kinguser/alo$2$2;->ayc:Lcom/kingroot/kinguser/buh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget v0, v0, Lcom/kingroot/kinguser/bvp;->bQD:I

    iget-object v1, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v1, v1, Lcom/kingroot/kinguser/bvp;->bQE:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v2, v2, Lcom/kingroot/kinguser/bvp;->bQF:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v3, v3, Lcom/kingroot/kinguser/bvp;->bQH:Lcom/qq/jce/wup/UniPacket;

    iget-object v4, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v4, v4, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/vd;->a(ILjava/lang/String;Ljava/lang/String;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bvp;->bQH:Lcom/qq/jce/wup/UniPacket;

    sget-object v1, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bvp;->bQH:Lcom/qq/jce/wup/UniPacket;

    sget-object v2, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bvp;->bQG:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v3, v3, Lcom/kingroot/kinguser/bvp;->bQH:Lcom/qq/jce/wup/UniPacket;

    iget-object v4, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v4, v4, Lcom/kingroot/kinguser/bvp;->bQG:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const/16 v0, -0xbb8

    .line 97
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/alo$2$2;->ayc:Lcom/kingroot/kinguser/buh;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/kingroot/kinguser/alo$2$2;->ayc:Lcom/kingroot/kinguser/buh;

    iget-object v2, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buh;->a(ILcom/kingroot/kinguser/bvp;)V

    .line 100
    :cond_1
    return-void

    .line 88
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bvp;->bQH:Lcom/qq/jce/wup/UniPacket;

    iget-object v2, p0, Lcom/kingroot/kinguser/alo$2$2;->ayb:Lcom/kingroot/kinguser/bvp;

    iget-object v2, v2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/16 v0, -0x1770

    goto :goto_1
.end method
