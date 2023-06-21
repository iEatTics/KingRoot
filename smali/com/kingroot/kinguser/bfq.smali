.class public Lcom/kingroot/kinguser/bfq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bfq$a;
    }
.end annotation


# static fields
.field private static bnd:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bfq;",
            ">;"
        }
    .end annotation
.end field

.field private static final bnf:Ljava/util/Map;


# instance fields
.field public bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

.field bng:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    .line 57
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "build"

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->hZ()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "lc"

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ia()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "product"

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->hY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "softversion"

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->dG()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "log"

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ih()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v2, "serveraddr"

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->is()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mazutest.3g.qq.com"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "channel"

    const-string v2, "106417"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "pkgname"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    const-string v1, "host_uid"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    new-instance v0, Lcom/kingroot/kinguser/bfq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfq;->bnd:Lcom/kingroot/kinguser/cce;

    return-void

    .line 62
    :cond_0
    :try_start_1
    const-string v0, "mazu.3g.qq.com"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Lcom/kingroot/kinguser/bed;

    new-instance v1, Lcom/kingroot/kinguser/bfq$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfq$4;-><init>(Lcom/kingroot/kinguser/bfq;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfq;->bng:Lcom/kingroot/kinguser/bed;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bfq$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfq;ZLcom/kingroot/kinguser/bfq$a;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bfq;->a(ZLcom/kingroot/kinguser/bfq$a;)I

    move-result v0

    return v0
.end method

.method private a(ZLcom/kingroot/kinguser/bfq$a;)I
    .locals 5

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v1

    if-nez v1, :cond_5

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const/4 v0, 0x1

    iput v0, p2, Lcom/kingroot/kinguser/bfq$a;->bni:I

    .line 253
    :cond_0
    const-string v0, "mod_hp"

    const-string v1, ""

    const-string v2, ".jar"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/un;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, -0x1

    .line 295
    :cond_1
    :goto_0
    return v0

    .line 259
    :cond_2
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hm;

    .line 260
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v3, "key_service_name"

    const-string v4, "com.king.proxy.daemon11"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, "743254cd11adb5dd8c46257da5b56878"

    const-string v4, "c0f53745be5bdcfa7ea880959dcf6a35"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz p1, :cond_3

    .line 265
    const/4 v3, 0x2

    iput v3, p2, Lcom/kingroot/kinguser/bfq$a;->bni:I

    .line 267
    :cond_3
    const-string v3, "com.king.proxy.mod.DaemonMod"

    const-string v4, "com.king.proxy:urlcheck"

    invoke-interface {v0, v1, v3, v4, v2}, Lcom/kingroot/kinguser/hm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 273
    if-eqz p1, :cond_4

    .line 274
    iput v0, p2, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    .line 276
    :cond_4
    if-nez v0, :cond_1

    .line 283
    :cond_5
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 284
    const/4 v0, 0x3

    iput v0, p2, Lcom/kingroot/kinguser/bfq$a;->bni:I

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    sget-object v1, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->enable(ZLjava/util/Map;)I

    move-result v0

    .line 286
    iput v0, p2, Lcom/kingroot/kinguser/bfq$a;->bnk:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 295
    const/4 v0, -0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfq;)Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/bfq$a;)Z
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    .line 339
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 392
    :goto_0
    return v0

    .line 346
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->getProxyServerPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 348
    if-gtz v6, :cond_4

    .line 380
    if-eqz p1, :cond_1

    .line 381
    int-to-long v0, v2

    iput-wide v0, p1, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    .line 384
    :cond_1
    if-eqz v4, :cond_2

    .line 385
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_2
    if-eqz v4, :cond_3

    .line 389
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v0, v3

    .line 350
    goto :goto_0

    .line 353
    :cond_4
    const/4 v0, 0x2

    .line 354
    :try_start_1
    new-instance v7, Ljava/net/URL;

    const-string v1, "http://mazu.3g.qq.com"

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    const/4 v1, 0x3

    .line 357
    :try_start_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 358
    const/16 v5, 0x2710

    :try_start_3
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 359
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v8

    .line 362
    const/4 v5, 0x4

    .line 363
    :try_start_4
    new-instance v1, Ljava/net/Proxy;

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v10, Ljava/net/InetSocketAddress;

    const-string v11, "127.0.0.1"

    invoke-direct {v10, v11, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v7, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 365
    const/16 v4, 0x2710

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 366
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result v4

    .line 369
    if-ne v4, v8, :cond_8

    .line 380
    if-eqz p1, :cond_5

    .line 381
    int-to-long v4, v3

    iput-wide v4, p1, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    .line 384
    :cond_5
    if-eqz v0, :cond_6

    .line 385
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_6
    if-eqz v1, :cond_7

    .line 389
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move v0, v2

    .line 372
    goto :goto_0

    .line 374
    :cond_8
    mul-int/lit16 v2, v4, 0x3e8

    add-int/2addr v2, v8

    .line 380
    if-eqz p1, :cond_9

    .line 381
    int-to-long v4, v2

    iput-wide v4, p1, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    .line 384
    :cond_9
    if-eqz v0, :cond_a

    .line 385
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_a
    if-eqz v1, :cond_b

    .line 389
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    :goto_1
    move v0, v3

    .line 392
    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v0, v4

    move v2, v3

    .line 380
    :goto_2
    if-eqz p1, :cond_c

    .line 381
    int-to-long v4, v2

    iput-wide v4, p1, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    .line 384
    :cond_c
    if-eqz v0, :cond_d

    .line 385
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_d
    if-eqz v1, :cond_b

    .line 389
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    move-object v1, v4

    move v5, v3

    :goto_3
    if-eqz p1, :cond_e

    .line 381
    int-to-long v2, v5

    iput-wide v2, p1, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    .line 384
    :cond_e
    if-eqz v1, :cond_f

    .line 385
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_f
    if-eqz v4, :cond_10

    .line 389
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v0

    .line 380
    :catchall_1
    move-exception v1

    move v5, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move v5, v1

    move-object v1, v4

    goto :goto_3

    :catchall_3
    move-exception v2

    move v5, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :catchall_5
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    .line 377
    :catch_1
    move-exception v1

    move-object v1, v4

    move v2, v0

    move-object v0, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v4

    move v2, v1

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception v2

    move v2, v1

    move-object v1, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v1, v4

    move v2, v5

    goto :goto_2

    :catch_5
    move-exception v2

    move v2, v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfq;Lcom/kingroot/kinguser/bfq$a;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq$a;)Z

    move-result v0

    return v0
.end method

.method public static aaB()Lcom/kingroot/kinguser/bfq;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnd:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfq;

    return-object v0
.end method

.method private aaC()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const-string v1, "iptables -L OUTPUT -t nat"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 159
    if-eqz v0, :cond_0

    const-string v1, "REDIRECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const-string v1, "iptables -F OUTPUT -t nat"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 163
    :cond_0
    return-void
.end method

.method private aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    .line 301
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_5

    .line 305
    :cond_1
    const-string v0, "com.king.proxy.daemon11"

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 306
    if-nez v0, :cond_2

    .line 308
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hm;

    .line 309
    const-string v2, "com.king.proxy.daemon11"

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/hm;->getDaemonService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 312
    :cond_2
    if-nez v0, :cond_4

    .line 313
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    :cond_3
    :goto_0
    return-object v0

    .line 315
    :cond_4
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :try_start_4
    iput-object v0, p0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    .line 316
    iget-object v1, p0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    invoke-interface {v1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bfq$3;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bfq$3;-><init>(Lcom/kingroot/kinguser/bfq;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic aaF()Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/kingroot/kinguser/bfq;->bnf:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bfq;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaC()V

    return-void
.end method

.method private getProxyServerPort()I
    .locals 1

    .prologue
    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->getProxyServerPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 234
    :catch_0
    move-exception v0

    .line 238
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bfq;->bng:Lcom/kingroot/kinguser/bed;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 87
    return-void

    .line 86
    :cond_0
    invoke-interface {p2}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public aaD()I
    .locals 1

    .prologue
    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->getProxyServerPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v0

    .line 201
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public aaz()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/bfq$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bfq$2;-><init>(Lcom/kingroot/kinguser/bfq;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 152
    return-void
.end method

.method public addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    .line 97
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfs;->addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bP(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->syncCloudRuleList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bQ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->syncUserRuleList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfs;->deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSharkGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->getSharkGuid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 175
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfq;->aaE()Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->isEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 222
    :catch_0
    move-exception v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
