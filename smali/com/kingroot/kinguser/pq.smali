.class Lcom/kingroot/kinguser/pq;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic yF:Lcom/kingroot/kinguser/cbe;

.field final synthetic yN:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic yQ:Lcom/kingroot/kinguser/x;

.field final synthetic yU:Lcom/kingroot/kinguser/pk;

.field final synthetic yZ:Ljava/lang/String;

.field final synthetic yr:Lcom/kingroot/kinguser/u;

.field final synthetic yu:Landroid/content/Context;

.field final synthetic yv:Lcom/kingroot/kinguser/pv;

.field final synthetic za:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/pk;Ljava/lang/String;Landroid/content/Context;ILcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/kingroot/kinguser/pq;->yU:Lcom/kingroot/kinguser/pk;

    iput-object p2, p0, Lcom/kingroot/kinguser/pq;->yZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/pq;->yu:Landroid/content/Context;

    iput p4, p0, Lcom/kingroot/kinguser/pq;->za:I

    iput-object p5, p0, Lcom/kingroot/kinguser/pq;->yQ:Lcom/kingroot/kinguser/x;

    iput-object p6, p0, Lcom/kingroot/kinguser/pq;->yr:Lcom/kingroot/kinguser/u;

    iput-object p7, p0, Lcom/kingroot/kinguser/pq;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object p8, p0, Lcom/kingroot/kinguser/pq;->yv:Lcom/kingroot/kinguser/pv;

    iput-object p9, p0, Lcom/kingroot/kinguser/pq;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/pq;->yZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/go;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/cca;->akH()Lcom/kingroot/kinguser/cca;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cca;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "com.android.vending"

    const-string v1, "com.google.android.finsky.activities.MainActivity"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/pq;->yU:Lcom/kingroot/kinguser/pk;

    iget-object v1, p0, Lcom/kingroot/kinguser/pq;->yu:Landroid/content/Context;

    iget v2, p0, Lcom/kingroot/kinguser/pq;->za:I

    add-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Lcom/kingroot/kinguser/pq;->yQ:Lcom/kingroot/kinguser/x;

    iget-object v5, p0, Lcom/kingroot/kinguser/pq;->yr:Lcom/kingroot/kinguser/u;

    iget-object v6, p0, Lcom/kingroot/kinguser/pq;->yN:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/kingroot/kinguser/pq;->yv:Lcom/kingroot/kinguser/pv;

    iget-object v8, p0, Lcom/kingroot/kinguser/pq;->yF:Lcom/kingroot/kinguser/cbe;

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/pk;->a(Landroid/content/Context;ILandroid/content/Intent;Lcom/kingroot/kinguser/x;Lcom/kingroot/kinguser/u;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method
