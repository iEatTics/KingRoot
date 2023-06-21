.class Lcom/kingroot/kinguser/alp$15;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aye:I

.field final synthetic ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic val$fetchOffset:I

.field final synthetic val$fetchSize:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$15;->ayh:Lcom/kingroot/kinguser/alp;

    iput p2, p0, Lcom/kingroot/kinguser/alp$15;->aye:I

    iput p3, p0, Lcom/kingroot/kinguser/alp$15;->val$fetchSize:I

    iput p4, p0, Lcom/kingroot/kinguser/alp$15;->val$fetchOffset:I

    iput-object p5, p0, Lcom/kingroot/kinguser/alp$15;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$15;->ayh:Lcom/kingroot/kinguser/alp;

    invoke-static {v0}, Lcom/kingroot/kinguser/alp;->a(Lcom/kingroot/kinguser/alp;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/kingroot/kinguser/alp$15;->aye:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 296
    if-nez v0, :cond_0

    move-wide v0, v6

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 297
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/alp$15;->aye:I

    iget v2, p0, Lcom/kingroot/kinguser/alp$15;->val$fetchSize:I

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, p0, Lcom/kingroot/kinguser/alp$15;->val$fetchOffset:I

    new-instance v8, Lcom/kingroot/kinguser/alp$15$1;

    invoke-direct {v8, p0, v10, v11}, Lcom/kingroot/kinguser/alp$15$1;-><init>(Lcom/kingroot/kinguser/alp$15;J)V

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/btx;->a(IIJIJLcom/kingroot/kinguser/bue;)V

    .line 328
    return-void

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
