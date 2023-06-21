.class public Lcom/kingroot/kinguser/btn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;


# static fields
.field private static bNi:Lcom/kingroot/kinguser/btn;


# instance fields
.field private bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    return-void
.end method

.method public static ahZ()Lcom/kingroot/kinguser/btn;
    .locals 2

    sget-object v0, Lcom/kingroot/kinguser/btn;->bNi:Lcom/kingroot/kinguser/btn;

    if-nez v0, :cond_1

    const-class v1, Lcom/kingroot/kinguser/btn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/btn;->bNi:Lcom/kingroot/kinguser/btn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kingroot/kinguser/btn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/btn;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/btn;->bNi:Lcom/kingroot/kinguser/btn;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/btn;->bNi:Lcom/kingroot/kinguser/btn;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    return-void
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    invoke-interface {v0}, Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;->getGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGuidAsyn(Lcom/kingroot/kinguser/ccg;)V
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    invoke-interface {v0, p1}, Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;->getGuidAsyn(Lcom/kingroot/kinguser/ccg;)V

    goto :goto_0
.end method

.method public sendShark(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cci;)V
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btn;->bNj:Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;->sendShark(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cci;)V

    goto :goto_0
.end method
