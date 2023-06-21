.class Lcom/kingroot/kinguser/uz$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/uz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field JE:Lcom/kingroot/kinguser/uz$c;

.field JF:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/uz$c;Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/kingroot/kinguser/uz$b;->JE:Lcom/kingroot/kinguser/uz$c;

    .line 169
    iput-object p2, p0, Lcom/kingroot/kinguser/uz$b;->JF:Landroid/webkit/WebView;

    .line 171
    new-instance v0, Lcom/kingroot/kinguser/uz$b$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/uz$b$1;-><init>(Lcom/kingroot/kinguser/uz$b;)V

    const-wide/16 v2, 0x7530

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/uz$b;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/kingroot/kinguser/uz$b;->le()V

    return-void
.end method

.method private le()V
    .locals 2

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uz$b;->JF:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/uz$b;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/uz$b;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/uz$b;->JF:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/uz$b;->JE:Lcom/kingroot/kinguser/uz$c;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/uz$b;->JE:Lcom/kingroot/kinguser/uz$c;

    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/uz$c;->db(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/kingroot/kinguser/uz$b;->le()V

    .line 191
    :cond_0
    return-void
.end method
