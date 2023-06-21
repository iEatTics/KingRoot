.class public Lcom/kingroot/kinguser/boe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/boe$b;,
        Lcom/kingroot/kinguser/boe$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static bFm:Lcom/kingroot/kinguser/boe$a;

.field private static bFn:Landroid/content/BroadcastReceiver;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static volatile g:Z

.field private static h:I

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "cmwap"

    sput-object v0, Lcom/kingroot/kinguser/boe;->c:Ljava/lang/String;

    const-string v0, "3gwap"

    sput-object v0, Lcom/kingroot/kinguser/boe;->d:Ljava/lang/String;

    const-string v0, "uniwap"

    sput-object v0, Lcom/kingroot/kinguser/boe;->e:Ljava/lang/String;

    const-string v0, "ctwap"

    sput-object v0, Lcom/kingroot/kinguser/boe;->f:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->g:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    sput v1, Lcom/kingroot/kinguser/boe;->h:I

    sput-boolean v1, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    new-instance v0, Lcom/kingroot/kinguser/bof;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bof;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/boe;->bFn:Landroid/content/BroadcastReceiver;

    sput-boolean v1, Lcom/kingroot/kinguser/boe;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcom/kingroot/kinguser/boe;->b()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agA()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/boe;->bFn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agA()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/kingroot/kinguser/boe$b;

    invoke-direct {v1}, Lcom/kingroot/kinguser/boe$b;-><init>()V

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/boe$a;)V
    .locals 0

    sput-object p0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    return-void
.end method

.method public static agz()Ljava/net/Proxy;
    .locals 5

    sget-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v5, Lcom/kingroot/kinguser/boe;->m:Z

    const-class v1, Lcom/kingroot/kinguser/boe;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/boi;->agA()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->g:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v2, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->g:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v2, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    sput-boolean v3, Lcom/kingroot/kinguser/boe;->g:Z

    :goto_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_a

    const/4 v0, 0x1

    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agA()Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_9

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wifi_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v2, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    :try_start_7
    sput-boolean v3, Lcom/kingroot/kinguser/boe;->g:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v2, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z

    :goto_3
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_9
    const/16 v4, -0x64

    if-le v3, v4, :cond_5

    const/16 v4, -0x37

    if-ge v3, v4, :cond_5

    add-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x42340000    # 45.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    goto/16 :goto_2

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v2, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :cond_c
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    if-nez v3, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-eq v0, v5, :cond_d

    if-eq v0, v6, :cond_d

    if-ne v0, v7, :cond_10

    :cond_d
    const/4 v0, 0x2

    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    :cond_e
    :goto_4
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    sget-object v3, Lcom/kingroot/kinguser/boe;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_5
    :try_start_d
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v2, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->m:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :cond_10
    const/16 v3, 0xd

    if-ne v0, v3, :cond_12

    const/4 v0, 0x4

    :try_start_e
    sput v0, Lcom/kingroot/kinguser/boe;->h:I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_f
    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    if-eqz v2, :cond_11

    sget-object v2, Lcom/kingroot/kinguser/boe;->bFm:Lcom/kingroot/kinguser/boe$a;

    sget v3, Lcom/kingroot/kinguser/boe;->h:I

    sget-object v4, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/kingroot/kinguser/boe$a;->a(ILjava/lang/String;)V

    :cond_11
    const/4 v2, 0x0

    sput-boolean v2, Lcom/kingroot/kinguser/boe;->m:Z

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_12
    const/4 v0, 0x3

    :try_start_10
    sput v0, Lcom/kingroot/kinguser/boe;->h:I

    goto :goto_4

    :cond_13
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    sget-object v3, Lcom/kingroot/kinguser/boe;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    goto :goto_5

    :cond_14
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    sget-object v3, Lcom/kingroot/kinguser/boe;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    goto :goto_5

    :cond_15
    sget-object v0, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    sget-object v3, Lcom/kingroot/kinguser/boe;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;

    goto :goto_5

    :cond_16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/boe;->j:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_5
.end method

.method public static d()Z
    .locals 2

    sget v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/kingroot/kinguser/boe;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/kingroot/kinguser/boe;->i:Z

    return v0
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/kingroot/kinguser/boe;->h:I

    return v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/kingroot/kinguser/boe;->g:Z

    return v0
.end method

.method public static h()V
    .locals 0

    return-void
.end method
