.class Lcom/kingroot/kinguser/bvc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->b(Lcom/kingroot/kinguser/bun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPd:Lcom/kingroot/kinguser/bun;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bun;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$1;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$1;->bPd:Lcom/kingroot/kinguser/bun;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 220
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kG(I)I

    move-result v0

    .line 221
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kH(I)I

    move-result v1

    .line 222
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kI(I)I

    move-result v2

    .line 224
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 225
    if-eqz v2, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$1;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    .line 283
    :goto_0
    return-void

    .line 233
    :cond_1
    instance-of v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$1;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0

    .line 241
    :cond_2
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;

    .line 242
    iget v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->retCode:I

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$1;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->callbackGameList:Ljava/util/ArrayList;

    .line 252
    invoke-static {v0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$1;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0

    .line 259
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$1;->bPd:Lcom/kingroot/kinguser/bun;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0

    .line 262
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;

    .line 263
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    if-eqz v3, :cond_5

    .line 266
    iget-wide v4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsPos:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    if-eqz v3, :cond_5

    .line 272
    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    invoke-static {v3}, Lcom/kingroot/kinguser/bur;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v3

    .line 273
    new-instance v4, Lcom/kingroot/kinguser/buz;

    invoke-direct {v4}, Lcom/kingroot/kinguser/buz;-><init>()V

    .line 274
    iget-object v5, v3, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v5, v4, Lcom/kingroot/kinguser/buz;->pkgName:Ljava/lang/String;

    .line 275
    iget v5, v3, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    iput v5, v4, Lcom/kingroot/kinguser/buz;->versionCode:I

    .line 276
    iput-object v3, v4, Lcom/kingroot/kinguser/buz;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 277
    iget-wide v6, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->orderId:J

    iput-wide v6, v4, Lcom/kingroot/kinguser/buz;->orderId:J

    .line 278
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    iput-object v0, v4, Lcom/kingroot/kinguser/buz;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 279
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
