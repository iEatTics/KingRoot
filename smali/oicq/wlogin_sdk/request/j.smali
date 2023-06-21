.class public Loicq/wlogin_sdk/request/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/j;->b:Z

    iput-object p1, p0, Loicq/wlogin_sdk/request/j;->a:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;J)Z
    .locals 3

    :try_start_0
    new-instance v0, Loicq/wlogin_sdk/request/j;

    invoke-direct {v0, p0}, Loicq/wlogin_sdk/request/j;-><init>(Ljava/net/HttpURLConnection;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/j;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Loicq/wlogin_sdk/request/j;->b:Z

    return v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/j;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/j;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
