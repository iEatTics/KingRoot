.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private d(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 76
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->handleActionUri--start"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->handleActionUri, uri invalid"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    .line 159
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/kingroot/kinguser/bqt;->mR(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->handleActionUri, bundle is null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "openSDK_LOG.AuthActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->handleActionUri, action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-nez v1, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_3
    const-string v2, "shareToQQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "shareToQzone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "sendToMyComputer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "shareToTroopBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    :cond_4
    const-string v2, "shareToQzone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.tencent.mobileqq"

    invoke-static {p0, v1}, Lcom/kingroot/kinguser/bqr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "5.2.0"

    invoke-static {p0, v1}, Lcom/kingroot/kinguser/bqr;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5

    .line 109
    sget v1, Lcom/tencent/tauth/AuthActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/tauth/AuthActivity;->a:I

    .line 110
    sget v1, Lcom/tencent/tauth/AuthActivity;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    .line 112
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 117
    :cond_5
    const-string v1, "openSDK_LOG.AuthActivity"

    const-string v2, "-->handleActionUri, most share action, start assistactivity"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bpy;->aT(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    const/high16 v0, 0x24000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v2, "addToQQFavorites"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 125
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const-string v0, "key_action"

    const-string v3, "action_share"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/bnt;->agt()Lcom/kingroot/kinguser/bnt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnt;->mJ(Ljava/lang/String;)Lcom/kingroot/kinguser/bwd;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/bnt;->agt()Lcom/kingroot/kinguser/bnt;

    move-result-object v1

    check-cast v0, Lcom/kingroot/kinguser/bwd;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/bnt;->a(Landroid/content/Intent;Lcom/kingroot/kinguser/bwd;)V

    .line 133
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 134
    :cond_8
    const-string v2, "sharePrize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 135
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 137
    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v0, ""

    .line 141
    :try_start_0
    invoke-static {v1}, Lcom/kingroot/kinguser/bqt;->mU(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 142
    const-string v3, "activityid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 148
    const-string v1, "sharePrize"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v3, "activityid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    :cond_9
    invoke-virtual {p0, v2}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    const-string v3, "openSDK_LOG.AuthActivity"

    const-string v4, "sharePrize parseJson has exception."

    invoke-static {v3, v4, v1}, Lcom/kingroot/kinguser/bpy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "openSDK_LOG.AuthActivity"

    const-string v1, "-->onCreate, getIntent() return null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_1
    const-string v1, "openSDK_LOG.AuthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->onCreate, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bpy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/tencent/tauth/AuthActivity;->d(Landroid/net/Uri;)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    const-string v2, "openSDK_LOG.AuthActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->onCreate, getIntent().getData() has exception! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bpy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
