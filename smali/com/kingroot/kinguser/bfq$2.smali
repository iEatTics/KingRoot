.class Lcom/kingroot/kinguser/bfq$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfq;->aaz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnh:Lcom/kingroot/kinguser/bfq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfq;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;)Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    invoke-interface {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;Lcom/kingroot/kinguser/bfq$a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;Lcom/kingroot/kinguser/bfq$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->enable(ZLjava/util/Map;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->b(Lcom/kingroot/kinguser/bfq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->b(Lcom/kingroot/kinguser/bfq;)V

    goto :goto_0

    .line 142
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$2;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->b(Lcom/kingroot/kinguser/bfq;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
