.class Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/urlcheck/UrlCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bnn:Lcom/kingroot/kinguser/urlcheck/UrlCheckService;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/urlcheck/UrlCheckService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;->bnn:Lcom/kingroot/kinguser/urlcheck/UrlCheckService;

    .line 47
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 56
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;->bnn:Lcom/kingroot/kinguser/urlcheck/UrlCheckService;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/urlcheck/UrlCheckService;->a(Lcom/kingroot/kinguser/urlcheck/UrlCheckService;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/UrlCheckService$a;->bnn:Lcom/kingroot/kinguser/urlcheck/UrlCheckService;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/urlcheck/UrlCheckService;->b(Lcom/kingroot/kinguser/urlcheck/UrlCheckService;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    goto :goto_0

    .line 85
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    if-lez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18942

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->w(II)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
