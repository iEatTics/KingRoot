.class public Loicq/wlogin_sdk/request/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loicq/wlogin_sdk/request/a;->a:Ljava/lang/String;

    iput p2, p0, Loicq/wlogin_sdk/request/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;IJ)Ljava/net/InetSocketAddress;
    .locals 2

    :try_start_0
    new-instance v0, Loicq/wlogin_sdk/request/a;

    invoke-direct {v0, p0, p1}, Loicq/wlogin_sdk/request/a;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/a;->a()Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/net/InetSocketAddress;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/a;->c:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/net/InetSocketAddress;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Loicq/wlogin_sdk/request/a;->c:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Loicq/wlogin_sdk/request/a;->a:Ljava/lang/String;

    iget v2, p0, Loicq/wlogin_sdk/request/a;->b:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/a;->a(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
