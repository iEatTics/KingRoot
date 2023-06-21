.class Lcom/kingroot/kinguser/bjh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjh$a;
    }
.end annotation


# instance fields
.field private bwC:Landroid/content/res/XmlResourceParser;

.field private bwD:Landroid/content/res/Resources;

.field private bwE:Landroid/content/pm/PackageInfo;

.field private bwF:Ljava/lang/String;

.field private bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

.field private bwH:Lcom/kingroot/kinguser/bjh$a;

.field private bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwE:Landroid/content/pm/PackageInfo;

    .line 75
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwF:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 77
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwJ:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 78
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/bjh;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/XmlResourceParser;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 215
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getPackageResourcePath"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    const-class v2, Landroid/content/res/AssetManager;

    const-string v3, "getCookieName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 223
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    const-string v0, "/system/framework/framework-res.apk"

    move-object v2, v0

    .line 227
    :goto_0
    if-eqz v2, :cond_1

    move v0, v1

    .line 231
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 232
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "AndroidManifest.xml"

    invoke-virtual {p2, v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_2
    return-object v0

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 242
    :cond_1
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    if-eqz p1, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-object p1

    .line 430
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 431
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    goto :goto_0

    .line 432
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private l(Landroid/content/pm/PackageInfo;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 123
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 128
    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/bjh;->a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 129
    :try_start_1
    new-instance v2, Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjh;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 152
    :goto_0
    if-nez v2, :cond_0

    .line 205
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    move-object v2, v0

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v2, v0

    move-object v0, v1

    .line 150
    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_4
    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_0
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 157
    iput-object v2, p0, Lcom/kingroot/kinguser/bjh;->bwC:Landroid/content/res/XmlResourceParser;

    .line 158
    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwD:Landroid/content/res/Resources;

    .line 162
    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwJ:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 163
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 164
    :goto_5
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    .line 165
    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_1
    :goto_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v0

    goto :goto_5

    .line 167
    :pswitch_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v3, "manifest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adK()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 196
    :catch_3
    move-exception v0

    .line 201
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwC:Landroid/content/res/XmlResourceParser;

    .line 202
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwD:Landroid/content/res/Resources;

    .line 203
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 170
    :cond_2
    :try_start_3
    const-string v3, "application"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adM()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 198
    :catch_4
    move-exception v0

    .line 201
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwC:Landroid/content/res/XmlResourceParser;

    .line 202
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwD:Landroid/content/res/Resources;

    .line 203
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 172
    :cond_3
    :try_start_4
    const-string v3, "receiver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adO()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 201
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwC:Landroid/content/res/XmlResourceParser;

    .line 202
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwD:Landroid/content/res/Resources;

    .line 203
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0

    .line 174
    :cond_4
    :try_start_5
    const-string v3, "intent-filter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adQ()V

    goto :goto_6

    .line 176
    :cond_5
    const-string v3, "action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adS()V

    goto :goto_6

    .line 181
    :pswitch_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v3, "manifest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 183
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adL()V

    goto :goto_6

    .line 184
    :cond_6
    const-string v3, "application"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adN()V

    goto :goto_6

    .line 186
    :cond_7
    const-string v3, "receiver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 187
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adP()V

    goto/16 :goto_6

    .line 188
    :cond_8
    const-string v3, "intent-filter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 189
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adR()V

    goto/16 :goto_6

    .line 190
    :cond_9
    const-string v3, "action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjh;->adT()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_6

    .line 201
    :cond_a
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwC:Landroid/content/res/XmlResourceParser;

    .line 202
    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwD:Landroid/content/res/Resources;

    .line 203
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .line 134
    :catch_5
    move-exception v2

    goto/16 :goto_4

    .line 132
    :catch_6
    move-exception v2

    goto/16 :goto_3

    .line 130
    :catch_7
    move-exception v2

    goto/16 :goto_2

    .line 165
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private lZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwC:Landroid/content/res/XmlResourceParser;

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {v0, v1, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwD:Landroid/content/res/Resources;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bjh;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method adK()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwJ:Lcom/kingroot/kinguser/bjh$a;

    if-ne v0, v1, :cond_0

    .line 247
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwK:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 248
    :cond_0
    return-void
.end method

.method adL()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwK:Lcom/kingroot/kinguser/bjh$a;

    if-ne v0, v1, :cond_0

    .line 252
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwJ:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 253
    :cond_0
    return-void
.end method

.method adM()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwK:Lcom/kingroot/kinguser/bjh$a;

    if-eq v0, v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwL:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 259
    const-string v0, "label"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjh;->lZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwF:Ljava/lang/String;

    goto :goto_0
.end method

.method adN()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwL:Lcom/kingroot/kinguser/bjh$a;

    if-ne v0, v1, :cond_0

    .line 264
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwK:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwF:Ljava/lang/String;

    .line 267
    :cond_0
    return-void
.end method

.method adO()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwL:Lcom/kingroot/kinguser/bjh$a;

    if-eq v0, v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwM:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 281
    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjh;->lZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 286
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bjh;->bwE:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    if-nez v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwF:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjh;->bwE:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjh;->bwE:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->h(Ljava/lang/String;Ljava/lang/String;I)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bjh;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_2
    invoke-static {v2, v1, v0}, Lcom/kingroot/kinguser/bja;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 309
    new-instance v2, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    invoke-direct {v2, v0, v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    goto :goto_0

    .line 288
    :cond_4
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bjh;->bwE:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 307
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 308
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method adP()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwM:Lcom/kingroot/kinguser/bjh$a;

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->adz()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;)V

    .line 323
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    .line 324
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwL:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 326
    :cond_1
    return-void
.end method

.method adQ()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwM:Lcom/kingroot/kinguser/bjh$a;

    if-eq v0, v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwN:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    goto :goto_0
.end method

.method adR()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwN:Lcom/kingroot/kinguser/bjh$a;

    if-ne v0, v1, :cond_0

    .line 352
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwM:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 355
    :cond_0
    return-void
.end method

.method adS()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwN:Lcom/kingroot/kinguser/bjh$a;

    if-eq v0, v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwO:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjh;->lZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    if-nez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 384
    :cond_2
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    goto :goto_0

    .line 396
    :cond_4
    invoke-static {v0}, Lcom/kingroot/kinguser/biy;->lU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_0

    .line 399
    iget-object v2, p0, Lcom/kingroot/kinguser/bjh;->bwI:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo$AutoStartReceiver;->aN(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method adT()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    sget-object v1, Lcom/kingroot/kinguser/bjh$a;->bwO:Lcom/kingroot/kinguser/bjh$a;

    if-ne v0, v1, :cond_0

    .line 405
    sget-object v0, Lcom/kingroot/kinguser/bjh$a;->bwN:Lcom/kingroot/kinguser/bjh$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwH:Lcom/kingroot/kinguser/bjh$a;

    .line 406
    :cond_0
    return-void
.end method

.method public k(Landroid/content/pm/PackageInfo;)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingroot/kinguser/bjh;->bwE:Landroid/content/pm/PackageInfo;

    .line 96
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjh;->l(Landroid/content/pm/PackageInfo;)V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/bjh;->bwG:Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    return-object v0
.end method
