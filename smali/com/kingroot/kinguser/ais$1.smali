.class Lcom/kingroot/kinguser/ais$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ais;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asp:Lcom/kingroot/kinguser/ais;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ais;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/ais$1;->asp:Lcom/kingroot/kinguser/ais;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 136
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 148
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tl()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$1;->asp:Lcom/kingroot/kinguser/ais;

    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ais;->a(Lcom/kingroot/kinguser/ais;Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;)Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 152
    :cond_1
    return-void

    .line 143
    :cond_2
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    goto :goto_1
.end method
