.class public Lcom/kingroot/kinguser/bin;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bin$b;,
        Lcom/kingroot/kinguser/bin$a;,
        Lcom/kingroot/kinguser/bin$c;,
        Lcom/kingroot/kinguser/bin$d;
    }
.end annotation


# instance fields
.field private JF:Landroid/webkit/WebView;

.field private TAG:Ljava/lang/String;

.field private VL:Landroid/widget/ProgressBar;

.field public btB:Ljava/lang/String;

.field private btC:Ljava/lang/String;

.field private btD:Lcom/kingroot/kinguser/bin$a;

.field private btE:Landroid/os/Handler;

.field private btF:Lcom/kingroot/kinguser/ada;

.field private volatile btG:Z

.field private btH:[B

.field private btI:[B

.field private btJ:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v0, "ku_pageWebViewPage"

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->TAG:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btC:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    .line 74
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btE:Landroid/os/Handler;

    .line 75
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->mHandlerThread:Landroid/os/HandlerThread;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bin;->btG:Z

    .line 225
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btH:[B

    .line 226
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btI:[B

    .line 227
    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btJ:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingroot/kinguser/bin;->btC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/bin;->acY()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bin;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bin;->btG:Z

    return p1
.end method

.method private acX()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bin;->init()V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "EP_KingUser/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ij()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 179
    :cond_2
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "webview-work"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btE:Landroid/os/Handler;

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    new-instance v1, Lcom/kingroot/kinguser/bin$d;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bin$d;-><init>(Lcom/kingroot/kinguser/bin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    new-instance v1, Lcom/kingroot/kinguser/bin$c;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bin$c;-><init>(Lcom/kingroot/kinguser/bin;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 190
    new-instance v0, Lcom/kingroot/kinguser/bin$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bin$a;-><init>(Lcom/kingroot/kinguser/bin;Lcom/kingroot/kinguser/bin$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bin$a;->init()V

    goto/16 :goto_0

    .line 194
    :cond_4
    const-wide/32 v0, 0x7f0703b1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bin;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private acY()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btH:[B

    if-nez v0, :cond_2

    .line 242
    const-string v0, "jsapi.js"

    invoke-static {v0}, Lcom/kingroot/kinguser/bio;->lP(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btH:[B

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btH:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btH:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btI:[B

    if-nez v0, :cond_3

    .line 246
    sget-object v0, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->btH:[B

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btI:[B

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btI:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btI:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btJ:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 250
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->btI:[B

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btJ:Ljava/lang/String;

    .line 252
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/bin$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bin$2;-><init>(Lcom/kingroot/kinguser/bin;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingroot/kinguser/bin;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/ada;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btF:Lcom/kingroot/kinguser/ada;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bin;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bin;->btG:Z

    return v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bin;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->VL:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bin;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btE:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 202
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 203
    if-nez v0, :cond_1

    .line 204
    const-wide/32 v0, 0x7f0703b1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bin;->V(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kingroot/kinguser/bin;->btB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 212
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bin$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bin$1;-><init>(Lcom/kingroot/kinguser/bin;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 219
    const-string v1, "monitor_webview"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 220
    if-eq v0, v3, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bin;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-static {v1, v2, v0, v3}, Lcom/kingroot/kinguser/bfl;->a(Landroid/content/Context;Landroid/os/Handler;ILandroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bin;)Lcom/kingroot/kinguser/bin$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    return-object v0
.end method


# virtual methods
.method public i(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bin;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    const v0, 0x7f0f033e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    .line 99
    const v0, 0x7f0f035e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->VL:Landroid/widget/ProgressBar;

    .line 100
    invoke-direct {p0}, Lcom/kingroot/kinguser/bin;->acX()V

    .line 101
    return-object v1
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webview_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->mTitle:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bin;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bin;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btF:Lcom/kingroot/kinguser/ada;

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btF:Lcom/kingroot/kinguser/ada;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bin$a;->destroy()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 477
    return-void

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/ym;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onNewIntent(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/kingroot/kinguser/bin;->init()V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 453
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onPause()V

    .line 454
    return-void
.end method

.method protected onResume()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->JF:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v1, "eventName"

    const-string v2, "onResume"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/bin;->btD:Lcom/kingroot/kinguser/bin$a;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bin$a;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method
